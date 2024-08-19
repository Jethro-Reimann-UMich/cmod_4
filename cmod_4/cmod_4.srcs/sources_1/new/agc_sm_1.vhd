----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 10:35:47 AM
-- Design Name: 
-- Module Name: agc_sm_1 - Behavioral
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

entity agc_sm_1 is
    Generic(
        PEAK_TO_PEAK_REF: integer range 0 to 2047 := 1000;
        N_BITS_PER_SAMP : integer range 0 to 16 := 12;
        N_MOVING_AVERAGE_LOG : integer range 0 to 16 := 6;
        DEBUG_AGC_ILA : boolean := true
    );
    Port(
        -- Inputs
        hs_clk_i : in STD_LOGIC; -- High Speed clock in
        rst_i : in STD_LOGIC;
        adc_data_i : in STD_LOGIC_VECTOR(N_BITS_PER_SAMP-1 downto 0); -- New Sample in
        input_valid_i : in STD_LOGIC; -- Start State Machine
        peak_detector_threshold_i : in STD_LOGIC_VECTOR(11 downto 0);
        
        -- Outputs
        scaled_centered_data_o : out STD_LOGIC_VECTOR(N_BITS_PER_SAMP-1 downto 0);
        moving_ave_o : out STD_LOGIC_VECTOR(N_BITS_PER_SAMP-1 downto 0);
        output_valid_o : out STD_LOGIC
        
    );
end agc_sm_1;

architecture Behavioral of agc_sm_1 is
    type t_agc_state is (IDLE, --LOAD_ADC_VAL, 
                         AGC_WRITE_MOVING_AVERAGE, AGC_WAIT_MOVING_AVERAGE,
                         AGC_ZERO_CENTER_SUBTRACT, AGC_ZERO_CENTER_SUBTRACT_D1, AGC_ZERO_CENTER_SUBTRACT_D2, AGC_PEAK_DETECTOR_CALC_CONDITIONALS, AGC_PEAK_DETECTOR_WRITE_TEMP_PEAK, AGC_PEAK_DETECTOR_WRITE_PEAK, AGC_START_DIV_GEN, AGC_WAIT_DIV_GEN, AGC_MULTIPLY_GAIN
                         );
    signal state_s : t_agc_state := IDLE;
    
    -- AGC Wide Signals
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0'); -- Two bit shift reg for detecting rising edge of valid input
    signal adc_data_s : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    signal centered_data_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0'); -- Holds the current ADC Sample centered on zero
    signal centered_data_13_bit_s : signed(N_BITS_PER_SAMP downto 0) := (others => '0'); -- Holds the current ADC Sample centered on zero, 13 bit for converting unsigned -> signed
    signal centered_data_13_bit_delay_s : signed(N_BITS_PER_SAMP downto 0) := (others => '0'); -- Holds the current ADC Sample centered on zero, 13 bit for converting unsigned -> signed
    
    -- AGC Moving Average Signals
    signal moving_average_input_valid_s : std_logic := '0';
    signal moving_average_output_valid_s : std_logic := '0';
    signal moving_ave_buffer_full_s : std_logic := '0';
    signal moving_ave_s : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    
        -- AGC - Peak Detector Signals
    constant decrement_val_c : signed(N_BITS_PER_SAMP-1 downto 0) := x"001"; -- 1 in Hex
    signal peak_detector_count_s : unsigned(7 downto 0) := (others => '0');
    --signal peak_s  : signed(N_BITS_PER_SAMP-1 downto 0)  := (others => '0');
    signal peak_s  : signed(15 downto 0)  := (1 => '1', others => '0');
    signal peak_temp_s : signed(15 downto 0) := (1 => '1', others => '0');
    --constant PEAK_TO_PEAK_REF_C : unsigned(11 downto 0) := to_unsigned(PEAK_TO_PEAK_REF, 12);
    constant PEAK_TO_PEAK_REF_C : unsigned(15 downto 0) := "0000" & to_unsigned(PEAK_TO_PEAK_REF, 12);
    signal new_peak_conditional_val_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    signal dec_peak_conditional_val_s : std_logic := '0';
    
    -- AGC - Gain Signals
    signal divider_input_valid_s : std_logic := '0';
    signal divider_output_valid_s : std_logic := '0';
    signal agc_gain_s : unsigned(23 downto 0) := (others => '0');
    signal scaled_centered_data_full_precision_s : signed(agc_gain_s'length+N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    signal scaled_centered_data_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0');    
    
    -- Vivado IP Component Instantiations
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
    
    COMPONENT agc_ila_2
        PORT (
            clk : IN STD_LOGIC;

            probe0 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(12 DOWNTO 0); 
            probe3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0); 
            probe4 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe5 : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
            probe6 : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT  ;
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

    agc_moving_ave_inst : entity work.moving_ave_sm_1
        generic map(
            N_MOVING_AVERAGE_LOG => N_MOVING_AVERAGE_LOG,
            N_BITS_PER_SAMP => N_BITS_PER_SAMP
        )
        port map(
            hs_clk_i => hs_clk_i,
            rst_i => rst_i,
            input_valid_i => moving_average_input_valid_s,
            val_i => adc_data_i,
        
            output_valid_o => moving_average_output_valid_s,
            moving_ave_buffer_full_o => moving_ave_buffer_full_s,
            unsigned(moving_average_o) => moving_ave_s
    );
    
    moving_ave_o <= std_logic_vector(moving_ave_s);

    main_agc_sm_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & input_valid_i;
            scaled_centered_data_o <= std_logic_vector(scaled_centered_data_s);
            
            if(rst_i = '1') then
                state_s <= IDLE;
            
                adc_data_s <= (others => '0');
                centered_data_s <= (others => '0');
                centered_data_13_bit_s <= (others => '0');
                
                moving_average_input_valid_s <= '0';
