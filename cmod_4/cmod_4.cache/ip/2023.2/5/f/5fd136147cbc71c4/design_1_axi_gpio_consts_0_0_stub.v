// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 18 11:54:01 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_gpio_consts_0_0_stub.v
// Design      : design_1_axi_gpio_consts_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_gpio_consts,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(zero_const, one_const, 
  peak_detector_threshold_o, kp_o, ki_o, initial_phase_offset_o)
/* synthesis syn_black_box black_box_pad_pin="zero_const,one_const,peak_detector_threshold_o[11:0],kp_o[31:0],ki_o[31:0],initial_phase_offset_o[15:0]" */;
  output zero_const;
  output one_const;
  output [11:0]peak_detector_threshold_o;
  output [31:0]kp_o;
  output [31:0]ki_o;
  output [15:0]initial_phase_offset_o;
endmodule
