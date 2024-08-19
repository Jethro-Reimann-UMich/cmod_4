----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2024 06:28:16 PM
-- Design Name: 
-- Module Name: uart_manchester_decoder_1 - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity uart_manchester_decoder_1 is
    Generic(
        N : integer := 255;
        K : integer := 139;
        DEBUG_ILA : boolean := false
    );
    Port ( 
        hs_clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        recovered_clk_i : in STD_LOGIC;
        recovered_data_bit_i : in STD_LOGIC;
        data_bus_o : out STD_LOGIC_VECTOR ((N*8)-1 downto 0);
        target_detected_o : out STD_LOGIC
    );
end uart_manchester_decoder_1;

architecture Behavioral of uart_manchester_decoder_1 is
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    signal recovered_data_shift_buff_s : std_logic_vector((20*N)-1 downto 0) := (others => '0');
    signal data_bus_s : std_logic_vector((N*8)-1 downto 0) := (others => '0');
    
--    constant target_c : std_logic_vector(79 downto 0) := x"0100F000000000000070";
--    signal target_detected_s : std_logic := '0';
begin
    process(hs_clk_i)
    begin
--        -- Load UART Bits into 'data_bus_s'. 
--        for i in 0 to N-1 loop
--            data_bus_s(8*(N-1-i))       <= recovered_data_shift_buff_s((20*i) + 17);
--            data_bus_s((8*(N-1-i)) + 1) <= recovered_data_shift_buff_s((20*i) + 15);
--            data_bus_s((8*(N-1-i)) + 2) <= recovered_data_shift_buff_s((20*i) + 13);
--            data_bus_s((8*(N-1-i)) + 3) <= recovered_data_shift_buff_s((20*i) + 11);
            
--            data_bus_s((8*(N-1-i)) + 4) <= recovered_data_shift_buff_s((20*i) + 7);
--            data_bus_s((8*(N-1-i)) + 5) <= recovered_data_shift_buff_s((20*i) + 5);
--            data_bus_s((8*(N-1-i)) + 6) <= recovered_data_shift_buff_s((20*i) + 3);
--            data_bus_s((8*(N-1-i)) + 7) <= recovered_data_shift_buff_s((20*i) + 1);
--        end loop;
        
--        data_bus_o <= data_bus_s;
    
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & recovered_clk_i;
            if(rst_i = '1') then
                recovered_data_shift_buff_s <= (others => '0');
            else
                if(input_valid_shift_detector_s = "01") then
                    recovered_data_shift_buff_s((N*20)-1 downto 1) <= recovered_data_shift_buff_s((N*20)-2 downto 0);
                    recovered_data_shift_buff_s(0) <= recovered_data_bit_i;    -- Shift MSB into register
                    
                end if;
            end if;
            
        -- Load UART Bits into 'data_bus_s'. 
        for i in 0 to N-1 loop
            data_bus_s(8*(N-1-i))       <= recovered_data_shift_buff_s((20*i) + 17);
            data_bus_s((8*(N-1-i)) + 1) <= recovered_data_shift_buff_s((20*i) + 15);
            data_bus_s((8*(N-1-i)) + 2) <= recovered_data_shift_buff_s((20*i) + 13);
            data_bus_s((8*(N-1-i)) + 3) <= recovered_data_shift_buff_s((20*i) + 11);
            
            data_bus_s((8*(N-1-i)) + 4) <= recovered_data_shift_buff_s((20*i) + 7);
            data_bus_s((8*(N-1-i)) + 5) <= recovered_data_shift_buff_s((20*i) + 5);
            data_bus_s((8*(N-1-i)) + 6) <= recovered_data_shift_buff_s((20*i) + 3);
            data_bus_s((8*(N-1-i)) + 7) <= recovered_data_shift_buff_s((20*i) + 1);
        end loop;
        
        data_bus_o <= data_bus_s;
        end if;
    end process;

end Behavioral;
