-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 12:21:59 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_agc_cdr_sm_3_1_0/design_1_agc_cdr_sm_3_1_0_stub.vhdl
-- Design      : design_1_agc_cdr_sm_3_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_agc_cdr_sm_3_1_0 is
  Port ( 
    hs_clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    adc_data_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    input_valid_i : in STD_LOGIC;
    peak_detector_threshold_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    recovered_clk_o : out STD_LOGIC;
    recovered_data_bit_o : out STD_LOGIC;
    kp_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    initial_phase_offset_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dds_phase_step_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    moving_ave_o : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end design_1_agc_cdr_sm_3_1_0;

architecture stub of design_1_agc_cdr_sm_3_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hs_clk_i,rst_i,adc_data_i[11:0],input_valid_i,peak_detector_threshold_i[11:0],recovered_clk_o,recovered_data_bit_o,kp_i[31:0],ki_i[31:0],initial_phase_offset_i[15:0],dds_phase_step_o[15:0],moving_ave_o[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "agc_cdr_sm_3,Vivado 2023.2";
begin
end;
