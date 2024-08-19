----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/14/2024 07:31:09 PM
-- Design Name: 
-- Module Name: manchester_rs_composite_1 - Behavioral
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

entity manchester_rs_composite_1 is
    Generic(
        N : integer := 255;
        K : integer := 239;
        GENERATE_MANCHESTER_RS_COMPOSITE_ILA : boolean := false;
        GENERATE_RS_SM_ILA : boolean := true
    );
    Port( 
        hs_clk_i : in STD_LOGIC;
        rst_i : in STD_LOGIC;
        rst_rs_decoder_i : in STD_LOGIC;
        recovered_clk_i : in STD_LOGIC;
        recovered_data_bit_i : in STD_LOGIC;
        target_detected_o : out STD_LOGIC;
        --data_o : out STD_LOGIC_VECTOR ((8*K)-1 downto 0)
        data_o : out STD_LOGIC_VECTOR ((8*(K-11))-1 downto 0)
    );
end manchester_rs_composite_1;

architecture Behavioral of manchester_rs_composite_1 is
     constant TARGET_DATA_C : std_logic_vector((8*11)-1 downto 0) := x"F0700C3DE890F0C7B8B2F7";

    TYPE fsm_state is (IDLE, DECRYPTION_DONE, COMPARING_TARGET_VALS, OUTPUT);
    signal state_s : fsm_state := IDLE; 
    signal state_int_s : unsigned(7 downto 0) := (others => '0');

    signal decoded_manchester_s : std_logic_vector((N*8)-1 downto 0) := (others => '0');
    signal rs_bus_output_s : std_logic_vector((K*8)-1 downto 0) := (others => '0');
    signal decryption_done_s : std_logic := '0';
    signal decryption_done_edge_detector_s : std_logic_vector(1 downto 0) := (others => '0');
    signal rs_bus_output_target_bytes_s : std_logic_vector((8*11)-1 downto 0) := (others => '0');
    signal target_detected_s : std_logic := '0';
    signal data_s : std_logic_vector((8*(K-11))-1 downto 0) := (others => '0');
    
    COMPONENT manchester_rs_composite_ila
        PORT (
            clk : IN STD_LOGIC;

            probe0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
            probe1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe2 : IN STD_LOGIC_VECTOR(0 DOWNTO 0); 
            probe3 : IN STD_LOGIC_VECTOR(23 DOWNTO 0); 
            probe4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            probe5 : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            probe6 : IN STD_LOGIC_VECTOR(39 downto 0)
        );
    END COMPONENT;

begin
    target_detected_o <= target_detected_s;
    data_o <= data_s;

    uart_manchester_decoder_inst : entity work.uart_manchester_decoder_1
        generic map(
            N => N,
            K => K,
            DEBUG_ILA => false
        )
        port map(
            hs_clk_i => hs_clk_i,
            rst_i => rst_i,
            recovered_clk_i => recovered_clk_i,
            recovered_data_bit_i => recovered_data_bit_i,
            data_bus_o => decoded_manchester_s,
            target_detected_o => open
        );

    rs_decoder_sm_inst : entity work.rs_decoder_sm_1
        generic map(
            N => N,
            K => K,
            DEBUG_RS_SM_ILA => GENERATE_RS_SM_ILA
        )
        port map(
            hs_clk_i => hs_clk_i,
            rst_i => rst_rs_decoder_i,
            data_bus_i => decoded_manchester_s,
            start_decoder_i => recovered_clk_i,
            decryption_done_o => decryption_done_s,
            data_bus_o => rs_bus_output_s
        );
        
    target_detector_proc : process(hs_clk_i)
    begin
        if(rising_edge(hs_clk_i)) then
            decryption_done_edge_detector_s <= decryption_done_edge_detector_s(0) & decryption_done_s;
            
            case state_s is 
                when IDLE =>
                    state_int_s <= x"00";
                    if(decryption_done_edge_detector_s = "01") then
                        state_s <= DECRYPTION_DONE;
                    end if;
                    
                    target_detected_s <= '0';
                    
                when DECRYPTION_DONE =>
                    state_s <= COMPARING_TARGET_VALS;
                    state_int_s <= x"01";
                    rs_bus_output_target_bytes_s <= rs_bus_output_s(1895 downto 1888) &
                                                        rs_bus_output_s(1839 downto 1832) &
                                                        rs_bus_output_s(1815 downto 1808) &
                                                        rs_bus_output_s(1711 downto 1704) &
                                                        rs_bus_output_s(1575 downto 1568) &
                                                        rs_bus_output_s(1383 downto 1376) &
                                                        rs_bus_output_s(1319 downto 1312) &
                                                        rs_bus_output_s(1287 downto 1280) &
                                                        rs_bus_output_s(1247 downto 1240) &
                                                        rs_bus_output_s(1151 downto 1144) &
                                                        rs_bus_output_s(959 downto 952);
                
                when COMPARING_TARGET_VALS =>
                    state_int_s <= x"02";
                    if(rs_bus_output_target_bytes_s = TARGET_DATA_C) then
                        state_s <= OUTPUT;
                    else
                        state_s <= IDLE;
                    end if;
                    
                when OUTPUT =>
                    state_int_s <= x"03";
                    state_s <= IDLE;
                    
                    target_detected_s <= '1';
                    --data_o <= rs_bus_output_s;
                    data_s <= rs_bus_output_s(rs_bus_output_s'length-1 downto 1896) &
                              rs_bus_output_s(1887 downto 1840) &
                              rs_bus_output_s(1831 downto 1816) &
                              rs_bus_output_s(1807 downto 1712) &
                              rs_bus_output_s(1703 downto 1576) &
                              rs_bus_output_s(1567 downto 1384) &
                              rs_bus_output_s(1375 downto 1320) &
                              rs_bus_output_s(1311 downto 1288) &
                              rs_bus_output_s(1279 downto 1248) &
                              rs_bus_output_s(1239 downto 1152) &
                              rs_bus_output_s(1143 downto 960)  &
                              rs_bus_output_s(951 downto 0);
                    
                when others => 
                    state_s <= IDLE;
            end case;
        end if;
    end process;
    
    -- ILA IP Declarations and Signals
    GENERATE_MANCHESTER_RS_COMPOSITE_3_ILA_STATEMENT: 
    if(GENERATE_MANCHESTER_RS_COMPOSITE_ILA) generate
        manchester_rs_composite_ila_inst : manchester_rs_composite_ila
            PORT MAP (
                clk => hs_clk_i,
    
                probe0 => std_logic_vector(state_int_s), 
                probe1(0) => recovered_clk_i,
                probe2(0) => recovered_data_bit_i, 
                probe3 => decoded_manchester_s(decoded_manchester_s'length-1 downto decoded_manchester_s'length-24),
                probe4(0) => decryption_done_s,
                probe5 => rs_bus_output_target_bytes_s(rs_bus_output_target_bytes_s'length-1 downto rs_bus_output_target_bytes_s'length-24),
                probe6 => data_s(data_s'length-1 downto data_s'length-40)
            );
    end generate;
end Behavioral;
