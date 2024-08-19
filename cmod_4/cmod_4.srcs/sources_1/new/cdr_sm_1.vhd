----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 10:20:06 AM
-- Design Name: 
-- Module Name: cdr_sm_1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cdr_sm_1 is
    Generic(
        ADC_SAMPLE_SIZE : integer := 12; -- in bits
        GENERATE_CDR_SM_ILA : boolean := true
    );
    Port(
        centered_data_i : in std_logic_vector(ADC_SAMPLE_SIZE-1 downto 0);
        hs_clk_i : in STD_LOGIC;
        rst_i : in std_logic;
        sm_input_valid_i : in std_logic;
          
        recovered_clk_o : out std_logic;
        recovered_data_bit_o : out std_logic;
        dds_phase_step_o : out std_logic_vector(15 downto 0);
        sm_output_valid_o : out std_logic;
          
        -- Test IO
        --dds_phase_o : out std_logic_vector(15 downto 0);
        kp_i : in std_logic_vector(31 downto 0);
        ki_i : in std_logic_vector(31 downto 0);
        initial_phase_offset_i : in std_logic_vector(15 downto 0);
        pi_controller_16_bit_output_o : out std_logic_vector(15 downto 0)
    );
end cdr_sm_1;

architecture Behavioral of cdr_sm_1 is
        type t_cdr_state is (IDLE, CDR_START_STATE_MACHINE, CDR_START_STATE_MACHINE_DELAY,
                             CDR_I_Q_CHAN_MULTIPLY, CDR_I_Q_CHAN_MULTIPLY_D1, CDR_I_Q_CHAN_MULTIPLY_D2, CDR_I_Q_CHAN_MULTIPLY_D3, CDR_I_Q_CHAN_MULTIPLY_D4, CDR_I_Q_CHAN_MULTIPLY_D5, CDR_I_Q_CHAN_MULTIPLY_D6, CDR_I_Q_CHAN_MULTIPLY_D7, CDR_FREQ_ERR_MULTIPLY, CDR_FREQ_ERR_MULTIPLY_D1, CDR_FREQ_ERR_MULTIPLY_D2, CDR_FREQ_ERR_MULTIPLY_D3, CDR_FREQ_ERR_MULTIPLY_D4, CDR_FREQ_ERR_MULTIPLY_D5, CDR_FREQ_ERR_MULTIPLY_D6, CDR_INIT_FIR_FILTER_VALUES, CDR_WRITE_FIR_FILTER, CDR_WAIT_FIR_FILTER,
                             CDR_WRITE_PI_CONTROLLER, CDR_PI_CONTROLLER_PROPORTIONAL, CDR_PI_CONTROLLER_INTEGRAL, CDR_PI_CONTROLLER_SUM,
                             CDR_CALC_PHASE_STEP, CDR_ADD_PHASE_ACCUMULATOR,
                             CDR_WRITE_DDS, CDR_WAIT_DDS
                             );
    signal state_s : t_cdr_state := IDLE;
    signal cdr_state_int_s : unsigned(3 downto 0) := (others => '0');
    
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    
    -- CDR - Parameterized Inputs from MicroBlaze
    signal initial_phase_offset_s : signed(15 downto 0);
    signal kp_s : signed(31 downto 0); 
    signal ki_s : signed(31 downto 0); 

    -- CDR - Channel Mixing Signals
    signal scaled_centered_data_s : signed(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');

    signal sine_s   : signed(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');
    signal cosine_s : signed(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');
    signal sine_delay_s   : signed(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');
    signal cosine_delay_s : signed(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');

    signal i_q_channel_ce_s : std_logic := '0';

    signal q_channel_s : signed((2*ADC_SAMPLE_SIZE)-1 downto 0) := (others => '0');
    signal i_channel_s : signed((2*ADC_SAMPLE_SIZE)-1 downto 0) := (others => '0');
    
    signal q_channel_delay_s : signed((2*ADC_SAMPLE_SIZE)-1 downto 0) := (others => '0');
    signal i_channel_delay_s : signed((2*ADC_SAMPLE_SIZE)-1 downto 0) := (others => '0');
    
    signal freq_err_s : signed((q_channel_s'length + i_channel_s'length)-1 downto 0) := (others => '0');
    signal freq_err_delay_s : signed((q_channel_s'length + i_channel_s'length)-1 downto 0) := (others => '0');
    
    -- CDR - Frequency Error FIR Filter Signals
    signal freq_err_fir_input_tready_s : std_logic := '0';
    signal freq_err_fir_input_valid_s  : std_logic := '0';
    signal freq_err_fir_input_data_s   : std_logic_vector(23 downto 0); --:= (others => '0');
    signal freq_err_output_valid_s   : std_logic := '0';
    signal freq_err_filtered_s : signed(39 downto 0) := (others => '0');
    
    -- CDR - PI Controller Signals
    signal pi_controller_err_input_s : signed(23 downto 0) := (others => '0');
    signal pi_controller_err_input_delay_s : signed(23 downto 0) := (others => '0');
    signal pi_controller_proportional_val_s : signed((kp_s'length + pi_controller_err_input_s'length)-1 downto 0) := (others => '0');
    signal pi_controller_proportional_val_delay_s : signed((kp_s'length + pi_controller_err_input_s'length)-1 downto 0) := (others => '0');
    signal pi_controller_integral_accumulator_s : signed(31 downto 0) := (others => '0'); -- Is the size of this arbitrary?
    signal pi_controller_integral_val_s : signed((pi_controller_err_input_s'length + kp_s'length)-1 downto 0) := (others => '0');
    signal pi_controller_integral_val_delay_s : signed((pi_controller_err_input_s'length + kp_s'length)-1 downto 0) := (others => '0');
    signal pi_controller_output_s : signed(15 downto 0) := (others => '0');
    
    -- CDR - Phase Generator Signals
    signal dds_phase_step_s : signed(15 downto 0) := (others => '0');
    --signal dds_phase_accumulator_s : signed(15 downto 0) := (others => '0');
    
    -- CDR - DDS Signals
    signal dds_input_valid_s : STD_LOGIC := '0';
    signal dds_output_valid_s : STD_LOGIC := '0';
    signal dds_phase_accumulator_s : signed(15 downto 0) := (others => '0');
    signal dds_output_s : std_logic_vector(31 downto 0) := (others => '0');
    signal recovered_clk_s : std_logic := '0';
    signal recovered_data_bit_s : std_logic := '0';
    
    
    COMPONENT cdr_dds_compiler
        PORT (aclk : IN STD_LOGIC;
              s_axis_phase_tvalid : IN STD_LOGIC;
              s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
              m_axis_data_tvalid : OUT STD_LOGIC;
              m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
        );
    END COMPONENT;
    
    COMPONENT freq_err_fir_1
        PORT (
            aclk : IN STD_LOGIC;
            s_axis_data_tvalid : IN STD_LOGIC;
            s_axis_data_tready : OUT STD_LOGIC;
            s_axis_data_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            m_axis_data_tvalid : OUT STD_LOGIC;
            m_axis_data_tdata : OUT STD_LOGIC_VECTOR(39 DOWNTO 0) 
        );
    END COMPONENT;
    
    COMPONENT i_q_channel_mult_gen
        PORT (
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            CE : IN STD_LOGIC;
            P : OUT STD_LOGIC_VECTOR(23 DOWNTO 0) 
        );
    END COMPONENT;
    
    COMPONENT freq_err_mult_gen
        PORT (
            CLK : IN STD_LOGIC;
            A : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            P : OUT STD_LOGIC_VECTOR(47 DOWNTO 0) 
        );
    END COMPONENT;
    
    COMPONENT cdr_sm_ila_2
        PORT (
            clk : IN STD_LOGIC;

            probe0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe4 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe5 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe6 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe7 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
            probe9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
            probe10 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            probe11 : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
            probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe13 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
        );
    END COMPONENT  ;

begin
    recovered_clk_o <= recovered_clk_s;
    --recovered_data_bit_o <= not scaled_centered_data_s(ADC_SAMPLE_SIZE-1);
    recovered_data_bit_o <= recovered_data_bit_s;
    dds_phase_step_o <= std_logic_vector(dds_phase_step_s);
    pi_controller_16_bit_output_o <= std_logic_vector(pi_controller_output_s);

    cdr_dds_inst : cdr_dds_compiler
        PORT MAP (
            aclk => hs_clk_i,
            s_axis_phase_tvalid => dds_input_valid_s,
            s_axis_phase_tdata => std_logic_vector(dds_phase_accumulator_s),
            m_axis_data_tvalid => dds_output_valid_s,
            m_axis_data_tdata => dds_output_s
    );
    
    freq_err_fir_filter_inst : freq_err_fir_1
        PORT MAP (
            aclk => hs_clk_i,
            s_axis_data_tvalid => freq_err_fir_input_valid_s,
            s_axis_data_tready => freq_err_fir_input_tready_s,
            s_axis_data_tdata => freq_err_fir_input_data_s,
            m_axis_data_tvalid => freq_err_output_valid_s,
            signed(m_axis_data_tdata) => freq_err_filtered_s
        );
        
    i_channel_mult_inst : i_q_channel_mult_gen
        PORT MAP (
            CLK => hs_clk_i,
            A => std_logic_vector(scaled_centered_data_s),
            B => std_logic_vector(cosine_delay_s),
            CE => i_q_channel_ce_s,
            signed(P) => i_channel_s
        );
        
    q_channel_mult_inst : i_q_channel_mult_gen
        PORT MAP (
            CLK => hs_clk_i,
            A => std_logic_vector(scaled_centered_data_s),
            B => std_logic_vector(sine_delay_s),
            CE => i_q_channel_ce_s,
            signed(P) => q_channel_s
        );
    
    freq_err_mult_gen_inst : freq_err_mult_gen
        PORT MAP (
            CLK => hs_clk_i,
            A => std_logic_vector(q_channel_delay_s),
            B => std_logic_vector(i_channel_delay_s),
            signed(P) => freq_err_s
        );

    main_cdr_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & sm_input_valid_i;
            
            if(rst_i = '1') then
                state_s <= IDLE;
                scaled_centered_data_s <= (others => '0');
                pi_controller_integral_accumulator_s <= (others => '0');
            else
                case state_s is 
                    when IDLE =>
                        sm_output_valid_o <= '0';
                        if(input_valid_shift_detector_s = "01") then
                            state_s <= CDR_START_STATE_MACHINE; 
                            cdr_state_int_s <= x"0";
                            --scaled_centered_data_s <= signed(centered_data_i);
                            
                            -- Should sine & cosine be set here?
                            --sine_s <= signed(dds_output_s(31 downto 20));
                            --cosine_s <= signed(dds_output_s(15 downto 4));
                            
                            -- Microblaze set parameters are loaded at beginning of cdr_sm.
                            initial_phase_offset_s <= signed(initial_phase_offset_i);
                            kp_s <= signed(kp_i);
                            ki_s <= signed(ki_i);
                        end if;
                        
                    when CDR_START_STATE_MACHINE =>
                        state_s <= CDR_START_STATE_MACHINE_DELAY; 
                        scaled_centered_data_s <= signed(centered_data_i);
                        --recovered_clk_s <= sine_s(sine_s'length-1) xor cosine_s(cosine_s'length-1);
                        
                    when CDR_START_STATE_MACHINE_DELAY =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY;
                        
                    when CDR_I_Q_CHAN_MULTIPLY =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D1;
                        cdr_state_int_s <= x"1";
                        i_q_channel_ce_s <= '1';
                        
                        -- I am shifting value into temporary shift reg for timing closure
                        --q_channel_delay_s <= q_channel_s;
                        --i_channel_delay_s <= i_channel_s;
                        
                        --q_channel_s <= sine_delay_s*scaled_centered_data_s;
                        --i_channel_s <= cosine_delay_s*scaled_centered_data_s;
                        
                    -- This state is just for reducing setup time, trying to fix timing closures.
                    when CDR_I_Q_CHAN_MULTIPLY_D1 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D2;
                        
                    when CDR_I_Q_CHAN_MULTIPLY_D2 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D3;
                    
                    when CDR_I_Q_CHAN_MULTIPLY_D3 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D4;
                    
                    when CDR_I_Q_CHAN_MULTIPLY_D4 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D5;
                        
                    when CDR_I_Q_CHAN_MULTIPLY_D5 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D6;
                        
                    when CDR_I_Q_CHAN_MULTIPLY_D6 =>
                        state_s <= CDR_I_Q_CHAN_MULTIPLY_D7;
                        
                    when CDR_I_Q_CHAN_MULTIPLY_D7 =>
                        state_s <= CDR_FREQ_ERR_MULTIPLY;
                        
                    when CDR_FREQ_ERR_MULTIPLY =>
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D1;
                        cdr_state_int_s <= x"2";
                        
                        q_channel_delay_s <= q_channel_s;
                        i_channel_delay_s <= i_channel_s;
                        i_q_channel_ce_s <= '0';
                        
                        --freq_err_s <= q_channel_delay_s*i_channel_delay_s;
                    
                    when CDR_FREQ_ERR_MULTIPLY_D1 => 
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D2;
                        
                    when CDR_FREQ_ERR_MULTIPLY_D2 => 
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D3;
                        
                    when CDR_FREQ_ERR_MULTIPLY_D3 => 
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D4;
                    
                    when CDR_FREQ_ERR_MULTIPLY_D4 => 
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D5;
                    
                    when CDR_FREQ_ERR_MULTIPLY_D5 => 
                        state_s <= CDR_FREQ_ERR_MULTIPLY_D6;
                        
                    when CDR_FREQ_ERR_MULTIPLY_D6 => 
                        state_s <= CDR_INIT_FIR_FILTER_VALUES;
                        freq_err_delay_s <= freq_err_s;
                    
                    when CDR_INIT_FIR_FILTER_VALUES =>
                        state_s <= CDR_WRITE_FIR_FILTER;
                        cdr_state_int_s <= x"3";
                        freq_err_fir_input_data_s <= std_logic_vector(freq_err_delay_s(47 downto 24));
                        freq_err_fir_input_valid_s <= '0';
                    
                    when CDR_WRITE_FIR_FILTER =>
                        --state_s <= CDR_WAIT_FIR_FILTER;
                        if(freq_err_fir_input_tready_s = '1') then -- FIR Core ready to accept input
                            freq_err_fir_input_valid_s <= '1';
                            state_s <= CDR_WAIT_FIR_FILTER;
                            cdr_state_int_s <= x"4";
                        else
                            freq_err_fir_input_valid_s <= '0';
                            state_s <= IDLE;
                            cdr_state_int_s <= x"0";
                        end if;
                    
                    when CDR_WAIT_FIR_FILTER =>
                        freq_err_fir_input_valid_s <= '0';
                        if(freq_err_output_valid_s = '1') then
                            pi_controller_err_input_delay_s <= pi_controller_err_input_s;
                            pi_controller_err_input_s <= signed(freq_err_filtered_s(freq_err_filtered_s'length-5 downto freq_err_filtered_s'length-28));
                            state_s <= CDR_PI_CONTROLLER_PROPORTIONAL;
                            cdr_state_int_s <= x"5";
                        end if;
                        
--                    when CDR_WRITE_PI_CONTROLLER => 
--                        state_s <= CDR_PI_CONTROLLER_PROPORTIONAL; 

                    when CDR_PI_CONTROLLER_PROPORTIONAL => 
                        state_s <= CDR_PI_CONTROLLER_INTEGRAL; 
                        cdr_state_int_s <= x"6";
                        initial_phase_offset_s <= signed(initial_phase_offset_i);
                        pi_controller_proportional_val_delay_s <= pi_controller_proportional_val_s;
                        pi_controller_proportional_val_s <= pi_controller_err_input_delay_s * Kp_s;
                        pi_controller_integral_accumulator_s <= pi_controller_integral_accumulator_s + pi_controller_err_input_delay_s;
                        
                    when CDR_PI_CONTROLLER_INTEGRAL => 
                        state_s <= CDR_PI_CONTROLLER_SUM; 
                        cdr_state_int_s <= x"7";
                        pi_controller_integral_val_delay_s <= pi_controller_integral_val_s;
                        pi_controller_integral_val_s <= pi_controller_integral_accumulator_s(pi_controller_integral_accumulator_s'length-1 downto (pi_controller_integral_accumulator_s'length - pi_controller_err_input_s'length)) * ki_s;
                        
                    when CDR_PI_CONTROLLER_SUM => 
                        state_s <= CDR_CALC_PHASE_STEP; 
                        cdr_state_int_s <= x"8";
                        pi_controller_output_s <= pi_controller_integral_val_delay_s(pi_controller_integral_val_delay_s'length-1 downto pi_controller_integral_val_delay_s'length - pi_controller_output_s'length) + pi_controller_proportional_val_delay_s(pi_controller_proportional_val_delay_s'length-1 downto pi_controller_proportional_val_delay_s'length - pi_controller_output_s'length);
                        
                    when CDR_CALC_PHASE_STEP =>
                        state_s <= CDR_ADD_PHASE_ACCUMULATOR;
                        cdr_state_int_s <= x"9";
                        dds_phase_step_s <= pi_controller_output_s + initial_phase_offset_s;
                    
                    when CDR_ADD_PHASE_ACCUMULATOR => 
                        state_s <= CDR_WRITE_DDS; 
                        cdr_state_int_s <= x"A";
                        dds_phase_accumulator_s <= dds_phase_accumulator_s + dds_phase_step_s;
                        
                        recovered_data_bit_s <= not scaled_centered_data_s(scaled_centered_data_s'length-1);
                        recovered_clk_s <= sine_s(sine_s'length-1) xor cosine_s(cosine_s'length-1);
                        
                    when CDR_WRITE_DDS => 
                        state_s <= CDR_WAIT_DDS;
                        cdr_state_int_s <= x"B";
                        dds_input_valid_s <= '1';
                        
                    when CDR_WAIT_DDS => 
                        dds_input_valid_s <= '0';
                        if(dds_output_valid_s = '0') then
                            state_s <= IDLE;
                            cdr_state_int_s <= x"C";
                            sm_output_valid_o <= '1';
                            --recovered_clk_o <= sine_s(sine_s'length-1) xor cosine_s(cosine_s'length-1); -- XOR MSB of Sine and Cosine to get recovered clock.
                            --WRITE TO SINE_S AND COSINE_S HERE!!!!!!!!!!!!!!!!!!!!!!
                            sine_delay_s <= sine_s;
                            cosine_delay_s <= cosine_s;
                            
                            sine_s <= signed(dds_output_s(31 downto 20));
                            cosine_s <= signed(dds_output_s(15 downto 4));
                        end if;

                    when others =>
                        state_s <= IDLE;
                        cdr_state_int_s <= x"0";
                    
                end case;
            end if;
        end if;
    end process;

    -- ILA IP Declarations and Signals
    GENERATE_AGC_CDR_SM_3_ILA_STATEMENT: 
    if(GENERATE_CDR_SM_ILA) generate
        cdr_sm_ila_2_inst : cdr_sm_ila_2
            PORT MAP (
                clk => hs_clk_i,
    
                probe0 => std_logic_vector(scaled_centered_data_s), 
                probe1 => std_logic_vector(cdr_state_int_s),
                probe2 => std_logic_vector(sine_s), 
                probe3 => std_logic_vector(cosine_s), 
                probe4 => std_logic_vector(q_channel_s), 
                probe5 => std_logic_vector(i_channel_s), 
                probe6 => freq_err_fir_input_data_s, 
                probe7 => std_logic_vector(pi_controller_err_input_s), 
                probe8 => std_logic_vector(dds_phase_step_s), 
                probe9 => std_logic_vector(dds_phase_accumulator_s),
                probe10 => input_valid_shift_detector_s,
                probe11 => std_logic_vector(freq_err_s),
                probe12(0) => recovered_clk_s,
                probe13(0) => recovered_data_bit_s
            );
    end generate;

end Behavioral;