--                moving_average_output_valid_s <= '0';
--                moving_ave_buffer_full_s <= '0';
--                moving_ave_s <= (others => '0');
                
--                peak_detector_count_s <= (others => '0');
--                peak_s <= (1 => '1', others => '0');
                
--                divider_input_valid_s <= '0';
--                divider_output_valid_s <= '0';
--                agc_gain_s <= (others => '0');
--                scaled_centered_data_full_precision_s <= (others => '0');
--                scaled_centered_data_s <= (others => '0');
            else
                case state_s is 
                    when IDLE =>
                        output_valid_o <= '0';
                        if(input_valid_shift_detector_s = "01") then -- Detect Rising Edge
                            state_s <= AGC_WAIT_MOVING_AVERAGE;
                            adc_data_s <= unsigned(adc_data_i);
                            moving_average_input_valid_s <= '1';
                        end if;
                        
                    when AGC_WAIT_MOVING_AVERAGE => 
                        moving_average_input_valid_s <= '0';
                        if(moving_average_output_valid_s = '1') then
                            state_s <= AGC_ZERO_CENTER_SUBTRACT;
                            
                            if(peak_detector_count_s > "01111111") then -- somewhere between 15 and 31 probably. 
                                peak_detector_count_s <= (others => '0');
                            else
                                peak_detector_count_s <= peak_detector_count_s + 1;
                            end if; 
                        end if;     
                          
                    when AGC_ZERO_CENTER_SUBTRACT => 
                        state_s <= AGC_ZERO_CENTER_SUBTRACT_D1;
                        --centered_data_13_bit_delay_s <= centered_data_13_bit_s;
                        if(moving_ave_buffer_full_s = '1') then
                            centered_data_13_bit_s <= signed('0' & adc_data_s) - signed('0' & moving_ave_s);
                            --state_s <= AGC_PEAK_DETECTOR;
                        else
                            centered_data_13_bit_s <= (others => '0');
                        end if;
                        
                    when AGC_ZERO_CENTER_SUBTRACT_D1 =>
                        state_s <= AGC_ZERO_CENTER_SUBTRACT_D2;
                        centered_data_13_bit_delay_s <= centered_data_13_bit_s;
                    
                    when AGC_ZERO_CENTER_SUBTRACT_D2 =>
                        state_s <= AGC_PEAK_DETECTOR_CALC_CONDITIONALS;
                        centered_data_s <= centered_data_13_bit_delay_s(N_BITS_PER_SAMP-1 downto 0);
                        
                    when AGC_PEAK_DETECTOR_CALC_CONDITIONALS =>
                        --state_s <= AGC_PEAK_DETECTOR_WRITE_PEAK;
                        state_s <= AGC_PEAK_DETECTOR_WRITE_TEMP_PEAK;
                        new_peak_conditional_val_s <= centered_data_13_bit_delay_s(N_BITS_PER_SAMP-1 downto 0) - decrement_val_c;
                        if((peak_s > decrement_val_c) and (peak_detector_count_s = "00000000")) then
                            dec_peak_conditional_val_s <= '1';
                        else 
                            dec_peak_conditional_val_s <= '0';
                        end if;
                        
                    when AGC_PEAK_DETECTOR_WRITE_TEMP_PEAK =>
                        state_s <= AGC_PEAK_DETECTOR_WRITE_PEAK;
                        
--                        if(new_peak_conditional_val_s > peak_s) then
--                            peak_s <= "0000" & centered_data_13_bit_delay_s(N_BITS_PER_SAMP-1 downto 0);
--                        elsif(dec_peak_conditional_val_s = '1') then
--                            peak_s <= peak_s - 1;
--                        end if;
                        if(new_peak_conditional_val_s > peak_s) then
                            peak_temp_s <= "0000" & centered_data_13_bit_delay_s(N_BITS_PER_SAMP-1 downto 0);
                        elsif(dec_peak_conditional_val_s = '1') then
                            peak_temp_s <= peak_s - 1;
                        end if;
                    when AGC_PEAK_DETECTOR_WRITE_PEAK => 
                        state_s <= AGC_START_DIV_GEN;
                        peak_s <= peak_temp_s;
                        
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
                        output_valid_o <= '1';
                        state_s <= IDLE;
                    
                    when others =>
                        state_s <= IDLE;
                        
                end case;
            end if;
        end if;
    end process;

    -- ILA IP Declarations and Signals
    GENERATE_AGC_2_ILA_STATEMENT: 
    if(DEBUG_AGC_ILA) generate
        agc_ila_2_inst : agc_ila_2
            PORT MAP (
                clk => hs_clk_i,
    
                probe0 => adc_data_i, 
                probe1 => std_logic_vector(moving_ave_s),
                probe2 => std_logic_vector(centered_data_13_bit_s),
                probe3 => std_logic_vector(peak_s), 
                probe4 => std_logic_vector(agc_gain_s),
                probe5 => std_logic_vector(scaled_centered_data_s),
                probe6 => input_valid_shift_detector_s
            );
    end generate;

end Behavioral;
