// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 18 16:54:05 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_msg_detected_led_1_0_0_sim_netlist.v
// Design      : design_1_msg_detected_led_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_msg_detected_led_1_0_0,msg_detected_led_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "msg_detected_led_1,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_i,
    target_detected_i,
    led_o);
  input clk_i;
  input target_detected_i;
  output led_o;

  wire clk_i;
  wire led_o;
  wire target_detected_i;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_msg_detected_led_1 U0
       (.clk_i(clk_i),
        .led_o(led_o),
        .target_detected_i(target_detected_i));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_msg_detected_led_1
   (led_o,
    clk_i,
    target_detected_i);
  output led_o;
  input clk_i;
  input target_detected_i;

  wire clk_i;
  wire count_s2_carry__0_i_1_n_0;
  wire count_s2_carry__0_i_2_n_0;
  wire count_s2_carry__0_i_3_n_0;
  wire count_s2_carry__0_i_4_n_0;
  wire count_s2_carry__0_i_5_n_0;
  wire count_s2_carry__0_i_6_n_0;
  wire count_s2_carry__0_n_0;
  wire count_s2_carry__0_n_1;
  wire count_s2_carry__0_n_2;
  wire count_s2_carry__0_n_3;
  wire count_s2_carry__1_i_1_n_0;
  wire count_s2_carry__1_i_2_n_0;
  wire count_s2_carry__1_i_3_n_0;
  wire count_s2_carry__1_i_4_n_0;
  wire count_s2_carry__1_i_5_n_0;
  wire count_s2_carry__1_i_6_n_0;
  wire count_s2_carry__1_i_7_n_0;
  wire count_s2_carry__1_n_0;
  wire count_s2_carry__1_n_1;
  wire count_s2_carry__1_n_2;
  wire count_s2_carry__1_n_3;
  wire count_s2_carry__2_i_1_n_0;
  wire count_s2_carry__2_i_2_n_0;
  wire count_s2_carry__2_i_3_n_0;
  wire count_s2_carry__2_i_4_n_0;
  wire count_s2_carry__2_n_0;
  wire count_s2_carry__2_n_1;
  wire count_s2_carry__2_n_2;
  wire count_s2_carry__2_n_3;
  wire count_s2_carry_i_1_n_0;
  wire count_s2_carry_i_2_n_0;
  wire count_s2_carry_i_3_n_0;
  wire count_s2_carry_i_4_n_0;
  wire count_s2_carry_i_5_n_0;
  wire count_s2_carry_i_6_n_0;
  wire count_s2_carry_i_7_n_0;
  wire count_s2_carry_n_0;
  wire count_s2_carry_n_1;
  wire count_s2_carry_n_2;
  wire count_s2_carry_n_3;
  wire \count_s[0]_i_1_n_0 ;
  wire \count_s[0]_i_2_n_0 ;
  wire \count_s[0]_i_4_n_0 ;
  wire [31:0]count_s_reg;
  wire \count_s_reg[0]_i_3_n_0 ;
  wire \count_s_reg[0]_i_3_n_1 ;
  wire \count_s_reg[0]_i_3_n_2 ;
  wire \count_s_reg[0]_i_3_n_3 ;
  wire \count_s_reg[0]_i_3_n_4 ;
  wire \count_s_reg[0]_i_3_n_5 ;
  wire \count_s_reg[0]_i_3_n_6 ;
  wire \count_s_reg[0]_i_3_n_7 ;
  wire \count_s_reg[12]_i_1_n_0 ;
  wire \count_s_reg[12]_i_1_n_1 ;
  wire \count_s_reg[12]_i_1_n_2 ;
  wire \count_s_reg[12]_i_1_n_3 ;
  wire \count_s_reg[12]_i_1_n_4 ;
  wire \count_s_reg[12]_i_1_n_5 ;
  wire \count_s_reg[12]_i_1_n_6 ;
  wire \count_s_reg[12]_i_1_n_7 ;
  wire \count_s_reg[16]_i_1_n_0 ;
  wire \count_s_reg[16]_i_1_n_1 ;
  wire \count_s_reg[16]_i_1_n_2 ;
  wire \count_s_reg[16]_i_1_n_3 ;
  wire \count_s_reg[16]_i_1_n_4 ;
  wire \count_s_reg[16]_i_1_n_5 ;
  wire \count_s_reg[16]_i_1_n_6 ;
  wire \count_s_reg[16]_i_1_n_7 ;
  wire \count_s_reg[20]_i_1_n_0 ;
  wire \count_s_reg[20]_i_1_n_1 ;
  wire \count_s_reg[20]_i_1_n_2 ;
  wire \count_s_reg[20]_i_1_n_3 ;
  wire \count_s_reg[20]_i_1_n_4 ;
  wire \count_s_reg[20]_i_1_n_5 ;
  wire \count_s_reg[20]_i_1_n_6 ;
  wire \count_s_reg[20]_i_1_n_7 ;
  wire \count_s_reg[24]_i_1_n_0 ;
  wire \count_s_reg[24]_i_1_n_1 ;
  wire \count_s_reg[24]_i_1_n_2 ;
  wire \count_s_reg[24]_i_1_n_3 ;
  wire \count_s_reg[24]_i_1_n_4 ;
  wire \count_s_reg[24]_i_1_n_5 ;
  wire \count_s_reg[24]_i_1_n_6 ;
  wire \count_s_reg[24]_i_1_n_7 ;
  wire \count_s_reg[28]_i_1_n_1 ;
  wire \count_s_reg[28]_i_1_n_2 ;
  wire \count_s_reg[28]_i_1_n_3 ;
  wire \count_s_reg[28]_i_1_n_4 ;
  wire \count_s_reg[28]_i_1_n_5 ;
  wire \count_s_reg[28]_i_1_n_6 ;
  wire \count_s_reg[28]_i_1_n_7 ;
  wire \count_s_reg[4]_i_1_n_0 ;
  wire \count_s_reg[4]_i_1_n_1 ;
  wire \count_s_reg[4]_i_1_n_2 ;
  wire \count_s_reg[4]_i_1_n_3 ;
  wire \count_s_reg[4]_i_1_n_4 ;
  wire \count_s_reg[4]_i_1_n_5 ;
  wire \count_s_reg[4]_i_1_n_6 ;
  wire \count_s_reg[4]_i_1_n_7 ;
  wire \count_s_reg[8]_i_1_n_0 ;
  wire \count_s_reg[8]_i_1_n_1 ;
  wire \count_s_reg[8]_i_1_n_2 ;
  wire \count_s_reg[8]_i_1_n_3 ;
  wire \count_s_reg[8]_i_1_n_4 ;
  wire \count_s_reg[8]_i_1_n_5 ;
  wire \count_s_reg[8]_i_1_n_6 ;
  wire \count_s_reg[8]_i_1_n_7 ;
  wire led_o;
  wire led_s_i_1_n_0;
  wire [1:0]msg_detected_shift_detector_s;
  wire target_detected_i;
  wire [3:0]NLW_count_s2_carry_O_UNCONNECTED;
  wire [3:0]NLW_count_s2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_count_s2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_count_s2_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_count_s_reg[28]_i_1_CO_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_s2_carry
       (.CI(1'b0),
        .CO({count_s2_carry_n_0,count_s2_carry_n_1,count_s2_carry_n_2,count_s2_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,count_s2_carry_i_1_n_0,count_s2_carry_i_2_n_0,count_s2_carry_i_3_n_0}),
        .O(NLW_count_s2_carry_O_UNCONNECTED[3:0]),
        .S({count_s2_carry_i_4_n_0,count_s2_carry_i_5_n_0,count_s2_carry_i_6_n_0,count_s2_carry_i_7_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_s2_carry__0
       (.CI(count_s2_carry_n_0),
        .CO({count_s2_carry__0_n_0,count_s2_carry__0_n_1,count_s2_carry__0_n_2,count_s2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({count_s2_carry__0_i_1_n_0,1'b0,count_s2_carry__0_i_2_n_0,1'b0}),
        .O(NLW_count_s2_carry__0_O_UNCONNECTED[3:0]),
        .S({count_s2_carry__0_i_3_n_0,count_s2_carry__0_i_4_n_0,count_s2_carry__0_i_5_n_0,count_s2_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry__0_i_1
       (.I0(count_s_reg[14]),
        .I1(count_s_reg[15]),
        .O(count_s2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry__0_i_2
       (.I0(count_s_reg[10]),
        .I1(count_s_reg[11]),
        .O(count_s2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry__0_i_3
       (.I0(count_s_reg[14]),
        .I1(count_s_reg[15]),
        .O(count_s2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__0_i_4
       (.I0(count_s_reg[12]),
        .I1(count_s_reg[13]),
        .O(count_s2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry__0_i_5
       (.I0(count_s_reg[10]),
        .I1(count_s_reg[11]),
        .O(count_s2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__0_i_6
       (.I0(count_s_reg[8]),
        .I1(count_s_reg[9]),
        .O(count_s2_carry__0_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_s2_carry__1
       (.CI(count_s2_carry__0_n_0),
        .CO({count_s2_carry__1_n_0,count_s2_carry__1_n_1,count_s2_carry__1_n_2,count_s2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({count_s2_carry__1_i_1_n_0,count_s2_carry__1_i_2_n_0,1'b0,count_s2_carry__1_i_3_n_0}),
        .O(NLW_count_s2_carry__1_O_UNCONNECTED[3:0]),
        .S({count_s2_carry__1_i_4_n_0,count_s2_carry__1_i_5_n_0,count_s2_carry__1_i_6_n_0,count_s2_carry__1_i_7_n_0}));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry__1_i_1
       (.I0(count_s_reg[22]),
        .I1(count_s_reg[23]),
        .O(count_s2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry__1_i_2
       (.I0(count_s_reg[20]),
        .I1(count_s_reg[21]),
        .O(count_s2_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    count_s2_carry__1_i_3
       (.I0(count_s_reg[17]),
        .O(count_s2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry__1_i_4
       (.I0(count_s_reg[22]),
        .I1(count_s_reg[23]),
        .O(count_s2_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry__1_i_5
       (.I0(count_s_reg[20]),
        .I1(count_s_reg[21]),
        .O(count_s2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__1_i_6
       (.I0(count_s_reg[18]),
        .I1(count_s_reg[19]),
        .O(count_s2_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    count_s2_carry__1_i_7
       (.I0(count_s_reg[17]),
        .I1(count_s_reg[16]),
        .O(count_s2_carry__1_i_7_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 count_s2_carry__2
       (.CI(count_s2_carry__1_n_0),
        .CO({count_s2_carry__2_n_0,count_s2_carry__2_n_1,count_s2_carry__2_n_2,count_s2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({count_s_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_count_s2_carry__2_O_UNCONNECTED[3:0]),
        .S({count_s2_carry__2_i_1_n_0,count_s2_carry__2_i_2_n_0,count_s2_carry__2_i_3_n_0,count_s2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__2_i_1
       (.I0(count_s_reg[30]),
        .I1(count_s_reg[31]),
        .O(count_s2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__2_i_2
       (.I0(count_s_reg[28]),
        .I1(count_s_reg[29]),
        .O(count_s2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__2_i_3
       (.I0(count_s_reg[26]),
        .I1(count_s_reg[27]),
        .O(count_s2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry__2_i_4
       (.I0(count_s_reg[24]),
        .I1(count_s_reg[25]),
        .O(count_s2_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry_i_1
       (.I0(count_s_reg[4]),
        .I1(count_s_reg[5]),
        .O(count_s2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry_i_2
       (.I0(count_s_reg[2]),
        .I1(count_s_reg[3]),
        .O(count_s2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    count_s2_carry_i_3
       (.I0(count_s_reg[0]),
        .I1(count_s_reg[1]),
        .O(count_s2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    count_s2_carry_i_4
       (.I0(count_s_reg[6]),
        .I1(count_s_reg[7]),
        .O(count_s2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry_i_5
       (.I0(count_s_reg[4]),
        .I1(count_s_reg[5]),
        .O(count_s2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry_i_6
       (.I0(count_s_reg[2]),
        .I1(count_s_reg[3]),
        .O(count_s2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    count_s2_carry_i_7
       (.I0(count_s_reg[0]),
        .I1(count_s_reg[1]),
        .O(count_s2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \count_s[0]_i_1 
       (.I0(msg_detected_shift_detector_s[0]),
        .I1(msg_detected_shift_detector_s[1]),
        .O(\count_s[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_s[0]_i_2 
       (.I0(count_s2_carry__2_n_0),
        .I1(count_s_reg[31]),
        .O(\count_s[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_s[0]_i_4 
       (.I0(count_s_reg[0]),
        .O(\count_s[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[0] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[0]_i_3_n_7 ),
        .Q(count_s_reg[0]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\count_s_reg[0]_i_3_n_0 ,\count_s_reg[0]_i_3_n_1 ,\count_s_reg[0]_i_3_n_2 ,\count_s_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_s_reg[0]_i_3_n_4 ,\count_s_reg[0]_i_3_n_5 ,\count_s_reg[0]_i_3_n_6 ,\count_s_reg[0]_i_3_n_7 }),
        .S({count_s_reg[3:1],\count_s[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[10] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[8]_i_1_n_5 ),
        .Q(count_s_reg[10]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[11] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[8]_i_1_n_4 ),
        .Q(count_s_reg[11]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[12] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[12]_i_1_n_7 ),
        .Q(count_s_reg[12]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[12]_i_1 
       (.CI(\count_s_reg[8]_i_1_n_0 ),
        .CO({\count_s_reg[12]_i_1_n_0 ,\count_s_reg[12]_i_1_n_1 ,\count_s_reg[12]_i_1_n_2 ,\count_s_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[12]_i_1_n_4 ,\count_s_reg[12]_i_1_n_5 ,\count_s_reg[12]_i_1_n_6 ,\count_s_reg[12]_i_1_n_7 }),
        .S(count_s_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[13] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[12]_i_1_n_6 ),
        .Q(count_s_reg[13]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[14] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[12]_i_1_n_5 ),
        .Q(count_s_reg[14]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[15] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[12]_i_1_n_4 ),
        .Q(count_s_reg[15]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[16] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[16]_i_1_n_7 ),
        .Q(count_s_reg[16]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[16]_i_1 
       (.CI(\count_s_reg[12]_i_1_n_0 ),
        .CO({\count_s_reg[16]_i_1_n_0 ,\count_s_reg[16]_i_1_n_1 ,\count_s_reg[16]_i_1_n_2 ,\count_s_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[16]_i_1_n_4 ,\count_s_reg[16]_i_1_n_5 ,\count_s_reg[16]_i_1_n_6 ,\count_s_reg[16]_i_1_n_7 }),
        .S(count_s_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[17] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[16]_i_1_n_6 ),
        .Q(count_s_reg[17]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[18] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[16]_i_1_n_5 ),
        .Q(count_s_reg[18]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[19] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[16]_i_1_n_4 ),
        .Q(count_s_reg[19]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[1] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[0]_i_3_n_6 ),
        .Q(count_s_reg[1]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[20] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[20]_i_1_n_7 ),
        .Q(count_s_reg[20]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[20]_i_1 
       (.CI(\count_s_reg[16]_i_1_n_0 ),
        .CO({\count_s_reg[20]_i_1_n_0 ,\count_s_reg[20]_i_1_n_1 ,\count_s_reg[20]_i_1_n_2 ,\count_s_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[20]_i_1_n_4 ,\count_s_reg[20]_i_1_n_5 ,\count_s_reg[20]_i_1_n_6 ,\count_s_reg[20]_i_1_n_7 }),
        .S(count_s_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[21] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[20]_i_1_n_6 ),
        .Q(count_s_reg[21]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[22] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[20]_i_1_n_5 ),
        .Q(count_s_reg[22]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[23] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[20]_i_1_n_4 ),
        .Q(count_s_reg[23]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[24] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[24]_i_1_n_7 ),
        .Q(count_s_reg[24]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[24]_i_1 
       (.CI(\count_s_reg[20]_i_1_n_0 ),
        .CO({\count_s_reg[24]_i_1_n_0 ,\count_s_reg[24]_i_1_n_1 ,\count_s_reg[24]_i_1_n_2 ,\count_s_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[24]_i_1_n_4 ,\count_s_reg[24]_i_1_n_5 ,\count_s_reg[24]_i_1_n_6 ,\count_s_reg[24]_i_1_n_7 }),
        .S(count_s_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[25] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[24]_i_1_n_6 ),
        .Q(count_s_reg[25]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[26] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[24]_i_1_n_5 ),
        .Q(count_s_reg[26]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[27] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[24]_i_1_n_4 ),
        .Q(count_s_reg[27]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[28] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[28]_i_1_n_7 ),
        .Q(count_s_reg[28]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[28]_i_1 
       (.CI(\count_s_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_s_reg[28]_i_1_CO_UNCONNECTED [3],\count_s_reg[28]_i_1_n_1 ,\count_s_reg[28]_i_1_n_2 ,\count_s_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[28]_i_1_n_4 ,\count_s_reg[28]_i_1_n_5 ,\count_s_reg[28]_i_1_n_6 ,\count_s_reg[28]_i_1_n_7 }),
        .S(count_s_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[29] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[28]_i_1_n_6 ),
        .Q(count_s_reg[29]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[2] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[0]_i_3_n_5 ),
        .Q(count_s_reg[2]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[30] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[28]_i_1_n_5 ),
        .Q(count_s_reg[30]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[31] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[28]_i_1_n_4 ),
        .Q(count_s_reg[31]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[3] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[0]_i_3_n_4 ),
        .Q(count_s_reg[3]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[4] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[4]_i_1_n_7 ),
        .Q(count_s_reg[4]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[4]_i_1 
       (.CI(\count_s_reg[0]_i_3_n_0 ),
        .CO({\count_s_reg[4]_i_1_n_0 ,\count_s_reg[4]_i_1_n_1 ,\count_s_reg[4]_i_1_n_2 ,\count_s_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[4]_i_1_n_4 ,\count_s_reg[4]_i_1_n_5 ,\count_s_reg[4]_i_1_n_6 ,\count_s_reg[4]_i_1_n_7 }),
        .S(count_s_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[5] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[4]_i_1_n_6 ),
        .Q(count_s_reg[5]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[6] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[4]_i_1_n_5 ),
        .Q(count_s_reg[6]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[7] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[4]_i_1_n_4 ),
        .Q(count_s_reg[7]),
        .R(\count_s[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[8] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[8]_i_1_n_7 ),
        .Q(count_s_reg[8]),
        .R(\count_s[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_s_reg[8]_i_1 
       (.CI(\count_s_reg[4]_i_1_n_0 ),
        .CO({\count_s_reg[8]_i_1_n_0 ,\count_s_reg[8]_i_1_n_1 ,\count_s_reg[8]_i_1_n_2 ,\count_s_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_s_reg[8]_i_1_n_4 ,\count_s_reg[8]_i_1_n_5 ,\count_s_reg[8]_i_1_n_6 ,\count_s_reg[8]_i_1_n_7 }),
        .S(count_s_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[9] 
       (.C(clk_i),
        .CE(\count_s[0]_i_2_n_0 ),
        .D(\count_s_reg[8]_i_1_n_6 ),
        .Q(count_s_reg[9]),
        .R(\count_s[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2020EF20)) 
    led_s_i_1
       (.I0(led_o),
        .I1(msg_detected_shift_detector_s[1]),
        .I2(msg_detected_shift_detector_s[0]),
        .I3(count_s2_carry__2_n_0),
        .I4(count_s_reg[31]),
        .O(led_s_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_s_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(led_s_i_1_n_0),
        .Q(led_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \msg_detected_shift_detector_s_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(target_detected_i),
        .Q(msg_detected_shift_detector_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \msg_detected_shift_detector_s_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(msg_detected_shift_detector_s[0]),
        .Q(msg_detected_shift_detector_s[1]),
        .R(1'b0));
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
