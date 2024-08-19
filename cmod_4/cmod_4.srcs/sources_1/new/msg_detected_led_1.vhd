----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2024 04:28:20 PM
-- Design Name: 
-- Module Name: msg_detected_led_1 - Behavioral
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

entity msg_detected_led_1 is
    Generic(
        clk_i_freq : integer := 156000000; -- 156 MHz
        data_i_baud : integer := 50000; -- 50 kHz
        size_msg   : integer := 5100  -- 255 * 20
    );
    Port ( 
        clk_i : in STD_LOGIC;
        target_detected_i : in STD_LOGIC;
        led_o : out STD_LOGIC;
        msg_receiver_count_o : out STD_LOGIC_VECTOR(15 downto 0)
    );
end msg_detected_led_1;

architecture Behavioral of msg_detected_led_1 is
    --constant MAX_COUNT_C : integer := (clk_i_freq/data_i_baud)*size_msg;
    constant MAX_COUNT_C : integer := 15912000;

    signal msg_detected_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    signal count_s : integer := 0;
    signal msg_receiver_count_s : unsigned(15 downto 0) := (others => '0');
    signal led_s : std_logic := '0';
begin
    led_o <= led_s;
    msg_receiver_count_o <= std_logic_vector(msg_receiver_count_s);

    msg_detected_led_count_proc : process(clk_i)
    begin
        if(rising_edge(clk_i)) then
            msg_detected_shift_detector_s <= msg_detected_shift_detector_s(0) & target_detected_i;
            if(msg_detected_shift_detector_s = "01") then -- rising edge
                count_s <= 0;
                msg_receiver_count_s <= msg_receiver_count_s + 1;
            else
                case count_s is 
                    when 0 to MAX_COUNT_C-1 =>
                        count_s <= count_s + 1;
                        led_s <= '1';
                    
                    when others =>
                       led_s <= '0';
                end case; 
            end if;   
                
        end if;
    end process;

end Behavioral;
