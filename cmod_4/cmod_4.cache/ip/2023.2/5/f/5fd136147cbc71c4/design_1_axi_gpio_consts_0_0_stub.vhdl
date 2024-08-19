-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 18 11:54:01 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_gpio_consts_0_0_stub.vhdl
-- Design      : design_1_axi_gpio_consts_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    zero_const : out STD_LOGIC;
    one_const : out STD_LOGIC;
    peak_detector_threshold_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    kp_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    initial_phase_offset_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "zero_const,one_const,peak_detector_threshold_o[11:0],kp_o[31:0],ki_o[31:0],initial_phase_offset_o[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_gpio_consts,Vivado 2023.2";
begin
end;
