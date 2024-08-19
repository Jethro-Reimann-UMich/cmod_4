----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2024 03:27:30 PM
-- Design Name: 
-- Module Name: agc_cdr_sm_2 - Behavioral
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

entity agc_cdr_sm_3 is
    generic(
        ADC_SAMPLE_SIZE : integer := 12;
        AGC_PEAK_TO_PEAK_REF : integer := 1000;
        
        -- Reed Solomon Generics
        RS_N : integer := 255;
        RS_K : integer := 139;
        
        -- ILA Enable Booleans
        GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA : boolean := false;
        GENERATE_CDR_SM_ILA : boolean := false;
        GENERATE_AGC_ILA : boolean := true

    );
    port(
        hs_clk_i : in std_logic;
        rst_i : in std_logic;
        adc_data_i : in std_logic_vector(11 downto 0);
        input_valid_i : in std_logic;
        peak_detector_threshold_i : in std_logic_vector(11 downto 0);
        
        recovered_clk_o : out std_logic;
        recovered_data_bit_o : out std_logic;
        
        -- MicroBlaze Externally Controlled Signals
        kp_i : in std_logic_vector(31 downto 0);
        ki_i : in std_logic_vector(31 downto 0);
        initial_phase_offset_i : in std_logic_vector(15 downto 0);
        dds_phase_step_o : out std_logic_vector(15 downto 0);
        moving_ave_o : out std_logic_vector(ADC_SAMPLE_SIZE-1 downto 0)
    );
end agc_cdr_sm_3;

architecture Behavioral of agc_cdr_sm_3 is
    type t_agc_state is (IDLE, --LOAD_ADC_VAL, 
                         WRITE_AGC, WAIT_AGC, INIT_CDR_VALS,
                         WRITE_CDR, WAIT_CDR
                         );
    signal state_s : t_agc_state := IDLE;
    signal composite_state_int_s : unsigned(3 downto 0) := (others => '0');
    
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');

    signal adc_data_s : unsigned(ADC_SAMPLE_SIZE-1 downto 0) := (others => '0');
    signal input_valid_s : std_logic := '0';
    signal scaled_centered_data_s : signed(ADC_SAMPLE_SIZE-1 downto 0); -- Output of AGC. Don't init, points to reg in AGC entity.
    signal agc_output_valid_s : std_logic;
    signal rst_cdr_s : std_logic;
    signal cdr_output_valid_s : std_logic; -- Output valid of CDR. Don't init, points to reg in CDR entity.
    
    -- Vivado IP Declarations
    COMPONENT agc_cdr_sm_3_composite_ila
        PORT (
            clk : IN STD_LOGIC;  
        
            probe0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
        );
    END COMPONENT  ;

begin
    agc_sm_1_inst : entity work.agc_sm_1
        generic map(
            PEAK_TO_PEAK_REF => AGC_PEAK_TO_PEAK_REF,
            N_BITS_PER_SAMP => ADC_SAMPLE_SIZE,
            --N_MOVING_AVERAGE_LOG => 6,
            N_MOVING_AVERAGE_LOG => 10,
            DEBUG_AGC_ILA => GENERATE_AGC_ILA
        )
        port map(
            -- Inputs
            hs_clk_i => hs_clk_i, -- High Speed clock in
            rst_i => rst_i,
            adc_data_i => adc_data_i, -- New Sample in
            input_valid_i => input_valid_i, -- Start State Machine
            peak_detector_threshold_i => peak_detector_threshold_i,
            
            -- Outputs
            signed(scaled_centered_data_o) => scaled_centered_data_s,
            moving_ave_o => moving_ave_o,
            output_valid_o => agc_output_valid_s
           
    );

    cdr_sm_1_inst : entity work.cdr_sm_1
        generic map(
            ADC_SAMPLE_SIZE => ADC_SAMPLE_SIZE, -- in bits
            GENERATE_CDR_SM_ILA => GENERATE_CDR_SM_ILA
        )
        port map(
            centered_data_i => std_logic_vector(scaled_centered_data_s),
            hs_clk_i => hs_clk_i,
            rst_i => rst_cdr_s,
            sm_input_valid_i => agc_output_valid_s,
              
            recovered_clk_o => recovered_clk_o,
            recovered_data_bit_o => recovered_data_bit_o,
            dds_phase_step_o => dds_phase_step_o,
            sm_output_valid_o => cdr_output_valid_s,
              
            -- Test IO
            --dds_phase_o : out std_logic_vector(15 downto 0);
            kp_i => kp_i,
            ki_i => ki_i,
            initial_phase_offset_i => initial_phase_offset_i,
            pi_controller_16_bit_output_o => open
    );

    main_state_machine_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & input_valid_i;
        
            if(rst_i = '1') then
                state_s <= IDLE;
                composite_state_int_s <= (others => '0');
                adc_data_s <= (others => '0');
            else
                adc_data_s <= unsigned(adc_data_i);
                case state_s is
                    when IDLE => 
                        composite_state_int_s <= x"1";
                        if(input_valid_shift_detector_s = "01") then
                            state_s <= WRITE_AGC;
                        end if;
                    
                    when WRITE_AGC => 
                        composite_state_int_s <= x"2";
                        state_s <= WAIT_AGC;
                    
                    when WAIT_AGC => 
                        composite_state_int_s <= x"3";
                        if(agc_output_valid_s = '1') then
                            state_s <= INIT_CDR_VALS;
                        end if;
                    
                    when INIT_CDR_VALS => 
                        composite_state_int_s <= x"4";
                        state_s <= WRITE_CDR;
                    
                    when WRITE_CDR => 
                        composite_state_int_s <= x"5";
                        state_s <= WAIT_CDR;
                    
                    when WAIT_CDR => 
                        composite_state_int_s <= x"6";
                        if(cdr_output_valid_s = '1') then
                            state_s <= IDLE;
                        end if;
                    
                    when others => 
                        composite_state_int_s <= (others => '0');
                        state_s <= IDLE;
                    
                end case;
            end if;
        end if;
    end process;

    -- ILA IP Declarations and Signals
    GENERATE_AGC_CDR_SM_3_ILA_STATEMENT: 
    if(GENERATE_COMPOSITE_AGC_CDR_SM_3_ILA) generate
        agc_cdr_sm_ila_inst : agc_cdr_sm_3_composite_ila
            PORT MAP (
                clk => hs_clk_i,
    
                probe0 => std_logic_vector(composite_state_int_s), 
                probe1 => std_logic_vector(adc_data_s),
                probe2 => std_logic_vector(scaled_centered_data_s), 
                probe3(0) => agc_output_valid_s,
                probe4(0) => cdr_output_valid_s,
                probe5(0) => rst_cdr_s
            );
    end generate;

end Behavioral;
