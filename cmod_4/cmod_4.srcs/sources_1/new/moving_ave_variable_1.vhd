----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/05/2024 01:50:31 PM
-- Design Name: 
-- Module Name: moving_ave_variable_1 - Behavioral
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

entity moving_ave_variable_1 is
    Generic ( --N_MOVING_AVERAGE_LOG : integer := 8; -- 64 samples: 8^2 = 64
              N_MOVING_AVERAGE_LOG : integer := 10; -- 4 samples: 2^2 = 4
              N_BITS_PER_SAMP : integer := 12);
    Port ( clk_i : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (N_BITS_PER_SAMP-1 downto 0);
           rst_i : in STD_LOGIC;
           ave_o : out STD_LOGIC_VECTOR (N_BITS_PER_SAMP-1 downto 0);
           buffer_full_o : out STD_LOGIC);
end moving_ave_variable_1;

architecture Behavioral of moving_ave_variable_1 is
    type t_moving_average is array (0 to 2**N_MOVING_AVERAGE_LOG-1) of signed(N_BITS_PER_SAMP-1 downto 0);
    
    signal moving_ave_arr_s : t_moving_average := (others=>(others=>'0'));
    signal acc_s : signed(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto 0) := (others => '0');  -- average accumulator
    signal moving_ave_s : signed(N_BITS_PER_SAMP-1 downto 0) := (others => '0');   -- Do I need this signal?
    --signal buffer_full_s : std_logic := '0';
    signal count_s : unsigned(15 downto 0) := (others => '0');
begin
    --moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG);  -- Do I need this signal?
    --ave_o <= std_logic_vector(moving_ave_s);

    averaging_proc : process(clk_i, rst_i)
    begin
        if(rising_edge(clk_i)) then    -- rising edge
            if(rst_i = '1') then
                moving_ave_arr_s <= (others=>(others=>'0'));
                acc_s <= (others => '0');
                count_s <= (others => '0');
                buffer_full_o <= '0';
            else
                moving_ave_arr_s   <= signed(data_i)&moving_ave_arr_s(0 to moving_ave_arr_s'length-2);
                acc_s              <= acc_s + signed(data_i) - moving_ave_arr_s(moving_ave_arr_s'length-1); 
                if(count_s >= 2**N_MOVING_AVERAGE_LOG) then
                    buffer_full_o <= '1';
                    moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
                    ave_o <= std_logic_vector(moving_ave_s);
                else
                    buffer_full_o <= '0';
                    count_s <= count_s + 1;
                    moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
                    ave_o <= (others => '0');
                end if;
            end if;              
        end if;
    end process;
end Behavioral;
