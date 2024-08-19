----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2024 04:17:38 PM
-- Design Name: 
-- Module Name: agc_cdr_sm_1 - Behavioral
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

entity agc_cdr_sm_1 is
    Generic (PEAK_TO_PEAK_REF: integer range 0 to 2047 := 1000;
             N_BITS_PER_SAMP : integer range 0 to 16 := 12;
             N_MOVING_AVERAGE_LOG : integer range 0 to 16 := 6
             --DEBUG_ILA : Boolean := false
    );
    Port (clk_1_MHz_i : in std_logic;
          hs_clk_i : in std_logic;
          rst_i : in std_logic;
          adc_data_i : in std_logic_vector(11 downto 0);
          peak_detector_threshold_i : in std_logic_vector(11 downto 0)
    );
end agc_cdr_sm_1;

architecture Behavioral of agc_cdr_sm_1 is
    type t_agc_cdr_state is (IDLE, --LOAD_ADC_VAL, 
                             AGC_MA_SHIFT_REG, AGC_MA_ACC_ADD_NEW_VAL, AGC_MA_ACC_SUB_LAST_VAL,
                             AGC_ZERO_CENTER_SUBTRACT, AGC_PEAK_DETECTOR, AGC_START_DIV_GEN, AGC_WAIT_DIV_GEN, AGC_MULTIPLY_GAIN,
                             
                             CDR_SIN_COS_MULTIPLY, CDR_FREQ_ERR_MULTIPLY, CDR_WRITE_FIR_ERR_FILTER, CDR_WAIT_FIR_ERR_FILTER
                             
                             );
    signal state_s : t_agc_cdr_state := IDLE;
    
    -- Entity Wide Signals
    signal clk_1_MHz_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0'); -- Two bit shift reg for detecting rising edge of new ADC sample
    signal adc_data_i_s : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');  -- Holds the newest sample from ADC
    signal centered_data_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0'); -- Holds the current ADC Sample centered on zero
    signal centered_data_13_bit_s : signed(N_BITS_PER_SAMP downto 0) := (others => '0'); -- Holds the current ADC Sample centered on zero, 13 bit for converting unsigned -> signed
    signal state_machine_counter_s : unsigned(15 downto 0) := (others => '0'); -- Just to make sure that state machine finishes within 351 high-speed clock cycles
    
    -- AGC - Moving Average Signals
    type t_moving_average is array (0 to 2**N_MOVING_AVERAGE_LOG) of unsigned(N_BITS_PER_SAMP-1 downto 0);
    signal moving_ave_arr_s : t_moving_average := (others=>(others=>'0'));  -- Stores the last 2**N_MOVING_AVERAGE_LOG ADC values for finding the moving average
    
    signal moving_ave_acc_s : unsigned(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto 0) := (others => '0');  -- Moving average accumulator
    --signal moving_ave_s : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');   -- Do I need this signal?
    signal moving_ave_count_s : unsigned(15 downto 0) := (others => '0');
    signal moving_ave_buffer_full_s : std_logic := '0';
    
    -- AGC - Peak Detector Signals
    constant decrement_val_c : signed(N_BITS_PER_SAMP-1 downto 0) := x"001"; -- 1 in Hex
    signal peak_detector_count_s : unsigned(7 downto 0) := (others => '0');
    --signal peak_s  : signed(N_BITS_PER_SAMP-1 downto 0)  := (others => '0');
    signal peak_s  : signed(15 downto 0)  := (others => '0');
    --constant PEAK_TO_PEAK_REF_C : unsigned(11 downto 0) := to_unsigned(PEAK_TO_PEAK_REF, 12);
    constant PEAK_TO_PEAK_REF_C : unsigned(15 downto 0) := "0000" & to_unsigned(PEAK_TO_PEAK_REF, 12);
    
    -- AGC - Gain Signals
    signal divider_input_valid_s : std_logic := '0';
    signal divider_output_valid_s : std_logic := '0';
    signal agc_gain_s : unsigned(23 downto 0) := (others => '0');
    signal scaled_centered_data_full_precision_s : signed(agc_gain_s'length+N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    signal scaled_centered_data_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    
    -- CDR - All Signals
    signal dds_input_valid_s : std_logic := '0';
    signal dds_output_valid_s : std_logic := '0';
    signal q_channel_s : signed(23 downto 0) := (others => '0');
    signal i_channel_s : signed(23 downto 0) := (others => '0');
    signal freq_err_s : signed(47 downto 0) := (others => '0');
    
    -- Vivado Generated IP Component Declarations
    COMPONENT agc_div_gen
        PORT (
            aclk : IN STD_LOGIC;
            s_axis_divisor_tvalid : IN STD_LOGIC;
            s_axis_divisor_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            s_axis_dividend_tvalid : IN STD_LOGIC;
            s_axis_dividend_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            m_axis_dout_tvalid : OUT STD_LOGIC;
            m_axis_dout_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
            m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(23 DOWNTO 0) 
        );
    END COMPONENT;
    
    COMPONENT cdr_dds_compiler
        PORT (aclk : IN STD_LOGIC;
              s_axis_phase_tvalid : IN STD_LOGIC;
              s_axis_phase_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
              m_axis_data_tvalid : OUT STD_LOGIC;
              m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
        );
    END COMPONENT;
    
begin
    agc_divider_inst : agc_div_gen
        PORT MAP (
            aclk => hs_clk_i,
            s_axis_divisor_tvalid => divider_input_valid_s,
            s_axis_divisor_tdata => std_logic_vector(peak_s),
            s_axis_dividend_tvalid => divider_input_valid_s,
            s_axis_dividend_tdata => std_logic_vector(PEAK_TO_PEAK_REF_C),
            m_axis_dout_tvalid => divider_output_valid_s,
            m_axis_dout_tuser => open,
            unsigned(m_axis_dout_tdata) => agc_gain_s
    );
    
--    cdr_dds_inst : cdr_dds_compiler
--    PORT MAP (aclk => clk_1_MHz_i,
--              s_axis_phase_tvalid => dds_input_valid_s,
--              s_axis_phase_tdata => std_logic_vector(dds_phase_accumulator_s),
--              m_axis_data_tvalid => dds_output_valid_s,
--              m_axis_data_tdata => dds_output_s
--    );

    main_state_main_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            clk_1_MHz_shift_detector_s <= clk_1_MHz_shift_detector_s(0) & clk_1_MHz_i;
            --clk_1_MHz_shift_detector_s(1) <= clk_1_MHz_shift_detector_s(0);
            --clk_1_MHz_shift_detector_s(0) <= clk_1_MHz_i;
            
            if(state_s = IDLE) then
                state_machine_counter_s <= (others => '0');
            else
                state_machine_counter_s <= state_machine_counter_s + 1;
            end if;
            
            if(rst_i = '1') then
                state_s <= IDLE;
                
                -- Reset AGC Moving Average Signals
                moving_ave_arr_s <= (others=>(others=>'0'));
                moving_ave_acc_s <= (others => '0');
                moving_ave_count_s <= (others => '0');
                moving_ave_buffer_full_s <= '0';
            else
                case state_s is 
                    when IDLE =>
                        if(clk_1_MHz_shift_detector_s = "01") then
                            state_s <= AGC_MA_SHIFT_REG;
                            adc_data_i_s <= unsigned(adc_data_i);
                        else
                            state_s <= IDLE;
                        end if;
                    
                    -- **********************************************************************************
                    -- ****************************** AGC - Moving Average ******************************
                    -- **********************************************************************************
                    when AGC_MA_SHIFT_REG => -- Shift New ADC Value into moving average array
                        moving_ave_arr_s   <= adc_data_i_s & moving_ave_arr_s(0 to moving_ave_arr_s'length-2);
                        state_s <= AGC_MA_ACC_ADD_NEW_VAL;
                        
                        if(moving_ave_count_s >= 2**N_MOVING_AVERAGE_LOG) then
                            moving_ave_buffer_full_s <= '1';
                        else
                            moving_ave_buffer_full_s <= '0';
                            moving_ave_count_s <= moving_ave_count_s + 1;
                        end if;
                        
                        if(peak_detector_count_s > "00001111") then
                            peak_detector_count_s <= (others => '0');
                        else
                            peak_detector_count_s <= peak_detector_count_s + 1;
                        end if; 
                    
                    when AGC_MA_ACC_ADD_NEW_VAL => -- Add new ADC value to moving average accumulator
                        moving_ave_acc_s <= moving_ave_acc_s + adc_data_i_s;
                        state_s <= AGC_MA_ACC_SUB_LAST_VAL;
                    
                    when AGC_MA_ACC_SUB_LAST_VAL => -- Subtract last value from moving average array
                        moving_ave_acc_s <= moving_ave_acc_s - moving_ave_arr_s(moving_ave_arr_s'length-1); 
                        state_s <= AGC_ZERO_CENTER_SUBTRACT;
                        
                    when AGC_ZERO_CENTER_SUBTRACT => 
                        if(moving_ave_buffer_full_s = '1') then
                            centered_data_13_bit_s <= signed('0' & adc_data_i_s) - signed('0' & moving_ave_acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG));
                            state_s <= AGC_PEAK_DETECTOR;
                        else
                            centered_data_13_bit_s <= (others => '0');
                            state_s <= IDLE;
                        end if;
                    
                        --centered_data_13_bit_s <= signed('0' & adc_data_i_s) - signed('0' & moving_ave_acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG));
                        --state_s <= MOVING_AVE_BUFF_FULL_ENABLE;
                    when AGC_PEAK_DETECTOR =>
                        centered_data_s <= centered_data_13_bit_s(N_BITS_PER_SAMP-1 downto 0);
                        state_s <= AGC_START_DIV_GEN;
                        
                        if(centered_data_13_bit_s(N_BITS_PER_SAMP-1 downto 0) - decrement_val_c > peak_s) then
                            peak_s <= "0000" & centered_data_13_bit_s(N_BITS_PER_SAMP-1 downto 0);
                        elsif((peak_s > decrement_val_c) and (peak_detector_count_s = "00000000")) then
                            peak_s <= peak_s - decrement_val_c;
                        else
                            peak_s <= peak_s;
                        end if;
                        
                    when AGC_START_DIV_GEN =>
                        state_s <= AGC_WAIT_DIV_GEN;
                        divider_input_valid_s <= '1';
                        
                    when AGC_WAIT_DIV_GEN =>
                        divider_input_valid_s <= '0';
                        if(divider_output_valid_s = '1') then
                            state_s <= AGC_MULTIPLY_GAIN;
                            scaled_centered_data_full_precision_s <= signed(agc_gain_s) * centered_data_s;
                            --agc_gain_s <= divider_output_s(23 downto 12);
                        end if;
                    when AGC_MULTIPLY_GAIN =>
                        scaled_centered_data_s <= scaled_centered_data_full_precision_s(23 downto 12); -- There are 12 fractional bits of 'agc_gain_s'
                        state_s <= CDR_SIN_COS_MULTIPLY;
                    
                    when CDR_SIN_COS_MULTIPLY => 
                    
                        -- *********************************************************************************************
                        -- NOTE FOR TOMORROW: SET THE VALUES OF SIN/COS FROM DDS_COMPILER_INST IN PREVIOUS STATE.
                        -- ALSO, DO THE XOR RECOVERED CLOCK HERE ... ? 
                        -- *********************************************************************************************
                        state_s <= CDR_FREQ_ERR_MULTIPLY;
                    
                    when CDR_FREQ_ERR_MULTIPLY => 
                        state_s <= CDR_WRITE_FIR_ERR_FILTER;
                    
                    when CDR_WRITE_FIR_ERR_FILTER => 
                        state_s <= CDR_WAIT_FIR_ERR_FILTER;
                    
                    when CDR_WAIT_FIR_ERR_FILTER => 
                        state_s <= IDLE; 
                    
                    
                    when others =>
                        state_s <= IDLE;
                end case;
            end if;
        end if;
    end process;

end Behavioral;
