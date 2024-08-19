----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2024 01:36:58 PM
-- Design Name: 
-- Module Name: rs_decoder_sm_1_tb - Behavioral
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

entity rs_decoder_sm_1_tb is
end rs_decoder_sm_1_tb;

architecture Behavioral of rs_decoder_sm_1_tb is
    -- Testbench Timing constants
    constant CLK_50_kHz_FREQ : integer := 50000;
    constant CLK_50_kHz_PERIOD : time := 1 sec/CLK_50_kHz_FREQ;
    
    constant CLK_234_MHz_FREQ : integer := 234000000;
    constant CLK_234_MHz_PERIOD : time := 1 sec/CLK_234_MHz_FREQ;
    
    -- UUT IO Signals
    signal hs_clk_i_tb : std_logic := '0';
    signal rst_i_tb : std_logic := '0';
    signal data_bus_i_tb : std_logic_vector(2039 downto 0) := x"0100F00000000000007000000C0000000000000000000000003D00000000000000000000000000000000E800000000000000000000000000000000000000000000009000000000000000F0000000C700000000B80000000000000000000000B20000000000000000000000000000000000000000000000F70000000000000000000000000000000000000094B3BA7751F998AC94168972E7A6A2319B6C37412F4E36D6BB9D3D3D11EB4AE4AAC65BCEA517BCFFC9155EFFF80BFAC80B657C411F6474C19F47AC62F9CAEDAD6CB213F1AB6124AD3D3870766C31E2C2A36DFC3F84E88AFD11BD6CC0B7187B1D2BBBB157B5DF6B790EDEA7B4FB9768BCA2866D03";
    signal start_decoder_i_tb : std_logic := '1';
    
    signal decryption_done_o_tb : std_logic := '0';
    signal data_bus_o_tb : std_logic_vector(1111 downto 0) := (others => '0');
    
    -- Read from CSV Signals
    type std_logic_arr_type is array (0 to 16385) of unsigned(1 downto 0);
    signal data_in_stimulus : std_logic_arr_type := (others => (others => '0'));
    signal stimulus_count_s : integer := 0;
begin
    UUT_rs_decoder_sm_1 : entity work.rs_decoder_sm_1
    generic map(
        N => 255,
        K => 139
    )
    port map(
        hs_clk_i => hs_clk_i_tb,
        rst_i => rst_i_tb,
        data_bus_i => data_bus_i_tb,
        start_decoder_i => start_decoder_i_tb,
        
        decryption_done_o => decryption_done_o_tb,
        data_bus_o => data_bus_o_tb
    );

--    csv_file_read_proc : process
--        variable csv_file_1: csv_file_reader_type;
--        variable csv_line_index : integer := 0;
--        variable read_int : integer;
        
--        variable temp_std_logic : std_logic;
--    begin
--        --csv_file_1.initialize("C:/Xilinx2023_workspace/vivado_workspace/cmod_3/implifi_cmod_artix_receiver_3.srcs/sim_1/imports/test_1/manchester_uart_ila.csv");
--        csv_file_1.initialize("C:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.srcs/sim_1/imports/rs_ila_3_14/rs_data_csv.csv");
--        csv_file_1.readline; -- burn first line
        
--        while csv_file_1.end_of_file = false loop
--            csv_file_1.readline;
--            read_int := csv_file_1.read_integer;
--            read_int := csv_file_1.read_integer;
--            --read_int := csv_file_1.read_integer;
--            --read_int := csv_file_1.read_integer;
--            --read_int := csv_file_1.read_integer;
--            --clk_in_stimulus(csv_line_index) <= to_unsigned(read_int, 1);
            
--            read_int := csv_file_1.read_integer;
--            read_int := csv_file_1.read_integer;
--            read_int := csv_file_1.read_integer;
--            data_in_stimulus(csv_line_index) <= to_unsigned(read_int, 2);
            
--            --data_in_stimulus(csv_line_index) <= to_unsigned(read_int, 1)(0);
--            --data_in_stimulus(csv_line_index) <= temp_std_logic;
--            csv_line_index := csv_line_index + 1;
--        end loop;
        
--        csv_file_1.dispose;
--        wait;
--    end process;
    
--    clk_1_MHz_proc : process
--    begin
--        wait for CLK_50_kHz_PERIOD/2;
--        start_decoder_i_tb <= '0';
        
--        wait for CLK_50_kHz_PERIOD/2;
--        start_decoder_i_tb <= '1';
--        --adc_data_i_tb <= std_logic_vector(data_in_stimulus(stimulus_count_s));
--        data_bus_i_tb(data_bus_i_tb'length-1 downto 1) <= data_bus_i_tb(data_bus_i_tb'length-2 downto 0);-- & data_in_stimulus(stimulus_count_s)(0);
--        data_bus_i_tb(0) <= data_in_stimulus(stimulus_count_s)(0);
        
--        if(stimulus_count_s = 15385) then 
--            stimulus_count_s <= 0;
--        else
--            stimulus_count_s <= stimulus_count_s + 1;
--        end if;
--    end process;

    clk_50_kHz_proc : process
    begin
        wait for CLK_50_kHz_PERIOD/2;
        start_decoder_i_tb <= not start_decoder_i_tb;
    end process;
    
    clk_234_MHz_proc : process
    begin
        wait for CLK_234_MHz_PERIOD;
        hs_clk_i_tb <= not hs_clk_i_tb;
    end process;
    
    rst_proc : process
    begin
        wait for CLK_234_MHz_PERIOD*8;
        rst_i_tb <= '1';
        
        wait for CLK_234_MHz_PERIOD*8;
        rst_i_tb <= '0';
        
        wait;
    end process;

end Behavioral;
