----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2023 03:35:28 PM
-- Design Name: 
-- Module Name: agc_centering_composite_1 - Behavioral
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

entity agc_centering_composite_1 is 
    Generic (PEAK_TO_PEAK_REF: integer range 0 to 2047 := 1000;
             --INPUT_DATA_PEAK_DETECTOR_THRESHOLD : integer range 0 to 2047 := 10;
             DEBUG_ILA : Boolean := false
    );
    Port (clk_1_MHz_i : in std_logic;
          hs_clk_i : in std_logic;
          rst_i : in std_logic;
          adc_data_i : in std_logic_vector(11 downto 0);
          peak_detector_threshold_i : in std_logic_vector(11 downto 0);
          centered_scaled_data_o : out std_logic_vector(11 downto 0);
          filter_buffer_full_o : out std_logic;
          rst_cdr_o : out std_logic
    );
end agc_centering_composite_1;

architecture Behavioral of agc_centering_composite_1 is
    constant PEAK_TO_PEAK_REF_C : unsigned(11 downto 0) := to_unsigned(PEAK_TO_PEAK_REF, 12);
    --constant INPUT_DATA_PEAK_DETECTOR_THRESHOLD_C : unsigned(11 downto 0) := to_unsigned(INPUT_DATA_PEAK_DETECTOR_THRESHOLD, 12);
    
    signal dc_ave_s : unsigned(11 downto 0) := (others => '0');
    signal zero_centered_input_13_bit_s : signed(12 downto 0) := (others => '0');
    signal centered_data_s : signed(11 downto 0) := (others => '0');
    signal detected_peak_s : unsigned(11 downto 0) := (others => '0');
    signal detected_peak_padded_s : std_logic_vector(15 downto 0) := (others => '0');
    signal agc_gain_s : unsigned(23 downto 0);
    signal scaled_centered_data_s : signed(35 downto 0);
    signal filter_buffer_full_s : std_logic := '0';
    
    signal clk_1_MHz_i_s : std_logic_vector(0 downto 0) := (others => '0');
    
    -- Vivado IP declarations
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
    
    COMPONENT agc_ila
    PORT (
        clk : IN STD_LOGIC;    
        probe0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
        probe1 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
        probe2 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
        probe3 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
        probe4 : IN STD_LOGIC_VECTOR(11 DOWNTO 0); 
        probe5 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
        probe6 : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
        probe7 : IN STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
    END COMPONENT  ;

begin
--    moving_ave_inst : entity work.moving_ave_variable
--        generic map(N_MOVING_AVERAGE_LOG => 6,
--                    N_BITS_PER_SAMP => 12
--        )
--        port map(clk => clk_1_Mhz_i,
--                 data_i => adc_data_i,
--                 rst_i => rst_i,
--                 unsigned(ave_o) => dc_ave_s,
--                 buffer_full_o => filter_buffer_full_s
--        );
    
--    peak_detector_inst : entity work.peak_detector_1
--        port map(clk_i => clk_1_MHZ_i,
--                 rst_i => rst_i,
--                 val_i => std_logic_vector(centered_data_s),
--                 unsigned(val_o) => detected_peak_s
--        );
        
    divider_inst : agc_div_gen
        PORT MAP (
            aclk => hs_clk_i,
            s_axis_divisor_tvalid => '1',
            s_axis_divisor_tdata => detected_peak_padded_s,
            s_axis_dividend_tvalid => '1',
            s_axis_dividend_tdata => std_logic_vector("0000" & PEAK_TO_PEAK_REF_C),
            m_axis_dout_tvalid => open,
            m_axis_dout_tuser => open,
            unsigned(m_axis_dout_tdata) => agc_gain_s
    );
    
    main_1_MHz_proc : process(clk_1_MHZ_i)
    begin
        if(clk_1_MHZ_i'event and clk_1_MHZ_i = '1') then -- rising edge
            zero_centered_input_13_bit_s <= signed('0' & adc_data_i) - signed('0' & dc_ave_s);
            detected_peak_padded_s <= std_logic_vector("0000" & detected_peak_s);
            
            scaled_centered_data_s <= signed(agc_gain_s) * centered_data_s;
            filter_buffer_full_o <= filter_buffer_full_s;
        
            -- Enabling output
            if(filter_buffer_full_s = '1') then
                centered_data_s <= signed(zero_centered_input_13_bit_s(11 downto 0));
            else
                centered_data_s <= (others => '0');
            end if;
        end if;
    end process;
    
    signal_detection_enable_proc : process(detected_peak_s)
    begin
        --if(detected_peak_s > INPUT_DATA_PEAK_DETECTOR_THRESHOLD_C) then  -- signal detected
        if(detected_peak_s > unsigned(peak_detector_threshold_i)) then  -- signal detected
            centered_scaled_data_o <= std_logic_vector(scaled_centered_data_s(23 downto 12));  -- There are 12 fractional bits of 'agc_gain_s'
            rst_cdr_o <= '0';
        else  -- signal not detected
            centered_scaled_data_o <= (others => '0');
            rst_cdr_o <= '1';
        end if;
    end process;

    clk_1_MHz_i_s <= (0 => clk_1_MHz_i);
    
    ILA_GENERATE_STATEMENT : 
    if(DEBUG_ILA) generate
        agc_ila_inst : agc_ila
            PORT MAP (
                clk => hs_clk_i,       
                probe0 => clk_1_MHz_i_s, 
                probe1 => std_logic_vector(adc_data_i), 
                probe2 => std_logic_vector(dc_ave_s), 
                probe3 => std_logic_vector(centered_data_s), 
                probe4 => std_logic_vector(detected_peak_s), 
                probe5 => std_logic_vector(agc_gain_s), 
                probe6 => std_logic_vector(scaled_centered_data_s),
                probe7 => std_logic_vector(scaled_centered_data_s(23 downto 12))
            );
    end generate;
    
end Behavioral;
