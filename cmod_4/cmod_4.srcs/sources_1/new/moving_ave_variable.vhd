----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/11/2023 05:00:42 PM
-- Design Name: 
-- Module Name: moving_ave_variable - Behavioral
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
-- arithmetic functions with Signed or Unsigned values-use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity moving_ave_variable is
    Generic ( --N_MOVING_AVERAGE_LOG : integer := 8; -- 64 samples: 8^2 = 64
              N_MOVING_AVERAGE_LOG : integer := 6; -- 4 samples: 2^2 = 4
              N_BITS_PER_SAMP : integer := 12);
    Port ( clk : in STD_LOGIC;
           clk_1_MHz_i : in STD_LOGIC;
           data_i : in STD_LOGIC_VECTOR (N_BITS_PER_SAMP-1 downto 0);
           rst_i : in STD_LOGIC;
           proc_done_o : out STD_LOGIC;
           ave_o : out STD_LOGIC_VECTOR (N_BITS_PER_SAMP-1 downto 0);
           buffer_full_o : out STD_LOGIC);
end moving_ave_variable;

architecture Behavioral of moving_ave_variable is
    type t_moving_ave_state is (IDLE, SHIFT_REG, ADD_ACC, SUB_ACC, OUTPUT);
    signal state_s : t_moving_ave_state := IDLE;

    --type t_moving_average is array (0 to 2**N_MOVING_AVERAGE_LOG-1) of unsigned(N_BITS_PER_SAMP-1 downto 0);
    type t_moving_average is array (0 to 2**N_MOVING_AVERAGE_LOG) of unsigned(N_BITS_PER_SAMP-1 downto 0);
    signal moving_ave_arr_s : t_moving_average := (others=>(others=>'0'));
    
    signal data_i_s : std_logic_vector(N_BITS_PER_SAMP-1 downto 0) := (others => '0');
    signal acc_s : unsigned(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto 0) := (others => '0');  -- average accumulator
    signal moving_ave_s : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');   -- Do I need this signal?
    --signal buffer_full_s : std_logic := '0';
    signal count_s : unsigned(15 downto 0) := (others => '0');
    
    signal clk_1_MHz_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    
    -- JUST FOR SIMULATION. DELETE!
