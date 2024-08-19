----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/12/2023 01:07:20 PM
-- Design Name: 
-- Module Name: peak_detector_1 - Behavioral
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

entity peak_detector_1 is
    Port ( hs_clk_i : in STD_LOGIC;
           clk_1_MHz_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           val_i : in STD_LOGIC_VECTOR (11 downto 0);
           peak_o : out STD_LOGIC_VECTOR (11 downto 0));
end peak_detector_1;

architecture Behavioral of peak_detector_1 is
    constant decrement_val_c : signed(11 downto 0) := x"001"; -- 1 in Hex
    
    type t_peak_detector_state is (IDLE, LOAD_INPUT, INC_COUNTER, CALC_PEAK, OUTPUT);
    signal state_s : t_peak_detector_state := IDLE;
    
    signal val_i_s : signed(11 downto 0)  := x"002";
    signal peak_s  : signed(11 downto 0)  := (others => '0');
    signal count_s : unsigned(7 downto 0) := (others => '0');
    
    signal clk_1_MHz_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
begin
    peak_detect_sm_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            clk_1_MHz_shift_detector_s(1) <= clk_1_MHz_shift_detector_s(0);
            clk_1_MHz_shift_detector_s(0) <= clk_1_MHz_i;
        
            if(rst_i = '1') then
                val_i_s <= (others => '0');
                peak_s  <= x"002";
                count_s <= (others => '0');
            else
                case state_s is 
                    when IDLE =>
                        if(clk_1_MHz_shift_detector_s = "01") then -- 1 MHz clock rising edge
                            state_s <= INC_COUNTER;
                        end if; 
                    when INC_COUNTER =>
                        val_i_s <= signed(val_i);
                        state_s <= CALC_PEAK;
                        if(count_s > "00001111") then
                            count_s <= (others => '0');
                        else
                            count_s <= count_s + 1;
                        end if; 
                    when CALC_PEAK =>
                        state_s <= OUTPUT;
                        if(val_i_s - decrement_val_c > peak_s) then
                            peak_s <= val_i_s;
                        elsif((peak_s > decrement_val_c) and (count_s = "00000000")) then
                            peak_s <= peak_s - decrement_val_c;
                        else
                            peak_s <= peak_s;
                        end if;
                    when OUTPUT =>
                        state_s <= IDLE;
                        peak_o <= std_logic_vector(peak_s);
                    when others => 
                end case;
            end if;
        end if;
    end process;

--    val_o <= std_logic_vector(val_s);

--    clk_proc: process(clk_i, val_i)
--    begin
--        if(rising_edge(clk_i)) then
--            if(rst_i = '1') then
--                val_s <= (others => '0');
--                count_s <= (others => '0');
--            else
--                if(count_s > "00001111") then
--                    count_s <= (others => '0');
--                else
--                    count_s <= count_s + 1;
--                end if;
            
--                if(signed(val_i) - decrement_val_c > val_s) then
--                    val_s <= signed(val_i);
--                elsif((val_s > decrement_val_c) and (count_s = "00000000")) then
--                    val_s <= val_s - decrement_val_c;
--                else
--                    val_s <= val_s;
--                end if;
--            end if;
--        end if;
--    end process;
end Behavioral;
