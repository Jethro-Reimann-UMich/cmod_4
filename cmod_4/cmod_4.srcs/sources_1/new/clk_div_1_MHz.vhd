----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 05:57:19 PM
-- Design Name: 
-- Module Name: clk_div_1_MHz - Behavioral
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

entity clk_div_1_MHz is
    Port ( clk_104_MHz_i : in STD_LOGIC;
           clk_1_MHz_o : out STD_LOGIC);
end clk_div_1_MHz;

architecture Behavioral of clk_div_1_MHz is
    signal count_s : unsigned(11 downto 0) := (others => '0'); -- Max divider value of 65536
    signal temp_s : std_logic := '0';
begin
	process(clk_104_MHz_i)
	begin
		if(rising_edge(clk_104_MHz_i)) then -- rising edge
			if (count_s >= 51) then   --input clock is 104 MHZ, divide by 52 to get 2 MHz clock (output is 1 MHz)
				temp_s <= NOT temp_s;
				clk_1_MHz_o <= temp_s;
				count_s <= (others => '0');
		    else
		        count_s <= count_s + 1;
			end if;
		end if;
	end process;
end Behavioral;