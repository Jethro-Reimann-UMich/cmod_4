--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Apr 17 15:01:21 2024
--Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    pio26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    pio46 : out STD_LOGIC;
    pio47 : out STD_LOGIC;
    pio48 : out STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    xa_n_1 : in STD_LOGIC;
    xa_p_1 : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    Vp_Vn_v_n : in STD_LOGIC;
    Vp_Vn_v_p : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    xa_n_1 : in STD_LOGIC;
    xa_p_1 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    pio26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    pio46 : out STD_LOGIC;
    pio47 : out STD_LOGIC;
    pio48 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      Vp_Vn_v_n => Vp_Vn_v_n,
      Vp_Vn_v_p => Vp_Vn_v_p,
      pio26(0) => pio26(0),
      pio46 => pio46,
      pio47 => pio47,
      pio48 => pio48,
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      xa_n_1 => xa_n_1,
      xa_p_1 => xa_p_1
    );
end STRUCTURE;
