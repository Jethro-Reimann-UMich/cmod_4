-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 13:01:20 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_mux_select_1_0_0/design_1_mux_select_1_0_0_stub.vhdl
-- Design      : design_1_mux_select_1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mux_select_1_0_0 is
  Port ( 
    clk_i : in STD_LOGIC;
    moving_ave_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_a_o : out STD_LOGIC;
    mux_b_o : out STD_LOGIC;
    mux_c_o : out STD_LOGIC
  );

end design_1_mux_select_1_0_0;

architecture stub of design_1_mux_select_1_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i,moving_ave_i[11:0],mux_a_o,mux_b_o,mux_c_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mux_select_1,Vivado 2023.2";
begin
end;
