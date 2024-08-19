// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 17 12:21:59 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_agc_cdr_sm_3_1_0/design_1_agc_cdr_sm_3_1_0_stub.v
// Design      : design_1_agc_cdr_sm_3_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "agc_cdr_sm_3,Vivado 2023.2" *)
module design_1_agc_cdr_sm_3_1_0(hs_clk_i, rst_i, adc_data_i, input_valid_i, 
  peak_detector_threshold_i, recovered_clk_o, recovered_data_bit_o, kp_i, ki_i, 
  initial_phase_offset_i, dds_phase_step_o, moving_ave_o)
/* synthesis syn_black_box black_box_pad_pin="rst_i,adc_data_i[11:0],input_valid_i,peak_detector_threshold_i[11:0],recovered_clk_o,recovered_data_bit_o,kp_i[31:0],ki_i[31:0],initial_phase_offset_i[15:0],dds_phase_step_o[15:0],moving_ave_o[11:0]" */
/* synthesis syn_force_seq_prim="hs_clk_i" */;
  input hs_clk_i /* synthesis syn_isclock = 1 */;
  input rst_i;
  input [11:0]adc_data_i;
  input input_valid_i;
  input [11:0]peak_detector_threshold_i;
  output recovered_clk_o;
  output recovered_data_bit_o;
  input [31:0]kp_i;
  input [31:0]ki_i;
  input [15:0]initial_phase_offset_i;
  output [15:0]dds_phase_step_o;
  output [11:0]moving_ave_o;
endmodule
