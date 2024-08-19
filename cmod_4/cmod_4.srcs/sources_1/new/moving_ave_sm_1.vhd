----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 10:37:58 AM
-- Design Name: 
-- Module Name: moving_ave_sm_1 - Behavioral
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

entity moving_ave_sm_1 is
    Generic(
        N_BITS_PER_SAMP : integer range 0 to 16 := 12;
        N_MOVING_AVERAGE_LOG : integer range 0 to 16 := 6
    );
    Port(
        hs_clk_i : in STD_LOGIC; -- High Speed clock in
        rst_i : in STD_LOGIC;
        input_valid_i : in STD_LOGIC; -- Start State Machine
        val_i : in STD_LOGIC_VECTOR(N_BITS_PER_SAMP-1 downto 0); -- New Sample in
        
        output_valid_o : out STD_LOGIC;
        moving_ave_buffer_full_o : out STD_LOGIC;
        moving_average_o : out STD_LOGIC_VECTOR(N_BITS_PER_SAMP-1 downto 0)
    );
end moving_ave_sm_1;

architecture Behavioral of moving_ave_sm_1 is
    type t_moving_ave_state is (IDLE, AGC_MA_ACC_ADD_NEW_VAL, AGC_MA_ACC_SUB_LAST_VAL, AGC_MA_OUTPUT);
    signal state_s : t_moving_ave_state := IDLE;
    
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0'); -- Two bit shift reg for detecting rising edge of valid input
    
    -- AGC - Moving Average Signals
    type t_moving_average is array (0 to 2**N_MOVING_AVERAGE_LOG) of unsigned(N_BITS_PER_SAMP-1 downto 0);
    signal moving_ave_arr_s : t_moving_average := (others=>(others=>'0'));  -- Stores the last 2**N_MOVING_AVERAGE_LOG + 1 ADC values for finding the moving average
    
    signal moving_ave_acc_s : unsigned(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto 0) := (others => '0');  -- Moving average accumulator
    signal moving_ave_count_s : unsigned(15 downto 0) := (others => '0');
    
    signal moving_ave_buffer_full_s : std_logic := '0';
    --signal output_valid_s : std_logic := '0';

begin
    moving_ave_buffer_full_o <= moving_ave_buffer_full_s;
    --output_valid_o <= output_valid_s;

    moving_average_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & input_valid_i;
            
            if(rst_i = '1') then
                state_s <= IDLE;
                
                moving_ave_arr_s <= (others=>(others=>'0'));
                moving_ave_acc_s <= (others => '0');
                moving_ave_count_s <= (others => '0');
            else
                case state_s is 
                    when IDLE =>
                        output_valid_o <= '0';
                        if(input_valid_shift_detector_s = "01") then
                            state_s <= AGC_MA_ACC_ADD_NEW_VAL;
                            moving_ave_arr_s   <= unsigned(val_i) & moving_ave_arr_s(0 to moving_ave_arr_s'length-2);
                            
                            if(moving_ave_count_s >= 2**N_MOVING_AVERAGE_LOG) then
                                moving_ave_buffer_full_s <= '1';
                            else
                                moving_ave_buffer_full_s <= '0';
                                moving_ave_count_s <= moving_ave_count_s + 1;
                            end if;
                        end if;
                        
                    when AGC_MA_ACC_ADD_NEW_VAL =>
                        state_s <= AGC_MA_ACC_SUB_LAST_VAL;
                        moving_ave_acc_s <= moving_ave_acc_s + unsigned(val_i);
                        
                    when AGC_MA_ACC_SUB_LAST_VAL =>
                        state_s <= AGC_MA_OUTPUT;
                        moving_ave_acc_s <= moving_ave_acc_s - moving_ave_arr_s(moving_ave_arr_s'length-1); 
                        output_valid_o <= '1';
                    
                    when AGC_MA_OUTPUT =>
                        state_s <= IDLE;
                        output_valid_o <= '0';
                        moving_average_o <=  std_logic_vector(moving_ave_acc_s(N_BITS_PER_SAMP+N_MOVING_AVERAGE_LOG-1 downto N_MOVING_AVERAGE_LOG));
                end case;
            end if;
        end if;
    end process;

end Behavioral;
