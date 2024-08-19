// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 25 15:05:51 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_manchester_rs_compos_0_0/design_1_manchester_rs_compos_0_0_stub.v
// Design      : design_1_manchester_rs_compos_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "manchester_rs_composite_1,Vivado 2023.2" *)
module design_1_manchester_rs_compos_0_0(hs_clk_i, rst_i, rst_rs_decoder_i, 
  recovered_clk_i, recovered_data_bit_i, target_detected_o, data_o)
/* synthesis syn_black_box black_box_pad_pin="rst_i,rst_rs_decoder_i,recovered_clk_i,recovered_data_bit_i,target_detected_o,data_o[1823:0]" */
/* synthesis syn_force_seq_prim="hs_clk_i" */;
  input hs_clk_i /* synthesis syn_isclock = 1 */;
  input rst_i;
  input rst_rs_decoder_i;
  input recovered_clk_i;
  input recovered_data_bit_i;
  output target_detected_o;
  output [1823:0]data_o;
endmodule
