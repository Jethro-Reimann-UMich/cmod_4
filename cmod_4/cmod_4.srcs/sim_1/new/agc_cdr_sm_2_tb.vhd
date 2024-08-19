----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2024 03:32:06 PM
-- Design Name: 
-- Module Name: agc_cdr_sm_2_tb - Behavioral
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

use STD.TEXTIO.ALL;

use work.csv_file_reader_pkg.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity agc_cdr_sm_2_tb is
end agc_cdr_sm_2_tb;

architecture Behavioral of agc_cdr_sm_2_tb is
    -- Testbench Timing constants
    constant CLK_1_MHz_FREQ : integer := 100000;
    constant CLK_1_MHz_PERIOD : time := 1 sec/CLK_1_MHz_FREQ;
    
    constant CLK_351_MHz_FREQ : integer := 351000000;
    constant CLK_351_MHz_PERIOD : time := 1 sec/CLK_351_MHz_FREQ;
    
    -- Testbench File signals
    type unsigned_12_bit_arr_type is array (0 to 65535) of unsigned(11 downto 0);
    signal data_in_stimulus : unsigned_12_bit_arr_type := (others => (others => '0'));
    signal stimulus_count_s : integer := 0;
    
    -- UUT IO Signals
    signal clk_1_MHz_i_tb : std_logic := '1';
    signal hs_clk_i_tb : std_logic := '0';
    signal rst_i_tb : std_logic := '0';
    signal adc_data_i_tb : std_logic_vector(11 downto 0) := (others => '0');
    signal peak_detector_threshold_i_tb : std_logic_vector(11 downto 0) := x"002";
    signal centered_scaled_data_o_tb : std_logic_vector(11 downto 0) := (others => '0');
    signal filter_buffer_full_o_tb : std_logic := '0';
    signal rst_cdr_o_tb : std_logic := '0';
    
begin
    UUT_agc_cdr_sm_2 : entity work.agc_cdr_sm_2
    generic map(
        ADC_SAMPLE_SIZE => 12,
        AGC_PEAK_TO_PEAK_REF => 1000,
        
        -- Reed Solomon Generics
        RS_N => 255,
        RS_K => 139

    )
    port map(
        hs_clk_i => hs_clk_i_tb,
        rst_i => rst_i_tb,
        adc_data_i => adc_data_i_tb,
        input_valid_i => clk_1_MHz_i_tb,
        peak_detector_threshold_i => peak_detector_threshold_i_tb
    );
    
    
    
    csv_file_read_proc : process
        variable csv_file_1: csv_file_reader_type;
        variable csv_line_index : integer := 0;
        variable read_int : integer;
    begin
        --csv_file_1.initialize("C:/Xilinx2023_workspace/vivado_workspace/cmod_3/implifi_cmod_artix_receiver_3.srcs/sim_1/imports/test_1/manchester_uart_ila.csv");
        csv_file_1.initialize("C:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.srcs/sim_1/imports/pipelining_work_ila/adc_ila_csv.csv");
        csv_file_1.readline; -- burn first line
        
        while csv_file_1.end_of_file = false loop
            csv_file_1.readline;
            read_int := csv_file_1.read_integer;
            read_int := csv_file_1.read_integer;
            read_int := csv_file_1.read_integer;
            read_int := csv_file_1.read_integer;
            --read_int := csv_file_1.read_integer;
            --clk_in_stimulus(csv_line_index) <= to_unsigned(read_int, 1);
            
            read_int := csv_file_1.read_integer;
            data_in_stimulus(csv_line_index) <= to_unsigned(read_int, 12);
            csv_line_index := csv_line_index + 1;
        end loop;
        
        csv_file_1.dispose;
        wait;
    end process;
    
    clk_1_MHz_proc : process
    begin
        wait for CLK_1_MHz_PERIOD/2;
        clk_1_MHz_i_tb <= '0';
        
        wait for CLK_1_MHz_PERIOD/2;
        clk_1_MHz_i_tb <= '1';
        adc_data_i_tb <= std_logic_vector(data_in_stimulus(stimulus_count_s));
        
        if(stimulus_count_s = 65535) then 
            stimulus_count_s <= 0;
        else
            stimulus_count_s <= stimulus_count_s + 1;
        end if;
    end process;
    
    clk_351_MHz_proc : process
    begin
        wait for CLK_351_MHz_PERIOD;
        hs_clk_i_tb <= not hs_clk_i_tb;
    end process;
    
    rst_proc : process
    begin
        wait for CLK_1_MHz_PERIOD*8;
        rst_i_tb <= '1';
        
        wait for CLK_1_MHz_PERIOD*8;
        rst_i_tb <= '0';
        
        wait;
    end process;

end Behavioral;
