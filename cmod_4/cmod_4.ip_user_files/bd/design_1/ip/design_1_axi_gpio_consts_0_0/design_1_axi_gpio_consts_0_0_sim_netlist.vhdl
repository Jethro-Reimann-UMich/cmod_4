-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 18 11:54:01 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_consts_0_0/design_1_axi_gpio_consts_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_gpio_consts_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi_gpio_consts_0_0 is
  port (
    zero_const : out STD_LOGIC;
    one_const : out STD_LOGIC;
    peak_detector_threshold_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    kp_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    initial_phase_offset_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi_gpio_consts_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi_gpio_consts_0_0 : entity is "design_1_axi_gpio_consts_0_0,axi_gpio_consts,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axi_gpio_consts_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_axi_gpio_consts_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axi_gpio_consts_0_0 : entity is "axi_gpio_consts,Vivado 2023.2";
end design_1_axi_gpio_consts_0_0;

architecture STRUCTURE of design_1_axi_gpio_consts_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  initial_phase_offset_o(15) <= \<const0>\;
  initial_phase_offset_o(14) <= \<const0>\;
  initial_phase_offset_o(13) <= \<const0>\;
  initial_phase_offset_o(12) <= \<const0>\;
  initial_phase_offset_o(11) <= \<const0>\;
  initial_phase_offset_o(10) <= \<const1>\;
  initial_phase_offset_o(9) <= \<const1>\;
  initial_phase_offset_o(8) <= \<const1>\;
  initial_phase_offset_o(7) <= \<const0>\;
  initial_phase_offset_o(6) <= \<const1>\;
  initial_phase_offset_o(5) <= \<const0>\;
  initial_phase_offset_o(4) <= \<const0>\;
  initial_phase_offset_o(3) <= \<const1>\;
  initial_phase_offset_o(2) <= \<const1>\;
  initial_phase_offset_o(1) <= \<const1>\;
  initial_phase_offset_o(0) <= \<const0>\;
  ki_o(31) <= \<const0>\;
  ki_o(30) <= \<const0>\;
  ki_o(29) <= \<const0>\;
  ki_o(28) <= \<const0>\;
  ki_o(27) <= \<const0>\;
  ki_o(26) <= \<const0>\;
  ki_o(25) <= \<const0>\;
  ki_o(24) <= \<const0>\;
  ki_o(23) <= \<const1>\;
  ki_o(22) <= \<const1>\;
  ki_o(21) <= \<const1>\;
  ki_o(20) <= \<const1>\;
  ki_o(19) <= \<const1>\;
  ki_o(18) <= \<const1>\;
  ki_o(17) <= \<const1>\;
  ki_o(16) <= \<const1>\;
  ki_o(15) <= \<const0>\;
  ki_o(14) <= \<const0>\;
  ki_o(13) <= \<const0>\;
  ki_o(12) <= \<const0>\;
  ki_o(11) <= \<const0>\;
  ki_o(10) <= \<const0>\;
  ki_o(9) <= \<const0>\;
  ki_o(8) <= \<const0>\;
  ki_o(7) <= \<const0>\;
  ki_o(6) <= \<const0>\;
  ki_o(5) <= \<const0>\;
  ki_o(4) <= \<const0>\;
  ki_o(3) <= \<const0>\;
  ki_o(2) <= \<const0>\;
  ki_o(1) <= \<const0>\;
  ki_o(0) <= \<const0>\;
  kp_o(31) <= \<const0>\;
  kp_o(30) <= \<const0>\;
  kp_o(29) <= \<const0>\;
  kp_o(28) <= \<const0>\;
  kp_o(27) <= \<const0>\;
  kp_o(26) <= \<const0>\;
  kp_o(25) <= \<const0>\;
  kp_o(24) <= \<const0>\;
  kp_o(23) <= \<const1>\;
  kp_o(22) <= \<const1>\;
  kp_o(21) <= \<const1>\;
  kp_o(20) <= \<const1>\;
  kp_o(19) <= \<const1>\;
  kp_o(18) <= \<const1>\;
  kp_o(17) <= \<const1>\;
  kp_o(16) <= \<const1>\;
  kp_o(15) <= \<const0>\;
  kp_o(14) <= \<const0>\;
  kp_o(13) <= \<const0>\;
  kp_o(12) <= \<const0>\;
  kp_o(11) <= \<const0>\;
  kp_o(10) <= \<const0>\;
  kp_o(9) <= \<const0>\;
  kp_o(8) <= \<const0>\;
  kp_o(7) <= \<const0>\;
  kp_o(6) <= \<const0>\;
  kp_o(5) <= \<const0>\;
  kp_o(4) <= \<const0>\;
  kp_o(3) <= \<const0>\;
  kp_o(2) <= \<const0>\;
  kp_o(1) <= \<const0>\;
  kp_o(0) <= \<const0>\;
  one_const <= \<const1>\;
  peak_detector_threshold_o(11) <= \<const0>\;
  peak_detector_threshold_o(10) <= \<const0>\;
  peak_detector_threshold_o(9) <= \<const0>\;
  peak_detector_threshold_o(8) <= \<const0>\;
  peak_detector_threshold_o(7) <= \<const0>\;
  peak_detector_threshold_o(6) <= \<const0>\;
  peak_detector_threshold_o(5) <= \<const0>\;
  peak_detector_threshold_o(4) <= \<const0>\;
  peak_detector_threshold_o(3) <= \<const0>\;
  peak_detector_threshold_o(2) <= \<const0>\;
  peak_detector_threshold_o(1) <= \<const1>\;
  peak_detector_threshold_o(0) <= \<const0>\;
  zero_const <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
