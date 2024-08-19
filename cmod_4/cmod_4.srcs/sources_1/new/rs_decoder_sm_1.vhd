----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2024 12:29:26 PM
-- Design Name: 
-- Module Name: rs_decoder_sm_1 - Behavioral
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

entity rs_decoder_sm_1 is
    Generic(
        N : integer := 255;
        K : integer := 239;
        DEBUG_RS_SM_ILA : boolean := false;
        DEBUG_RS_OUTPUT_ILA : boolean := false
    );
    Port ( 
        hs_clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        data_bus_i : in STD_LOGIC_VECTOR ((8*N)-1 downto 0);
        start_decoder_i : in STD_LOGIC;
        decryption_done_o : out STD_LOGIC;
        data_bus_o : out STD_LOGIC_VECTOR((8*K)-1 downto 0)
    );
end rs_decoder_sm_1;

architecture Behavioral of rs_decoder_sm_1 is
    signal internal_rst_s : std_logic := '0';
    
    -- State Machine signals
    TYPE fsm_state is (IDLE, START_WRITING_INPUT, SHIFT_WRITING_INPUT, WAITING, READING_OUTPUT, MSG_DONE, MSG_OUTPUT, RESET);
    signal state_s : fsm_state := IDLE; 
    signal state_int_s : unsigned(3 downto 0) := (others => '1');
    
    signal writing_count_s : integer := 0;
    --signal reading_count_s : integer := 0;
    
    signal data_bus_i_buff_s : std_logic_vector((8*N)-1 downto 0) := (others => '0');
    --signal output_buff_s : std_logic_vector((8*K)-1 downto 0) := (others => '0');
    signal output_buff_s : std_logic_vector((8*(N+1))-1 downto 0) := (others => '0');
    signal output_data_s : std_logic_vector((8*K)-1 downto 0) := (others => '0');
    signal decryption_done_s : std_logic := '0';
    
    signal input_valid_shift_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    
    -- rs_decoder IO Signals
    signal rst_s : std_logic := '0';
    signal i_end_codeword_s : std_logic := '0';
    signal i_start_codeword_s : std_logic := '0';
    signal i_valid_s : std_logic := '0';
    signal i_symbol_s : std_logic_vector(7 downto 0); --:= (others => '0');
    signal o_in_ready_s : std_logic := '0';
    signal o_end_codeword_s : std_logic := '0';
    signal o_start_codeword_s : std_logic := '0';
    signal o_valid_s : std_logic := '0';
    signal o_error_s : std_logic := '0';
    signal o_symbol_s : std_logic_vector(7 downto 0) := (others => '0');
    
    -- converting std_logic_to std_logic_vector for ila
--    signal rst_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal i_end_codeword_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal i_start_codeword_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal i_valid_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal o_in_ready_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal o_end_codeword_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal o_start_codeword_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal o_valid_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal o_error_vec_s : std_logic_vector(0 downto 0) := (others => '0');
--    signal start_decoder_i_vec : std_logic_vector(0 downto 0) := (others => '0');
--    signal decryption_done_o_vec : std_logic_vector(0 downto 0) := (others => '0');
    
    COMPONENT rs_decoder_sm_1_ila
        PORT (
            clk : IN STD_LOGIC;
        
            probe0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe3 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
            probe5 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe7 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe8 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe9 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe10 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
            probe11 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe12 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            probe14 : IN STD_LOGIC_VECTOR(39 DOWNTO 0)
        );
    END COMPONENT;
