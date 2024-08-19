// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 18 11:54:01 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_consts_0_0/design_1_axi_gpio_consts_0_0_sim_netlist.v
// Design      : design_1_axi_gpio_consts_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_gpio_consts_0_0,axi_gpio_consts,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axi_gpio_consts,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module design_1_axi_gpio_consts_0_0
   (zero_const,
    one_const,
    peak_detector_threshold_o,
    kp_o,
    ki_o,
    initial_phase_offset_o);
  output zero_const;
  output one_const;
  output [11:0]peak_detector_threshold_o;
  output [31:0]kp_o;
  output [31:0]ki_o;
  output [15:0]initial_phase_offset_o;

  wire \<const0> ;
  wire \<const1> ;

  assign initial_phase_offset_o[15] = \<const0> ;
  assign initial_phase_offset_o[14] = \<const0> ;
  assign initial_phase_offset_o[13] = \<const0> ;
  assign initial_phase_offset_o[12] = \<const0> ;
  assign initial_phase_offset_o[11] = \<const0> ;
  assign initial_phase_offset_o[10] = \<const1> ;
  assign initial_phase_offset_o[9] = \<const1> ;
  assign initial_phase_offset_o[8] = \<const1> ;
  assign initial_phase_offset_o[7] = \<const0> ;
  assign initial_phase_offset_o[6] = \<const1> ;
  assign initial_phase_offset_o[5] = \<const0> ;
  assign initial_phase_offset_o[4] = \<const0> ;
  assign initial_phase_offset_o[3] = \<const1> ;
  assign initial_phase_offset_o[2] = \<const1> ;
  assign initial_phase_offset_o[1] = \<const1> ;
  assign initial_phase_offset_o[0] = \<const0> ;
  assign ki_o[31] = \<const0> ;
  assign ki_o[30] = \<const0> ;
  assign ki_o[29] = \<const0> ;
  assign ki_o[28] = \<const0> ;
  assign ki_o[27] = \<const0> ;
  assign ki_o[26] = \<const0> ;
  assign ki_o[25] = \<const0> ;
  assign ki_o[24] = \<const0> ;
  assign ki_o[23] = \<const1> ;
  assign ki_o[22] = \<const1> ;
  assign ki_o[21] = \<const1> ;
  assign ki_o[20] = \<const1> ;
  assign ki_o[19] = \<const1> ;
  assign ki_o[18] = \<const1> ;
  assign ki_o[17] = \<const1> ;
  assign ki_o[16] = \<const1> ;
  assign ki_o[15] = \<const0> ;
  assign ki_o[14] = \<const0> ;
  assign ki_o[13] = \<const0> ;
  assign ki_o[12] = \<const0> ;
  assign ki_o[11] = \<const0> ;
  assign ki_o[10] = \<const0> ;
  assign ki_o[9] = \<const0> ;
  assign ki_o[8] = \<const0> ;
  assign ki_o[7] = \<const0> ;
  assign ki_o[6] = \<const0> ;
  assign ki_o[5] = \<const0> ;
  assign ki_o[4] = \<const0> ;
  assign ki_o[3] = \<const0> ;
  assign ki_o[2] = \<const0> ;
  assign ki_o[1] = \<const0> ;
  assign ki_o[0] = \<const0> ;
  assign kp_o[31] = \<const0> ;
  assign kp_o[30] = \<const0> ;
  assign kp_o[29] = \<const0> ;
  assign kp_o[28] = \<const0> ;
  assign kp_o[27] = \<const0> ;
  assign kp_o[26] = \<const0> ;
  assign kp_o[25] = \<const0> ;
  assign kp_o[24] = \<const0> ;
  assign kp_o[23] = \<const1> ;
  assign kp_o[22] = \<const1> ;
  assign kp_o[21] = \<const1> ;
  assign kp_o[20] = \<const1> ;
  assign kp_o[19] = \<const1> ;
  assign kp_o[18] = \<const1> ;
  assign kp_o[17] = \<const1> ;
  assign kp_o[16] = \<const1> ;
  assign kp_o[15] = \<const0> ;
  assign kp_o[14] = \<const0> ;
  assign kp_o[13] = \<const0> ;
  assign kp_o[12] = \<const0> ;
  assign kp_o[11] = \<const0> ;
  assign kp_o[10] = \<const0> ;
  assign kp_o[9] = \<const0> ;
  assign kp_o[8] = \<const0> ;
  assign kp_o[7] = \<const0> ;
  assign kp_o[6] = \<const0> ;
  assign kp_o[5] = \<const0> ;
  assign kp_o[4] = \<const0> ;
  assign kp_o[3] = \<const0> ;
  assign kp_o[2] = \<const0> ;
  assign kp_o[1] = \<const0> ;
  assign kp_o[0] = \<const0> ;
  assign one_const = \<const1> ;
  assign peak_detector_threshold_o[11] = \<const0> ;
  assign peak_detector_threshold_o[10] = \<const0> ;
  assign peak_detector_threshold_o[9] = \<const0> ;
  assign peak_detector_threshold_o[8] = \<const0> ;
  assign peak_detector_threshold_o[7] = \<const0> ;
  assign peak_detector_threshold_o[6] = \<const0> ;
  assign peak_detector_threshold_o[5] = \<const0> ;
  assign peak_detector_threshold_o[4] = \<const0> ;
  assign peak_detector_threshold_o[3] = \<const0> ;
  assign peak_detector_threshold_o[2] = \<const0> ;
  assign peak_detector_threshold_o[1] = \<const1> ;
  assign peak_detector_threshold_o[0] = \<const0> ;
  assign zero_const = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
