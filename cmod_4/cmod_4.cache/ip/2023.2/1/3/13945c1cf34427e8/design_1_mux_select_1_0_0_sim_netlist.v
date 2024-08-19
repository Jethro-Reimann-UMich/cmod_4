// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 17 13:01:20 2024
// Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mux_select_1_0_0_sim_netlist.v
// Design      : design_1_mux_select_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mux_select_1_0_0,mux_select_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mux_select_1,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_i,
    moving_ave_i,
    mux_a_o,
    mux_b_o,
    mux_c_o);
  input clk_i;
  input [11:0]moving_ave_i;
  output mux_a_o;
  output mux_b_o;
  output mux_c_o;

  wire \<const0> ;
  wire clk_i;
  wire [11:0]moving_ave_i;
  wire mux_a_o;
  wire mux_b_o;

  assign mux_c_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1 U0
       (.clk_i(clk_i),
        .moving_ave_i(moving_ave_i),
        .mux_a_o(mux_a_o),
        .mux_b_o(mux_b_o));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1
   (mux_a_o,
    mux_b_o,
    clk_i,
    moving_ave_i);
  output mux_a_o;
  output mux_b_o;
  input clk_i;
  input [11:0]moving_ave_i;

  wire \FSM_onehot_state_s[1]_i_1_n_0 ;
  wire \FSM_onehot_state_s[4]_i_1_n_0 ;
  wire \FSM_onehot_state_s[4]_i_2_n_0 ;
  wire \FSM_onehot_state_s[4]_i_3_n_0 ;
  wire \FSM_onehot_state_s[4]_i_4_n_0 ;
  wire \FSM_onehot_state_s[4]_i_5_n_0 ;
  wire \FSM_onehot_state_s[4]_i_6_n_0 ;
  wire \FSM_onehot_state_s[4]_i_7_n_0 ;
  wire \FSM_onehot_state_s_reg_n_0_[1] ;
  wire \FSM_onehot_state_s_reg_n_0_[2] ;
  wire \FSM_onehot_state_s_reg_n_0_[4] ;
  wire clk_i;
  wire count_s;
  wire \count_s[0]_i_1_n_0 ;
  wire \count_s[27]_i_1_n_0 ;
  wire \count_s[27]_i_3_n_0 ;
  wire \count_s_reg_n_0_[0] ;
  wire \count_s_reg_n_0_[10] ;
  wire \count_s_reg_n_0_[11] ;
  wire \count_s_reg_n_0_[12] ;
  wire \count_s_reg_n_0_[13] ;
  wire \count_s_reg_n_0_[14] ;
  wire \count_s_reg_n_0_[15] ;
  wire \count_s_reg_n_0_[16] ;
  wire \count_s_reg_n_0_[17] ;
  wire \count_s_reg_n_0_[18] ;
  wire \count_s_reg_n_0_[19] ;
  wire \count_s_reg_n_0_[1] ;
  wire \count_s_reg_n_0_[20] ;
  wire \count_s_reg_n_0_[21] ;
  wire \count_s_reg_n_0_[22] ;
  wire \count_s_reg_n_0_[23] ;
  wire \count_s_reg_n_0_[24] ;
  wire \count_s_reg_n_0_[25] ;
  wire \count_s_reg_n_0_[26] ;
  wire \count_s_reg_n_0_[27] ;
  wire \count_s_reg_n_0_[2] ;
  wire \count_s_reg_n_0_[3] ;
  wire \count_s_reg_n_0_[4] ;
  wire \count_s_reg_n_0_[5] ;
  wire \count_s_reg_n_0_[6] ;
  wire \count_s_reg_n_0_[7] ;
  wire \count_s_reg_n_0_[8] ;
  wire \count_s_reg_n_0_[9] ;
  wire [27:1]in4;
  wire [11:0]moving_ave_i;
  wire [11:0]moving_ave_s;
  wire \moving_ave_s[11]_i_2_n_0 ;
  wire \moving_ave_s[11]_i_3_n_0 ;
  wire \moving_ave_s[11]_i_4_n_0 ;
  wire moving_ave_s_0;
  wire mux_a_o;
  wire mux_b_o;
  wire mux_sel_abc_s;
  wire \mux_sel_abc_s[1]_i_1_n_0 ;
  wire \mux_sel_abc_s[2]_i_1_n_0 ;
  wire \mux_sel_level_s[0]_i_1_n_0 ;
  wire \mux_sel_level_s[1]_i_1_n_0 ;
  wire \mux_sel_level_s[1]_i_2_n_0 ;
  wire \mux_sel_level_s[1]_i_3_n_0 ;
  wire \mux_sel_level_s[2]_i_1_n_0 ;
  wire \mux_sel_level_s[2]_i_2_n_0 ;
  wire \mux_sel_level_s[2]_i_3_n_0 ;
  wire \mux_sel_level_s[2]_i_4_n_0 ;
  wire \mux_sel_level_s_reg_n_0_[0] ;
  wire \mux_sel_level_s_reg_n_0_[1] ;
  wire \mux_sel_level_s_reg_n_0_[2] ;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__5_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__5_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \FSM_onehot_state_s[1]_i_1 
       (.I0(\FSM_onehot_state_s_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_s_reg_n_0_[2] ),
        .I2(mux_sel_abc_s),
        .I3(\FSM_onehot_state_s_reg_n_0_[4] ),
        .O(\FSM_onehot_state_s[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBAAAA)) 
    \FSM_onehot_state_s[4]_i_1 
       (.I0(\FSM_onehot_state_s[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_s[4]_i_3_n_0 ),
        .I2(\count_s_reg_n_0_[25] ),
        .I3(\count_s_reg_n_0_[26] ),
        .I4(\count_s_reg_n_0_[27] ),
        .I5(\FSM_onehot_state_s_reg_n_0_[2] ),
        .O(\FSM_onehot_state_s[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_state_s[4]_i_2 
       (.I0(mux_sel_abc_s),
        .I1(\FSM_onehot_state_s_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_s_reg_n_0_[1] ),
        .O(\FSM_onehot_state_s[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFAAAAAAAA)) 
    \FSM_onehot_state_s[4]_i_3 
       (.I0(\moving_ave_s[11]_i_3_n_0 ),
        .I1(\FSM_onehot_state_s[4]_i_4_n_0 ),
        .I2(\FSM_onehot_state_s[4]_i_5_n_0 ),
        .I3(\FSM_onehot_state_s[4]_i_6_n_0 ),
        .I4(\count_s_reg_n_0_[13] ),
        .I5(\FSM_onehot_state_s[4]_i_7_n_0 ),
        .O(\FSM_onehot_state_s[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \FSM_onehot_state_s[4]_i_4 
       (.I0(\count_s_reg_n_0_[19] ),
        .I1(\count_s_reg_n_0_[18] ),
        .I2(\count_s_reg_n_0_[14] ),
        .I3(\count_s_reg_n_0_[17] ),
        .I4(\count_s_reg_n_0_[16] ),
        .I5(\count_s_reg_n_0_[15] ),
        .O(\FSM_onehot_state_s[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state_s[4]_i_5 
       (.I0(\count_s_reg_n_0_[8] ),
        .I1(\count_s_reg_n_0_[9] ),
        .I2(\count_s_reg_n_0_[10] ),
        .I3(\count_s_reg_n_0_[12] ),
        .I4(\count_s_reg_n_0_[11] ),
        .O(\FSM_onehot_state_s[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state_s[4]_i_6 
       (.I0(\count_s_reg_n_0_[17] ),
        .I1(\count_s_reg_n_0_[16] ),
        .I2(\count_s_reg_n_0_[15] ),
        .O(\FSM_onehot_state_s[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state_s[4]_i_7 
       (.I0(\count_s_reg_n_0_[21] ),
        .I1(\count_s_reg_n_0_[20] ),
        .I2(\count_s_reg_n_0_[23] ),
        .O(\FSM_onehot_state_s[4]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_s_reg[1] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_s[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_s[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_s_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_s_reg[2] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_s[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_s_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_s_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_s_reg[3] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_s[4]_i_1_n_0 ),
        .D(\FSM_onehot_state_s_reg_n_0_[2] ),
        .Q(mux_sel_abc_s),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_s_reg[4] 
       (.C(clk_i),
        .CE(\FSM_onehot_state_s[4]_i_1_n_0 ),
        .D(mux_sel_abc_s),
        .Q(\FSM_onehot_state_s_reg_n_0_[4] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count_s[0]_i_1 
       (.I0(\count_s_reg_n_0_[0] ),
        .O(\count_s[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count_s[27]_i_1 
       (.I0(\count_s[27]_i_3_n_0 ),
        .I1(\FSM_onehot_state_s_reg_n_0_[1] ),
        .O(\count_s[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAEAEEEEEEEE)) 
    \count_s[27]_i_2 
       (.I0(\count_s[27]_i_3_n_0 ),
        .I1(\FSM_onehot_state_s_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_s[4]_i_3_n_0 ),
        .I3(\count_s_reg_n_0_[25] ),
        .I4(\count_s_reg_n_0_[26] ),
        .I5(\count_s_reg_n_0_[27] ),
        .O(count_s));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF01)) 
    \count_s[27]_i_3 
       (.I0(\FSM_onehot_state_s_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_s_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_s_reg_n_0_[4] ),
        .I3(mux_sel_abc_s),
        .O(\count_s[27]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[0] 
       (.C(clk_i),
        .CE(count_s),
        .D(\count_s[0]_i_1_n_0 ),
        .Q(\count_s_reg_n_0_[0] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[10] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[10]),
        .Q(\count_s_reg_n_0_[10] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[11] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[11]),
        .Q(\count_s_reg_n_0_[11] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[12] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[12]),
        .Q(\count_s_reg_n_0_[12] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[13] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[13]),
        .Q(\count_s_reg_n_0_[13] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[14] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[14]),
        .Q(\count_s_reg_n_0_[14] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[15] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[15]),
        .Q(\count_s_reg_n_0_[15] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[16] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[16]),
        .Q(\count_s_reg_n_0_[16] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[17] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[17]),
        .Q(\count_s_reg_n_0_[17] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[18] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[18]),
        .Q(\count_s_reg_n_0_[18] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[19] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[19]),
        .Q(\count_s_reg_n_0_[19] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[1] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[1]),
        .Q(\count_s_reg_n_0_[1] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[20] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[20]),
        .Q(\count_s_reg_n_0_[20] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[21] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[21]),
        .Q(\count_s_reg_n_0_[21] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[22] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[22]),
        .Q(\count_s_reg_n_0_[22] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[23] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[23]),
        .Q(\count_s_reg_n_0_[23] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[24] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[24]),
        .Q(\count_s_reg_n_0_[24] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[25] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[25]),
        .Q(\count_s_reg_n_0_[25] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[26] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[26]),
        .Q(\count_s_reg_n_0_[26] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[27] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[27]),
        .Q(\count_s_reg_n_0_[27] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[2] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[2]),
        .Q(\count_s_reg_n_0_[2] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[3] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[3]),
        .Q(\count_s_reg_n_0_[3] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[4] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[4]),
        .Q(\count_s_reg_n_0_[4] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[5] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[5]),
        .Q(\count_s_reg_n_0_[5] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[6] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[6]),
        .Q(\count_s_reg_n_0_[6] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[7] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[7]),
        .Q(\count_s_reg_n_0_[7] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[8] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[8]),
        .Q(\count_s_reg_n_0_[8] ),
        .R(\count_s[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_s_reg[9] 
       (.C(clk_i),
        .CE(count_s),
        .D(in4[9]),
        .Q(\count_s_reg_n_0_[9] ),
        .R(\count_s[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880888088808888)) 
    \moving_ave_s[11]_i_1 
       (.I0(\FSM_onehot_state_s_reg_n_0_[1] ),
        .I1(\count_s_reg_n_0_[27] ),
        .I2(\count_s_reg_n_0_[26] ),
        .I3(\count_s_reg_n_0_[25] ),
        .I4(\moving_ave_s[11]_i_2_n_0 ),
        .I5(\moving_ave_s[11]_i_3_n_0 ),
        .O(moving_ave_s_0));
  LUT6 #(
    .INIT(64'h0101010100000100)) 
    \moving_ave_s[11]_i_2 
       (.I0(\count_s_reg_n_0_[23] ),
        .I1(\count_s_reg_n_0_[20] ),
        .I2(\count_s_reg_n_0_[21] ),
        .I3(\moving_ave_s[11]_i_4_n_0 ),
        .I4(\FSM_onehot_state_s[4]_i_5_n_0 ),
        .I5(\FSM_onehot_state_s[4]_i_4_n_0 ),
        .O(\moving_ave_s[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \moving_ave_s[11]_i_3 
       (.I0(\count_s_reg_n_0_[22] ),
        .I1(\count_s_reg_n_0_[23] ),
        .I2(\count_s_reg_n_0_[24] ),
        .O(\moving_ave_s[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \moving_ave_s[11]_i_4 
       (.I0(\count_s_reg_n_0_[15] ),
        .I1(\count_s_reg_n_0_[16] ),
        .I2(\count_s_reg_n_0_[17] ),
        .I3(\count_s_reg_n_0_[13] ),
        .O(\moving_ave_s[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[0] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[0]),
        .Q(moving_ave_s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[10] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[10]),
        .Q(moving_ave_s[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[11] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[11]),
        .Q(moving_ave_s[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[1] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[1]),
        .Q(moving_ave_s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[2] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[2]),
        .Q(moving_ave_s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[3] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[3]),
        .Q(moving_ave_s[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[4] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[4]),
        .Q(moving_ave_s[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[5] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[5]),
        .Q(moving_ave_s[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[6] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[6]),
        .Q(moving_ave_s[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[7] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[7]),
        .Q(moving_ave_s[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[8] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[8]),
        .Q(moving_ave_s[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \moving_ave_s_reg[9] 
       (.C(clk_i),
        .CE(moving_ave_s_0),
        .D(moving_ave_i[9]),
        .Q(moving_ave_s[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \mux_sel_abc_s[1]_i_1 
       (.I0(\mux_sel_level_s_reg_n_0_[0] ),
        .I1(\mux_sel_level_s_reg_n_0_[1] ),
        .I2(\mux_sel_level_s_reg_n_0_[2] ),
        .I3(mux_sel_abc_s),
        .I4(mux_b_o),
        .O(\mux_sel_abc_s[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFEF00)) 
    \mux_sel_abc_s[2]_i_1 
       (.I0(\mux_sel_level_s_reg_n_0_[1] ),
        .I1(\mux_sel_level_s_reg_n_0_[2] ),
        .I2(\mux_sel_level_s_reg_n_0_[0] ),
        .I3(mux_sel_abc_s),
        .I4(mux_a_o),
        .O(\mux_sel_abc_s[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mux_sel_abc_s_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\mux_sel_abc_s[1]_i_1_n_0 ),
        .Q(mux_b_o),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \mux_sel_abc_s_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\mux_sel_abc_s[2]_i_1_n_0 ),
        .Q(mux_a_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3333FFF7CCC00008)) 
    \mux_sel_level_s[0]_i_1 
       (.I0(\mux_sel_level_s[1]_i_2_n_0 ),
        .I1(\FSM_onehot_state_s_reg_n_0_[2] ),
        .I2(\mux_sel_level_s_reg_n_0_[1] ),
        .I3(\mux_sel_level_s_reg_n_0_[2] ),
        .I4(\mux_sel_level_s[2]_i_2_n_0 ),
        .I5(\mux_sel_level_s_reg_n_0_[0] ),
        .O(\mux_sel_level_s[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB42FF00BB40FF00)) 
    \mux_sel_level_s[1]_i_1 
       (.I0(\mux_sel_level_s_reg_n_0_[0] ),
        .I1(\mux_sel_level_s[2]_i_2_n_0 ),
        .I2(\mux_sel_level_s_reg_n_0_[2] ),
        .I3(\mux_sel_level_s_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_s_reg_n_0_[2] ),
        .I5(\mux_sel_level_s[1]_i_2_n_0 ),
        .O(\mux_sel_level_s[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h557755F7)) 
    \mux_sel_level_s[1]_i_2 
       (.I0(moving_ave_s[11]),
        .I1(moving_ave_s[9]),
        .I2(\mux_sel_level_s[1]_i_3_n_0 ),
        .I3(moving_ave_s[10]),
        .I4(moving_ave_s[8]),
        .O(\mux_sel_level_s[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00010101FFFFFFFF)) 
    \mux_sel_level_s[1]_i_3 
       (.I0(moving_ave_s[6]),
        .I1(moving_ave_s[5]),
        .I2(moving_ave_s[4]),
        .I3(moving_ave_s[2]),
        .I4(moving_ave_s[3]),
        .I5(moving_ave_s[7]),
        .O(\mux_sel_level_s[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0B0F0F0)) 
    \mux_sel_level_s[2]_i_1 
       (.I0(\mux_sel_level_s_reg_n_0_[0] ),
        .I1(\mux_sel_level_s[2]_i_2_n_0 ),
        .I2(\mux_sel_level_s_reg_n_0_[2] ),
        .I3(\mux_sel_level_s_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_s_reg_n_0_[2] ),
        .O(\mux_sel_level_s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8880888088808080)) 
    \mux_sel_level_s[2]_i_2 
       (.I0(moving_ave_s[11]),
        .I1(moving_ave_s[10]),
        .I2(moving_ave_s[9]),
        .I3(\mux_sel_level_s[2]_i_3_n_0 ),
        .I4(moving_ave_s[6]),
        .I5(\mux_sel_level_s[2]_i_4_n_0 ),
        .O(\mux_sel_level_s[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mux_sel_level_s[2]_i_3 
       (.I0(moving_ave_s[7]),
        .I1(moving_ave_s[8]),
        .O(\mux_sel_level_s[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFC08000000000)) 
    \mux_sel_level_s[2]_i_4 
       (.I0(moving_ave_s[1]),
        .I1(moving_ave_s[3]),
        .I2(moving_ave_s[2]),
        .I3(moving_ave_s[0]),
        .I4(moving_ave_s[4]),
        .I5(moving_ave_s[5]),
        .O(\mux_sel_level_s[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mux_sel_level_s_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\mux_sel_level_s[0]_i_1_n_0 ),
        .Q(\mux_sel_level_s_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \mux_sel_level_s_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\mux_sel_level_s[1]_i_1_n_0 ),
        .Q(\mux_sel_level_s_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mux_sel_level_s_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\mux_sel_level_s[2]_i_1_n_0 ),
        .Q(\mux_sel_level_s_reg_n_0_[2] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(\count_s_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[4:1]),
        .S({\count_s_reg_n_0_[4] ,\count_s_reg_n_0_[3] ,\count_s_reg_n_0_[2] ,\count_s_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S({\count_s_reg_n_0_[8] ,\count_s_reg_n_0_[7] ,\count_s_reg_n_0_[6] ,\count_s_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S({\count_s_reg_n_0_[12] ,\count_s_reg_n_0_[11] ,\count_s_reg_n_0_[10] ,\count_s_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:13]),
        .S({\count_s_reg_n_0_[16] ,\count_s_reg_n_0_[15] ,\count_s_reg_n_0_[14] ,\count_s_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[20:17]),
        .S({\count_s_reg_n_0_[20] ,\count_s_reg_n_0_[19] ,\count_s_reg_n_0_[18] ,\count_s_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:21]),
        .S({\count_s_reg_n_0_[24] ,\count_s_reg_n_0_[23] ,\count_s_reg_n_0_[22] ,\count_s_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__5_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__5_O_UNCONNECTED [3],in4[27:25]}),
        .S({1'b0,\count_s_reg_n_0_[27] ,\count_s_reg_n_0_[26] ,\count_s_reg_n_0_[25] }));
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
