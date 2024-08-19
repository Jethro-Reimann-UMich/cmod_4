----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2024 12:53:39 PM
-- Design Name: 
-- Module Name: rs_decoder_init_rst - Behavioral
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

entity rs_decoder_init_rst is
    Port ( clk_i : in STD_LOGIC;
           rst_o : out STD_LOGIC);
end rs_decoder_init_rst;

architecture Behavioral of rs_decoder_init_rst is
    constant MAX_COUNT_START_RST_C : integer := 39000000;  -- 39,000,000, gives 0.5 sec wait before reset
    constant MAX_COUNT_END_RST_C   : integer := 46800000;  -- 46,800,000, gives 0.1 sec wait before ending reset
    
    signal count_s : integer := 0;
    signal rst_s : std_logic := '0';
begin
    rst_o <= rst_s;

    main_rst_proc : process(clk_i)
    begin
        if(rising_edge(clk_i)) then
            case count_s is 
                when 0 to (MAX_COUNT_START_RST_C-1) =>
                    rst_s <= '0';
                    count_s <= count_s + 1;
                
                when MAX_COUNT_START_RST_C to MAX_COUNT_END_RST_C =>
                    rst_s <= '1';
                    count_s <= count_s + 1;
                
                when others => 
                    rst_s <= '0';
            end case;
        end if;
    end process;

end Behavioral;
