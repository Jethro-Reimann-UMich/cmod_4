-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:manchester_rs_composite_1:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_manchester_rs_compos_0_0 IS
  PORT (
    hs_clk_i : IN STD_LOGIC;
    rst_i : IN STD_LOGIC;
    rst_rs_decoder_i : IN STD_LOGIC;
    recovered_clk_i : IN STD_LOGIC;
    recovered_data_bit_i : IN STD_LOGIC;
    target_detected_o : OUT STD_LOGIC;
    data_o : OUT STD_LOGIC_VECTOR(1823 DOWNTO 0)
  );
END design_1_manchester_rs_compos_0_0;

ARCHITECTURE design_1_manchester_rs_compos_0_0_arch OF design_1_manchester_rs_compos_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_manchester_rs_compos_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT manchester_rs_composite_1 IS
    GENERIC (
      N : INTEGER;
      K : INTEGER;
      GENERATE_MANCHESTER_RS_COMPOSITE_ILA : BOOLEAN;
      GENERATE_RS_SM_ILA : BOOLEAN
    );
    PORT (
      hs_clk_i : IN STD_LOGIC;
      rst_i : IN STD_LOGIC;
      rst_rs_decoder_i : IN STD_LOGIC;
      recovered_clk_i : IN STD_LOGIC;
      recovered_data_bit_i : IN STD_LOGIC;
      target_detected_o : OUT STD_LOGIC;
      data_o : OUT STD_LOGIC_VECTOR(1823 DOWNTO 0)
    );
  END COMPONENT manchester_rs_composite_1;
BEGIN
  U0 : manchester_rs_composite_1
    GENERIC MAP (
      N => 255,
      K => 239,
      GENERATE_MANCHESTER_RS_COMPOSITE_ILA => false,
      GENERATE_RS_SM_ILA => false
    )
    PORT MAP (
      hs_clk_i => hs_clk_i,
      rst_i => rst_i,
      rst_rs_decoder_i => rst_rs_decoder_i,
      recovered_clk_i => recovered_clk_i,
      recovered_data_bit_i => recovered_data_bit_i,
      target_detected_o => target_detected_o,
      data_o => data_o
    );
END design_1_manchester_rs_compos_0_0_arch;
