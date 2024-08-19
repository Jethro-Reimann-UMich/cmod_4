----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 04:58:51 PM
-- Design Name: 
-- Module Name: axi_gpio_consts - Behavioral
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

entity axi_gpio_consts is
    Port (
        zero_const : out STD_LOGIC;
        one_const : out STD_LOGIC;
        peak_detector_threshold_o : out STD_LOGIC_VECTOR (11 downto 0);
        kp_o : out STD_LOGIC_VECTOR(31 downto 0);
        ki_o : out STD_LOGIC_VECTOR(31 downto 0);
        initial_phase_offset_o : out STD_LOGIC_VECTOR(15 downto 0)
    );
end axi_gpio_consts;

architecture Behavioral of axi_gpio_consts is
    constant zero_const_c : std_logic := '0';
    constant one_const_c : std_logic := '1';
    constant peak_detector_threshold_c : std_logic_vector(peak_detector_threshold_o'length-1 downto 0) := x"002";
    constant kp_c : std_logic_vector(kp_o'length -1 downto 0) := x"00FF0000";
    constant ki_c : std_logic_vector(ki_o'length -1 downto 0) := x"00FF0000";
    constant initial_phase_offset_c : std_logic_vector(initial_phase_offset_o'length-1 downto 0) := x"074E";
begin
    zero_const <= zero_const_c;
    one_const  <= one_const_c;
    peak_detector_threshold_o <= peak_detector_threshold_c;
    kp_o <= kp_c;
    ki_o <= ki_c;
    initial_phase_offset_o <= initial_phase_offset_c;
    
end Behavioral;