--    signal SIM_ACC : unsigned(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto 0) := (others => '0');  -- average accumulator
--    signal SIM_MOVING_AVE : unsigned(N_BITS_PER_SAMP-1 downto 0) := (others => '0');  -- average accumulator
begin
    main_ave_proc : process(clk)
    begin
        if(rising_edge(clk)) then
            clk_1_MHz_shift_detector_s(1) <= clk_1_MHz_shift_detector_s(0);
            clk_1_MHz_shift_detector_s(0) <= clk_1_MHz_i;
            
            if(rst_i = '1') then
                moving_ave_arr_s <= (others=>(others=>'0'));
                acc_s <= (others => '0');
                count_s <= (others => '0');
                buffer_full_o <= '0';            
            else
                case state_s is 
                    when IDLE  => 
                        if(clk_1_MHz_shift_detector_s = "01") then
                            state_s <= SHIFT_REG;
                            data_i_s <= data_i;
                        else
                            state_s <= IDLE;
                        end if;
                    when SHIFT_REG =>
                        moving_ave_arr_s   <= unsigned(data_i_s)&moving_ave_arr_s(0 to moving_ave_arr_s'length-2);
                        state_s <= ADD_ACC;
                    when ADD_ACC =>
                        acc_s              <= acc_s + unsigned(data_i_s);
                        state_s <= SUB_ACC;
                    when SUB_ACC =>
                        acc_s              <= acc_s - moving_ave_arr_s(moving_ave_arr_s'length-1); 
                        state_s <= OUTPUT;
                    when OUTPUT =>
                        state_s <= IDLE;
                        if(count_s >= 2**N_MOVING_AVERAGE_LOG) then
                            buffer_full_o <= '1';
                            moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
                            --ave_o <= std_logic_vector(moving_ave_s);
                            ave_o <= std_logic_vector(acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG));
                        else
                            buffer_full_o <= '0';
                            count_s <= count_s + 1;
                            moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
                            ave_o <= (others => '0');
                        end if;
                    when others => 
                        state_s <= IDLE;
                end case;
            end if;
        end if;
    end process;

    -- THIS IS JUST FOR SIMULATION TO GET THE TRUE MOVING AVERAGE. DELETE!
--    sim_moving_ave_proc : process(clk_1_MHz_i)
--    begin
--        if(rising_edge(clk_1_MHz_i)) then
--            SIM_ACC <= "000000" & moving_ave_arr_s(0) + moving_ave_arr_s(1)+ moving_ave_arr_s(2)+ moving_ave_arr_s(3)+ moving_ave_arr_s(4)+ moving_ave_arr_s(5)+ moving_ave_arr_s(6)+ moving_ave_arr_s(7) + moving_ave_arr_s(8) + moving_ave_arr_s(9) +  moving_ave_arr_s(10) + moving_ave_arr_s(11)  + moving_ave_arr_s(12) + moving_ave_arr_s(13)+ moving_ave_arr_s(14) + moving_ave_arr_s(15) + moving_ave_arr_s(16) + moving_ave_arr_s(17)  + moving_ave_arr_s(18) + moving_ave_arr_s(19)  + moving_ave_arr_s(20)+ moving_ave_arr_s(21)  + moving_ave_arr_s(22) + moving_ave_arr_s(23) + moving_ave_arr_s(24) + moving_ave_arr_s(25) + moving_ave_arr_s(26) + moving_ave_arr_s(27) + moving_ave_arr_s(28) + moving_ave_arr_s(29) + moving_ave_arr_s(30) + moving_ave_arr_s(31) + moving_ave_arr_s(32) + moving_ave_arr_s(33) + moving_ave_arr_s(34) + moving_ave_arr_s(35) + moving_ave_arr_s(36) + moving_ave_arr_s(37)+ moving_ave_arr_s(38)+ moving_ave_arr_s(39)+ moving_ave_arr_s(40)+ moving_ave_arr_s(41)+ moving_ave_arr_s(42)+ moving_ave_arr_s(43)+ moving_ave_arr_s(44)+ moving_ave_arr_s(45) + moving_ave_arr_s(46)+ moving_ave_arr_s(47)+ moving_ave_arr_s(48)+ moving_ave_arr_s(49)+ moving_ave_arr_s(50)+ moving_ave_arr_s(51)+ moving_ave_arr_s(52)+ moving_ave_arr_s(53) + moving_ave_arr_s(54)+ moving_ave_arr_s(55)+ moving_ave_arr_s(56)+ moving_ave_arr_s(57)+ moving_ave_arr_s(58) + moving_ave_arr_s(59)+ moving_ave_arr_s(60)+ moving_ave_arr_s(61)+ moving_ave_arr_s(62)+ moving_ave_arr_s(63);             
--            SIM_MOVING_AVE <= SIM_ACC(17 downto 6);
--        end if;
--    end process;


--    averaging_proc : process(clk, rst_i)
--    begin
--        if(rising_edge(clk)) then    -- rising edge
--            if(rst_i = '1') then
--                moving_ave_arr_s <= (others=>(others=>'0'));
--                acc_s <= (others => '0');
--                count_s <= (others => '0');
--                buffer_full_o <= '0';
--            else
--                moving_ave_arr_s   <= signed(data_i)&moving_ave_arr_s(0 to moving_ave_arr_s'length-2);
--                acc_s              <= acc_s + signed(data_i) - moving_ave_arr_s(moving_ave_arr_s'length-1); 
--                if(count_s >= 2**N_MOVING_AVERAGE_LOG) then
--                    buffer_full_o <= '1';
--                    moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
--                    ave_o <= std_logic_vector(moving_ave_s);
--                else
--                    buffer_full_o <= '0';
--                    count_s <= count_s + 1;
--                    moving_ave_s <= acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG); -- Do I need this signal?
--                    ave_o <= (others => '0');
--                end if;
--            end if;              
--        end if;
--    end process;
end Behavioral;
