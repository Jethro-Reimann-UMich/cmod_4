----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/16/2024 03:54:59 PM
-- Design Name: 
-- Module Name: mux_select_1 - Behavioral
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

entity mux_select_1 is
    Generic ( 
        MAX_ROLLOVER_COUNT : integer range 0 to 2147483647 := 156000000
    );
    Port( 
        clk_i : in STD_LOGIC;
        moving_ave_i : in STD_LOGIC_VECTOR (11 downto 0);
        mux_a_o : out STD_LOGIC;
        mux_b_o : out STD_LOGIC;
        mux_c_o : out STD_LOGIC
    );
end mux_select_1;

architecture Behavioral of mux_select_1 is
    constant MAX_ROLLOVER_COUNT_C : unsigned(31 downto 0) := to_unsigned(MAX_ROLLOVER_COUNT, 32);
    type t_mux_state is (IDLE, --LOAD_ADC_VAL, 
                         MUX_WAITING,
                         MUX_READ_MOVING_AVE, MUX_IF_CONDITION, MUX_WRITE_OUTPUT
                         );
    signal state_s : t_mux_state := IDLE;
    
    signal count_s : unsigned(31 downto 0) := (others => '0');
    signal moving_ave_s : unsigned(moving_ave_i'length-1 downto 0) := (others => '0');
    signal mux_sel_level_s : unsigned(2 downto 0) := "010";
    signal mux_sel_abc_s : std_logic_vector(2 downto 0) := "100";
    
begin
    mux_a_o <= mux_sel_abc_s(2);
    mux_b_o <= mux_sel_abc_s(1);
    mux_c_o <= mux_sel_abc_s(0);

    main_state_machine_proc : process(clk_i)
    begin
        if(rising_edge(clk_i)) then
            case state_s is 
                when MUX_WAITING =>
                    if(count_s < MAX_ROLLOVER_COUNT_C) then
                        count_s <= count_s + 1;
                    else
                        state_s <= MUX_READ_MOVING_AVE;
                        moving_ave_s <= unsigned(moving_ave_i);
                    end if;
                    
                when MUX_READ_MOVING_AVE =>
                    state_s <= MUX_IF_CONDITION;
                    
                    if(moving_ave_s > 3500) then
                        if(mux_sel_level_s > x"0") then
                            mux_sel_level_s <= mux_sel_level_s - 1;
                        end if;
                    elsif(moving_ave_s < 2700) then
                        if(mux_sel_level_s < x"2") then
                            mux_sel_level_s <= mux_sel_level_s + 1;
                        end if;
                    end if;
                    
                when MUX_IF_CONDITION =>
                    state_s <= MUX_WRITE_OUTPUT;
                    count_s <= (others => '0');
                
                    case mux_sel_level_s is 
                        when "000" => 
                            mux_sel_abc_s <= "110";
                            
                        when "001" =>
                            mux_sel_abc_s <= "000";
                        
                        when others => 
                            mux_sel_abc_s <= "100";
                    end case;
                when MUX_WRITE_OUTPUT =>
                    state_s <= MUX_WAITING;
                    
                when others =>
                    count_s <= (others => '0');
                    state_s <= MUX_WAITING;
            end case;
        end if;
    end process;

end Behavioral;