begin

    rs_decoder_inst : entity work.rs_decoder
        generic map(
            N => N,
            K => K
        )
        port map(
            clk => hs_clk_i,
			rst => rst_s,
			i_end_codeword => i_end_codeword_s,
			i_start_codeword => i_start_codeword_s,
            i_valid => i_valid_s,
            i_consume => '1',
            --i_consume => '0',
			i_symbol => i_symbol_s,	
			o_in_ready => o_in_ready_s,
			o_end_codeword => o_end_codeword_s,
			o_start_codeword => o_start_codeword_s,
			o_valid => o_valid_s,
			o_error => o_error_s,
			o_symbol => o_symbol_s
        );
    i_symbol_s <= data_bus_i_buff_s(data_bus_i_buff_s'length-1 downto data_bus_i_buff_s'length-i_symbol_s'length);
        
    state_transition_proc : process(hs_clk_i)
    begin
        decryption_done_o <= decryption_done_s;
    
        if(rising_edge(hs_clk_i)) then
            input_valid_shift_detector_s <= input_valid_shift_detector_s(0) & start_decoder_i;
            rst_s <= rst_i or internal_rst_s;
            
            if(rst_i = '1') then 
                state_s <= RESET;
                state_int_s <= x"F";
                --writing_count_s <= 0;
            else
                case state_s is 
                    when RESET =>
                        --i_symbol_s <= (others => '0');
                        i_valid_s <= '0';
                        i_start_codeword_s <= '0';
                        i_end_codeword_s <= '0';
                        internal_rst_s <= '1';
                        writing_count_s <= 0;
                        decryption_done_s <= '0';
                        
                        if(rst_i = '0') then
                            state_s <= IDLE;
                            state_int_s <= x"0";
                            internal_rst_s <= '0';
                        end if;
                    when IDLE =>
                        data_bus_i_buff_s <= data_bus_i;
                        writing_count_s <= 0;
                        if(input_valid_shift_detector_s = "01") then
                            state_s <= START_WRITING_INPUT;
                            state_int_s <= x"1";
                        end if;
                    when START_WRITING_INPUT =>
                        state_s <= SHIFT_WRITING_INPUT;
                        state_int_s <= x"2";
                        i_start_codeword_s <= '1';
                        i_valid_s <= '1';
                        writing_count_s <= 0;
                        
                    when SHIFT_WRITING_INPUT =>
                        writing_count_s <= writing_count_s + 1;
                        if(writing_count_s >= N-2) then
                            state_s <= WAITING;
                            state_int_s <= x"3";
                            i_end_codeword_s <= '1';
                        elsif(input_valid_shift_detector_s = "01") then 
                            state_s <= RESET;
                            state_int_s <= x"F";
                        end if;
                        
                        i_start_codeword_s <= '0';
                        data_bus_i_buff_s(data_bus_i_buff_s'length-1 downto i_symbol_s'length) <= data_bus_i_buff_s(data_bus_i_buff_s'length-i_symbol_s'length-1 downto 0);
                        data_bus_i_buff_s(i_symbol_s'length-1 downto 0) <= (others => '0');
                        
                    when WAITING =>
                        if(o_start_codeword_s = '1') then
                            state_s <= READING_OUTPUT;
                            state_int_s <= x"4";
                        end if;
                        
                        i_end_codeword_s <= '0';
                        i_valid_s <= '0';
                        
                        output_buff_s(output_buff_s'length-1 downto o_symbol_s'length) <= output_buff_s(output_buff_s'length-o_symbol_s'length-1 downto 0);
                        output_buff_s(o_symbol_s'length-1 downto 0) <= o_symbol_s;
                        
                    when READING_OUTPUT =>
                        if(o_end_codeword_s = '1') then
                            state_s <= MSG_DONE;
                            state_int_s <= x"5";
                        elsif(input_valid_shift_detector_s = "01") then
                            state_s <= RESET;
                            state_int_s <= x"F";
                        end if;
                        
                        output_buff_s(output_buff_s'length-1 downto o_symbol_s'length) <= output_buff_s(output_buff_s'length-o_symbol_s'length-1 downto 0);
                        output_buff_s(o_symbol_s'length-1 downto 0) <= o_symbol_s;
                    when MSG_DONE =>
                        state_s <= MSG_OUTPUT;
                        state_int_s <= x"6";
                        output_data_s <= output_buff_s((8*N)-1 downto 8*(N-K));
                        decryption_done_s <= '0';
                        
                    when MSG_OUTPUT =>
                        state_s <= RESET;
                        state_int_s <= x"7";
                        data_bus_o <= output_data_s;
                        decryption_done_s <= '1';
                        --output_data_s <= output_buff_s((8*N)-1 downto 8*(N-K));
                    
                    when others =>
                        state_s <= RESET; 
                        state_int_s <= x"F";
                    
                end case;
            end if;
            
            -----------------------------------------------------------------------------------------------------------------------
            -- Always shift the decoded data into output buffer, which writes to data_bus_o when lined up.
            -----------------------------------------------------------------------------------------------------------------------
--            output_buff_s(output_buff_s'length-1 downto 8) <= output_buff_s(output_buff_s'length-9 downto 0);
--            output_buff_s(7 downto 0) <= o_symbol_s;

        end if;
    end process;
    
    -- ILA IP Declarations and Signals
    GENERATE_RS_DECODER_SM_1_ILA_STATEMENT: 
    if(DEBUG_RS_SM_ILA) generate
        rs_decoder_sm_1_ila_inst : rs_decoder_sm_1_ila
            PORT MAP (
                clk => hs_clk_i,
    
                probe0 => std_logic_vector(state_int_s), 
                probe1(0) => i_end_codeword_s,
                probe2(0) => i_start_codeword_s, 
                probe3(0) => i_valid_s,
                probe4 => i_symbol_s,
                probe5(0) => o_in_ready_s,
                probe6(0) => o_end_codeword_s,
                probe7(0) => o_start_codeword_s,
                probe8(0) => o_valid_s,
                probe9(0) => o_error_s,
                probe10 => o_symbol_s,
                probe11(0) => rst_s,
                probe12(0) => start_decoder_i,
                probe13 => data_bus_i(data_bus_i_buff_s'length-1 downto data_bus_i_buff_s'length-32),
                probe14 => output_data_s(output_data_s'length-1 downto output_data_s'length-40)
            );
    end generate;
end Behavioral;
