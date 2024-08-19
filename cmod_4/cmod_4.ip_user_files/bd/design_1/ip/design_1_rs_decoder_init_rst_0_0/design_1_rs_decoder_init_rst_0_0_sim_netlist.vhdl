-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 18 13:17:17 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Xilinx2023_workspace/vivado_workspace/cmod_4/cmod_4/cmod_4.gen/sources_1/bd/design_1/ip/design_1_rs_decoder_init_rst_0_0/design_1_rs_decoder_init_rst_0_0_sim_netlist.vhdl
-- Design      : design_1_rs_decoder_init_rst_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rs_decoder_init_rst_0_0_rs_decoder_init_rst is
  port (
    rst_o : out STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_rs_decoder_init_rst_0_0_rs_decoder_init_rst : entity is "rs_decoder_init_rst";
end design_1_rs_decoder_init_rst_0_0_rs_decoder_init_rst;

architecture STRUCTURE of design_1_rs_decoder_init_rst_0_0_rs_decoder_init_rst is
  signal \count_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_s[0]_i_3_n_0\ : STD_LOGIC;
  signal count_s_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_s_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_s_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_s_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rst_s2 : STD_LOGIC;
  signal rst_s20_in : STD_LOGIC;
  signal rst_s21_in : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_n_1\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_n_2\ : STD_LOGIC;
  signal \rst_s2__15_carry__0_n_3\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_n_1\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_n_2\ : STD_LOGIC;
  signal \rst_s2__15_carry__1_n_3\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_n_2\ : STD_LOGIC;
  signal \rst_s2__15_carry__2_n_3\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_n_0\ : STD_LOGIC;
  signal \rst_s2__15_carry_n_1\ : STD_LOGIC;
  signal \rst_s2__15_carry_n_2\ : STD_LOGIC;
  signal \rst_s2__15_carry_n_3\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_n_1\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_n_2\ : STD_LOGIC;
  signal \rst_s2__30_carry__0_n_3\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_n_1\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_n_2\ : STD_LOGIC;
  signal \rst_s2__30_carry__1_n_3\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_n_1\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_n_2\ : STD_LOGIC;
  signal \rst_s2__30_carry__2_n_3\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_i_8_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_n_0\ : STD_LOGIC;
  signal \rst_s2__30_carry_n_1\ : STD_LOGIC;
  signal \rst_s2__30_carry_n_2\ : STD_LOGIC;
  signal \rst_s2__30_carry_n_3\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__0_n_1\ : STD_LOGIC;
  signal \rst_s2_carry__0_n_2\ : STD_LOGIC;
  signal \rst_s2_carry__0_n_3\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__1_n_1\ : STD_LOGIC;
  signal \rst_s2_carry__1_n_2\ : STD_LOGIC;
  signal \rst_s2_carry__1_n_3\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \rst_s2_carry__2_n_1\ : STD_LOGIC;
  signal \rst_s2_carry__2_n_2\ : STD_LOGIC;
  signal \rst_s2_carry__2_n_3\ : STD_LOGIC;
  signal rst_s2_carry_i_1_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_2_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_3_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_4_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_5_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_6_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_7_n_0 : STD_LOGIC;
  signal rst_s2_carry_i_8_n_0 : STD_LOGIC;
  signal rst_s2_carry_n_0 : STD_LOGIC;
  signal rst_s2_carry_n_1 : STD_LOGIC;
  signal rst_s2_carry_n_2 : STD_LOGIC;
  signal rst_s2_carry_n_3 : STD_LOGIC;
  signal rst_s_i_1_n_0 : STD_LOGIC;
  signal \NLW_count_s_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rst_s2__15_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__15_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__15_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__15_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_rst_s2__15_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__30_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__30_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2__30_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_s2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rst_s2_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_s_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_s_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \rst_s2__15_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__15_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__15_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__15_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__30_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__30_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__30_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2__30_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of rst_s2_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \rst_s2_carry__2\ : label is 11;
begin
\count_s[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => count_s_reg(31),
      I1 => rst_s21_in,
      I2 => rst_s2,
      I3 => rst_s20_in,
      O => \count_s[0]_i_1_n_0\
    );
\count_s[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(0),
      O => \count_s[0]_i_3_n_0\
    );
\count_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[0]_i_2_n_7\,
      Q => count_s_reg(0),
      R => '0'
    );
\count_s_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_s_reg[0]_i_2_n_0\,
      CO(2) => \count_s_reg[0]_i_2_n_1\,
      CO(1) => \count_s_reg[0]_i_2_n_2\,
      CO(0) => \count_s_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_s_reg[0]_i_2_n_4\,
      O(2) => \count_s_reg[0]_i_2_n_5\,
      O(1) => \count_s_reg[0]_i_2_n_6\,
      O(0) => \count_s_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_s_reg(3 downto 1),
      S(0) => \count_s[0]_i_3_n_0\
    );
\count_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[8]_i_1_n_5\,
      Q => count_s_reg(10),
      R => '0'
    );
\count_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[8]_i_1_n_4\,
      Q => count_s_reg(11),
      R => '0'
    );
\count_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[12]_i_1_n_7\,
      Q => count_s_reg(12),
      R => '0'
    );
\count_s_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[8]_i_1_n_0\,
      CO(3) => \count_s_reg[12]_i_1_n_0\,
      CO(2) => \count_s_reg[12]_i_1_n_1\,
      CO(1) => \count_s_reg[12]_i_1_n_2\,
      CO(0) => \count_s_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[12]_i_1_n_4\,
      O(2) => \count_s_reg[12]_i_1_n_5\,
      O(1) => \count_s_reg[12]_i_1_n_6\,
      O(0) => \count_s_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(15 downto 12)
    );
\count_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[12]_i_1_n_6\,
      Q => count_s_reg(13),
      R => '0'
    );
\count_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[12]_i_1_n_5\,
      Q => count_s_reg(14),
      R => '0'
    );
\count_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[12]_i_1_n_4\,
      Q => count_s_reg(15),
      R => '0'
    );
\count_s_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[16]_i_1_n_7\,
      Q => count_s_reg(16),
      R => '0'
    );
\count_s_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[12]_i_1_n_0\,
      CO(3) => \count_s_reg[16]_i_1_n_0\,
      CO(2) => \count_s_reg[16]_i_1_n_1\,
      CO(1) => \count_s_reg[16]_i_1_n_2\,
      CO(0) => \count_s_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[16]_i_1_n_4\,
      O(2) => \count_s_reg[16]_i_1_n_5\,
      O(1) => \count_s_reg[16]_i_1_n_6\,
      O(0) => \count_s_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(19 downto 16)
    );
\count_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[16]_i_1_n_6\,
      Q => count_s_reg(17),
      R => '0'
    );
\count_s_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[16]_i_1_n_5\,
      Q => count_s_reg(18),
      R => '0'
    );
\count_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[16]_i_1_n_4\,
      Q => count_s_reg(19),
      R => '0'
    );
\count_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[0]_i_2_n_6\,
      Q => count_s_reg(1),
      R => '0'
    );
\count_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[20]_i_1_n_7\,
      Q => count_s_reg(20),
      R => '0'
    );
\count_s_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[16]_i_1_n_0\,
      CO(3) => \count_s_reg[20]_i_1_n_0\,
      CO(2) => \count_s_reg[20]_i_1_n_1\,
      CO(1) => \count_s_reg[20]_i_1_n_2\,
      CO(0) => \count_s_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[20]_i_1_n_4\,
      O(2) => \count_s_reg[20]_i_1_n_5\,
      O(1) => \count_s_reg[20]_i_1_n_6\,
      O(0) => \count_s_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(23 downto 20)
    );
\count_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[20]_i_1_n_6\,
      Q => count_s_reg(21),
      R => '0'
    );
\count_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[20]_i_1_n_5\,
      Q => count_s_reg(22),
      R => '0'
    );
\count_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[20]_i_1_n_4\,
      Q => count_s_reg(23),
      R => '0'
    );
\count_s_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[24]_i_1_n_7\,
      Q => count_s_reg(24),
      R => '0'
    );
\count_s_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[20]_i_1_n_0\,
      CO(3) => \count_s_reg[24]_i_1_n_0\,
      CO(2) => \count_s_reg[24]_i_1_n_1\,
      CO(1) => \count_s_reg[24]_i_1_n_2\,
      CO(0) => \count_s_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[24]_i_1_n_4\,
      O(2) => \count_s_reg[24]_i_1_n_5\,
      O(1) => \count_s_reg[24]_i_1_n_6\,
      O(0) => \count_s_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(27 downto 24)
    );
\count_s_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[24]_i_1_n_6\,
      Q => count_s_reg(25),
      R => '0'
    );
\count_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[24]_i_1_n_5\,
      Q => count_s_reg(26),
      R => '0'
    );
\count_s_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[24]_i_1_n_4\,
      Q => count_s_reg(27),
      R => '0'
    );
\count_s_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[28]_i_1_n_7\,
      Q => count_s_reg(28),
      R => '0'
    );
\count_s_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_s_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_s_reg[28]_i_1_n_1\,
      CO(1) => \count_s_reg[28]_i_1_n_2\,
      CO(0) => \count_s_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[28]_i_1_n_4\,
      O(2) => \count_s_reg[28]_i_1_n_5\,
      O(1) => \count_s_reg[28]_i_1_n_6\,
      O(0) => \count_s_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(31 downto 28)
    );
\count_s_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[28]_i_1_n_6\,
      Q => count_s_reg(29),
      R => '0'
    );
\count_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[0]_i_2_n_5\,
      Q => count_s_reg(2),
      R => '0'
    );
\count_s_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[28]_i_1_n_5\,
      Q => count_s_reg(30),
      R => '0'
    );
\count_s_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[28]_i_1_n_4\,
      Q => count_s_reg(31),
      R => '0'
    );
\count_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[0]_i_2_n_4\,
      Q => count_s_reg(3),
      R => '0'
    );
\count_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[4]_i_1_n_7\,
      Q => count_s_reg(4),
      R => '0'
    );
\count_s_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[0]_i_2_n_0\,
      CO(3) => \count_s_reg[4]_i_1_n_0\,
      CO(2) => \count_s_reg[4]_i_1_n_1\,
      CO(1) => \count_s_reg[4]_i_1_n_2\,
      CO(0) => \count_s_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[4]_i_1_n_4\,
      O(2) => \count_s_reg[4]_i_1_n_5\,
      O(1) => \count_s_reg[4]_i_1_n_6\,
      O(0) => \count_s_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(7 downto 4)
    );
\count_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[4]_i_1_n_6\,
      Q => count_s_reg(5),
      R => '0'
    );
\count_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[4]_i_1_n_5\,
      Q => count_s_reg(6),
      R => '0'
    );
\count_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[4]_i_1_n_4\,
      Q => count_s_reg(7),
      R => '0'
    );
\count_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[8]_i_1_n_7\,
      Q => count_s_reg(8),
      R => '0'
    );
\count_s_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_s_reg[4]_i_1_n_0\,
      CO(3) => \count_s_reg[8]_i_1_n_0\,
      CO(2) => \count_s_reg[8]_i_1_n_1\,
      CO(1) => \count_s_reg[8]_i_1_n_2\,
      CO(0) => \count_s_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_s_reg[8]_i_1_n_4\,
      O(2) => \count_s_reg[8]_i_1_n_5\,
      O(1) => \count_s_reg[8]_i_1_n_6\,
      O(0) => \count_s_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_s_reg(11 downto 8)
    );
\count_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \count_s[0]_i_1_n_0\,
      D => \count_s_reg[8]_i_1_n_6\,
      Q => count_s_reg(9),
      R => '0'
    );
\rst_s2__15_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rst_s2__15_carry_n_0\,
      CO(2) => \rst_s2__15_carry_n_1\,
      CO(1) => \rst_s2__15_carry_n_2\,
      CO(0) => \rst_s2__15_carry_n_3\,
      CYINIT => \rst_s2__15_carry_i_1_n_0\,
      DI(3) => \rst_s2__15_carry_i_2_n_0\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_rst_s2__15_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__15_carry_i_3_n_0\,
      S(2) => \rst_s2__15_carry_i_4_n_0\,
      S(1) => \rst_s2__15_carry_i_5_n_0\,
      S(0) => \rst_s2__15_carry_i_6_n_0\
    );
\rst_s2__15_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__15_carry_n_0\,
      CO(3) => \rst_s2__15_carry__0_n_0\,
      CO(2) => \rst_s2__15_carry__0_n_1\,
      CO(1) => \rst_s2__15_carry__0_n_2\,
      CO(0) => \rst_s2__15_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rst_s2__15_carry__0_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \rst_s2__15_carry__0_i_2_n_0\,
      DI(0) => \rst_s2__15_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_rst_s2__15_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__15_carry__0_i_4_n_0\,
      S(2) => \rst_s2__15_carry__0_i_5_n_0\,
      S(1) => \rst_s2__15_carry__0_i_6_n_0\,
      S(0) => \rst_s2__15_carry__0_i_7_n_0\
    );
\rst_s2__15_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(16),
      I1 => count_s_reg(17),
      O => \rst_s2__15_carry__0_i_1_n_0\
    );
\rst_s2__15_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(12),
      I1 => count_s_reg(13),
      O => \rst_s2__15_carry__0_i_2_n_0\
    );
\rst_s2__15_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(10),
      I1 => count_s_reg(11),
      O => \rst_s2__15_carry__0_i_3_n_0\
    );
\rst_s2__15_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(16),
      I1 => count_s_reg(17),
      O => \rst_s2__15_carry__0_i_4_n_0\
    );
\rst_s2__15_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(14),
      I1 => count_s_reg(15),
      O => \rst_s2__15_carry__0_i_5_n_0\
    );
\rst_s2__15_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(12),
      I1 => count_s_reg(13),
      O => \rst_s2__15_carry__0_i_6_n_0\
    );
\rst_s2__15_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(10),
      I1 => count_s_reg(11),
      O => \rst_s2__15_carry__0_i_7_n_0\
    );
\rst_s2__15_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__15_carry__0_n_0\,
      CO(3) => \rst_s2__15_carry__1_n_0\,
      CO(2) => \rst_s2__15_carry__1_n_1\,
      CO(1) => \rst_s2__15_carry__1_n_2\,
      CO(0) => \rst_s2__15_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rst_s2__15_carry__1_i_1_n_0\,
      DI(2) => \rst_s2__15_carry__1_i_2_n_0\,
      DI(1) => \rst_s2__15_carry__1_i_3_n_0\,
      DI(0) => \rst_s2__15_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_rst_s2__15_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__15_carry__1_i_5_n_0\,
      S(2) => \rst_s2__15_carry__1_i_6_n_0\,
      S(1) => \rst_s2__15_carry__1_i_7_n_0\,
      S(0) => \rst_s2__15_carry__1_i_8_n_0\
    );
\rst_s2__15_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(24),
      I1 => count_s_reg(25),
      O => \rst_s2__15_carry__1_i_1_n_0\
    );
\rst_s2__15_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(22),
      I1 => count_s_reg(23),
      O => \rst_s2__15_carry__1_i_2_n_0\
    );
\rst_s2__15_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(21),
      O => \rst_s2__15_carry__1_i_3_n_0\
    );
\rst_s2__15_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(18),
      I1 => count_s_reg(19),
      O => \rst_s2__15_carry__1_i_4_n_0\
    );
\rst_s2__15_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(24),
      I1 => count_s_reg(25),
      O => \rst_s2__15_carry__1_i_5_n_0\
    );
\rst_s2__15_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(22),
      I1 => count_s_reg(23),
      O => \rst_s2__15_carry__1_i_6_n_0\
    );
\rst_s2__15_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(21),
      I1 => count_s_reg(20),
      O => \rst_s2__15_carry__1_i_7_n_0\
    );
\rst_s2__15_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(18),
      I1 => count_s_reg(19),
      O => \rst_s2__15_carry__1_i_8_n_0\
    );
\rst_s2__15_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__15_carry__1_n_0\,
      CO(3) => \NLW_rst_s2__15_carry__2_CO_UNCONNECTED\(3),
      CO(2) => rst_s2,
      CO(1) => \rst_s2__15_carry__2_n_2\,
      CO(0) => \rst_s2__15_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => count_s_reg(31),
      DI(1) => \rst_s2__15_carry__2_i_1_n_0\,
      DI(0) => \rst_s2__15_carry__2_i_2_n_0\,
      O(3 downto 0) => \NLW_rst_s2__15_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \rst_s2__15_carry__2_i_3_n_0\,
      S(1) => \rst_s2__15_carry__2_i_4_n_0\,
      S(0) => \rst_s2__15_carry__2_i_5_n_0\
    );
\rst_s2__15_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(28),
      I1 => count_s_reg(29),
      O => \rst_s2__15_carry__2_i_1_n_0\
    );
\rst_s2__15_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(27),
      O => \rst_s2__15_carry__2_i_2_n_0\
    );
\rst_s2__15_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(30),
      I1 => count_s_reg(31),
      O => \rst_s2__15_carry__2_i_3_n_0\
    );
\rst_s2__15_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(28),
      I1 => count_s_reg(29),
      O => \rst_s2__15_carry__2_i_4_n_0\
    );
\rst_s2__15_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(27),
      I1 => count_s_reg(26),
      O => \rst_s2__15_carry__2_i_5_n_0\
    );
\rst_s2__15_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(0),
      I1 => count_s_reg(1),
      O => \rst_s2__15_carry_i_1_n_0\
    );
\rst_s2__15_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(8),
      I1 => count_s_reg(9),
      O => \rst_s2__15_carry_i_2_n_0\
    );
\rst_s2__15_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(8),
      I1 => count_s_reg(9),
      O => \rst_s2__15_carry_i_3_n_0\
    );
\rst_s2__15_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(6),
      I1 => count_s_reg(7),
      O => \rst_s2__15_carry_i_4_n_0\
    );
\rst_s2__15_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(4),
      I1 => count_s_reg(5),
      O => \rst_s2__15_carry_i_5_n_0\
    );
\rst_s2__15_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(2),
      I1 => count_s_reg(3),
      O => \rst_s2__15_carry_i_6_n_0\
    );
\rst_s2__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rst_s2__30_carry_n_0\,
      CO(2) => \rst_s2__30_carry_n_1\,
      CO(1) => \rst_s2__30_carry_n_2\,
      CO(0) => \rst_s2__30_carry_n_3\,
      CYINIT => '1',
      DI(3) => \rst_s2__30_carry_i_1_n_0\,
      DI(2) => \rst_s2__30_carry_i_2_n_0\,
      DI(1) => \rst_s2__30_carry_i_3_n_0\,
      DI(0) => \rst_s2__30_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_rst_s2__30_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__30_carry_i_5_n_0\,
      S(2) => \rst_s2__30_carry_i_6_n_0\,
      S(1) => \rst_s2__30_carry_i_7_n_0\,
      S(0) => \rst_s2__30_carry_i_8_n_0\
    );
\rst_s2__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__30_carry_n_0\,
      CO(3) => \rst_s2__30_carry__0_n_0\,
      CO(2) => \rst_s2__30_carry__0_n_1\,
      CO(1) => \rst_s2__30_carry__0_n_2\,
      CO(0) => \rst_s2__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rst_s2__30_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => count_s_reg(9),
      O(3 downto 0) => \NLW_rst_s2__30_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__30_carry__0_i_2_n_0\,
      S(2) => \rst_s2__30_carry__0_i_3_n_0\,
      S(1) => \rst_s2__30_carry__0_i_4_n_0\,
      S(0) => \rst_s2__30_carry__0_i_5_n_0\
    );
\rst_s2__30_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(12),
      I1 => count_s_reg(13),
      O => \rst_s2__30_carry__0_i_1_n_0\
    );
\rst_s2__30_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(14),
      I1 => count_s_reg(15),
      O => \rst_s2__30_carry__0_i_2_n_0\
    );
\rst_s2__30_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(13),
      I1 => count_s_reg(12),
      O => \rst_s2__30_carry__0_i_3_n_0\
    );
\rst_s2__30_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(10),
      I1 => count_s_reg(11),
      O => \rst_s2__30_carry__0_i_4_n_0\
    );
\rst_s2__30_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(8),
      I1 => count_s_reg(9),
      O => \rst_s2__30_carry__0_i_5_n_0\
    );
\rst_s2__30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__30_carry__0_n_0\,
      CO(3) => \rst_s2__30_carry__1_n_0\,
      CO(2) => \rst_s2__30_carry__1_n_1\,
      CO(1) => \rst_s2__30_carry__1_n_2\,
      CO(0) => \rst_s2__30_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \rst_s2__30_carry__1_i_1_n_0\,
      DI(2 downto 1) => B"00",
      DI(0) => \rst_s2__30_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_rst_s2__30_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__30_carry__1_i_3_n_0\,
      S(2) => \rst_s2__30_carry__1_i_4_n_0\,
      S(1) => \rst_s2__30_carry__1_i_5_n_0\,
      S(0) => \rst_s2__30_carry__1_i_6_n_0\
    );
\rst_s2__30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_s_reg(22),
      I1 => count_s_reg(23),
      O => \rst_s2__30_carry__1_i_1_n_0\
    );
\rst_s2__30_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(16),
      I1 => count_s_reg(17),
      O => \rst_s2__30_carry__1_i_2_n_0\
    );
\rst_s2__30_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(22),
      I1 => count_s_reg(23),
      O => \rst_s2__30_carry__1_i_3_n_0\
    );
\rst_s2__30_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(20),
      I1 => count_s_reg(21),
      O => \rst_s2__30_carry__1_i_4_n_0\
    );
\rst_s2__30_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(18),
      I1 => count_s_reg(19),
      O => \rst_s2__30_carry__1_i_5_n_0\
    );
\rst_s2__30_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(17),
      I1 => count_s_reg(16),
      O => \rst_s2__30_carry__1_i_6_n_0\
    );
\rst_s2__30_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2__30_carry__1_n_0\,
      CO(3) => rst_s20_in,
      CO(2) => \rst_s2__30_carry__2_n_1\,
      CO(1) => \rst_s2__30_carry__2_n_2\,
      CO(0) => \rst_s2__30_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \rst_s2__30_carry__2_i_1_n_0\,
      DI(2) => count_s_reg(29),
      DI(1) => count_s_reg(27),
      DI(0) => '0',
      O(3 downto 0) => \NLW_rst_s2__30_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2__30_carry__2_i_2_n_0\,
      S(2) => \rst_s2__30_carry__2_i_3_n_0\,
      S(1) => \rst_s2__30_carry__2_i_4_n_0\,
      S(0) => \rst_s2__30_carry__2_i_5_n_0\
    );
\rst_s2__30_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(30),
      I1 => count_s_reg(31),
      O => \rst_s2__30_carry__2_i_1_n_0\
    );
\rst_s2__30_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(30),
      I1 => count_s_reg(31),
      O => \rst_s2__30_carry__2_i_2_n_0\
    );
\rst_s2__30_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(28),
      I1 => count_s_reg(29),
      O => \rst_s2__30_carry__2_i_3_n_0\
    );
\rst_s2__30_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(26),
      I1 => count_s_reg(27),
      O => \rst_s2__30_carry__2_i_4_n_0\
    );
\rst_s2__30_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(24),
      I1 => count_s_reg(25),
      O => \rst_s2__30_carry__2_i_5_n_0\
    );
\rst_s2__30_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(6),
      I1 => count_s_reg(7),
      O => \rst_s2__30_carry_i_1_n_0\
    );
\rst_s2__30_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_s_reg(4),
      I1 => count_s_reg(5),
      O => \rst_s2__30_carry_i_2_n_0\
    );
\rst_s2__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_s_reg(2),
      I1 => count_s_reg(3),
      O => \rst_s2__30_carry_i_3_n_0\
    );
\rst_s2__30_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => count_s_reg(0),
      I1 => count_s_reg(1),
      O => \rst_s2__30_carry_i_4_n_0\
    );
\rst_s2__30_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(7),
      I1 => count_s_reg(6),
      O => \rst_s2__30_carry_i_5_n_0\
    );
\rst_s2__30_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(4),
      I1 => count_s_reg(5),
      O => \rst_s2__30_carry_i_6_n_0\
    );
\rst_s2__30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(2),
      I1 => count_s_reg(3),
      O => \rst_s2__30_carry_i_7_n_0\
    );
\rst_s2__30_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(0),
      I1 => count_s_reg(1),
      O => \rst_s2__30_carry_i_8_n_0\
    );
rst_s2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rst_s2_carry_n_0,
      CO(2) => rst_s2_carry_n_1,
      CO(1) => rst_s2_carry_n_2,
      CO(0) => rst_s2_carry_n_3,
      CYINIT => '1',
      DI(3) => rst_s2_carry_i_1_n_0,
      DI(2) => rst_s2_carry_i_2_n_0,
      DI(1) => rst_s2_carry_i_3_n_0,
      DI(0) => rst_s2_carry_i_4_n_0,
      O(3 downto 0) => NLW_rst_s2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rst_s2_carry_i_5_n_0,
      S(2) => rst_s2_carry_i_6_n_0,
      S(1) => rst_s2_carry_i_7_n_0,
      S(0) => rst_s2_carry_i_8_n_0
    );
\rst_s2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rst_s2_carry_n_0,
      CO(3) => \rst_s2_carry__0_n_0\,
      CO(2) => \rst_s2_carry__0_n_1\,
      CO(1) => \rst_s2_carry__0_n_2\,
      CO(0) => \rst_s2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \rst_s2_carry__0_i_1_n_0\,
      DI(2) => \rst_s2_carry__0_i_2_n_0\,
      DI(1) => \rst_s2_carry__0_i_3_n_0\,
      DI(0) => \rst_s2_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_rst_s2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2_carry__0_i_5_n_0\,
      S(2) => \rst_s2_carry__0_i_6_n_0\,
      S(1) => \rst_s2_carry__0_i_7_n_0\,
      S(0) => \rst_s2_carry__0_i_8_n_0\
    );
\rst_s2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(14),
      I1 => count_s_reg(15),
      O => \rst_s2_carry__0_i_1_n_0\
    );
\rst_s2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(13),
      O => \rst_s2_carry__0_i_2_n_0\
    );
\rst_s2_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(10),
      I1 => count_s_reg(11),
      O => \rst_s2_carry__0_i_3_n_0\
    );
\rst_s2_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(8),
      I1 => count_s_reg(9),
      O => \rst_s2_carry__0_i_4_n_0\
    );
\rst_s2_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(14),
      I1 => count_s_reg(15),
      O => \rst_s2_carry__0_i_5_n_0\
    );
\rst_s2_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(13),
      I1 => count_s_reg(12),
      O => \rst_s2_carry__0_i_6_n_0\
    );
\rst_s2_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(10),
      I1 => count_s_reg(11),
      O => \rst_s2_carry__0_i_7_n_0\
    );
\rst_s2_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(8),
      I1 => count_s_reg(9),
      O => \rst_s2_carry__0_i_8_n_0\
    );
\rst_s2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2_carry__0_n_0\,
      CO(3) => \rst_s2_carry__1_n_0\,
      CO(2) => \rst_s2_carry__1_n_1\,
      CO(1) => \rst_s2_carry__1_n_2\,
      CO(0) => \rst_s2_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \rst_s2_carry__1_i_1_n_0\,
      DI(1) => \rst_s2_carry__1_i_2_n_0\,
      DI(0) => \rst_s2_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_rst_s2_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2_carry__1_i_4_n_0\,
      S(2) => \rst_s2_carry__1_i_5_n_0\,
      S(1) => \rst_s2_carry__1_i_6_n_0\,
      S(0) => \rst_s2_carry__1_i_7_n_0\
    );
\rst_s2_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(20),
      I1 => count_s_reg(21),
      O => \rst_s2_carry__1_i_1_n_0\
    );
\rst_s2_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(18),
      I1 => count_s_reg(19),
      O => \rst_s2_carry__1_i_2_n_0\
    );
\rst_s2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(17),
      O => \rst_s2_carry__1_i_3_n_0\
    );
\rst_s2_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(22),
      I1 => count_s_reg(23),
      O => \rst_s2_carry__1_i_4_n_0\
    );
\rst_s2_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(20),
      I1 => count_s_reg(21),
      O => \rst_s2_carry__1_i_5_n_0\
    );
\rst_s2_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(18),
      I1 => count_s_reg(19),
      O => \rst_s2_carry__1_i_6_n_0\
    );
\rst_s2_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(17),
      I1 => count_s_reg(16),
      O => \rst_s2_carry__1_i_7_n_0\
    );
\rst_s2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \rst_s2_carry__1_n_0\,
      CO(3) => rst_s21_in,
      CO(2) => \rst_s2_carry__2_n_1\,
      CO(1) => \rst_s2_carry__2_n_2\,
      CO(0) => \rst_s2_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => count_s_reg(31),
      DI(2) => \rst_s2_carry__2_i_1_n_0\,
      DI(1) => \rst_s2_carry__2_i_2_n_0\,
      DI(0) => \rst_s2_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_rst_s2_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \rst_s2_carry__2_i_4_n_0\,
      S(2) => \rst_s2_carry__2_i_5_n_0\,
      S(1) => \rst_s2_carry__2_i_6_n_0\,
      S(0) => \rst_s2_carry__2_i_7_n_0\
    );
\rst_s2_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(28),
      I1 => count_s_reg(29),
      O => \rst_s2_carry__2_i_1_n_0\
    );
\rst_s2_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(26),
      I1 => count_s_reg(27),
      O => \rst_s2_carry__2_i_2_n_0\
    );
\rst_s2_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(24),
      I1 => count_s_reg(25),
      O => \rst_s2_carry__2_i_3_n_0\
    );
\rst_s2_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(30),
      I1 => count_s_reg(31),
      O => \rst_s2_carry__2_i_4_n_0\
    );
\rst_s2_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(28),
      I1 => count_s_reg(29),
      O => \rst_s2_carry__2_i_5_n_0\
    );
\rst_s2_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(26),
      I1 => count_s_reg(27),
      O => \rst_s2_carry__2_i_6_n_0\
    );
\rst_s2_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(24),
      I1 => count_s_reg(25),
      O => \rst_s2_carry__2_i_7_n_0\
    );
rst_s2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_s_reg(6),
      I1 => count_s_reg(7),
      O => rst_s2_carry_i_1_n_0
    );
rst_s2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(4),
      I1 => count_s_reg(5),
      O => rst_s2_carry_i_2_n_0
    );
rst_s2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(2),
      I1 => count_s_reg(3),
      O => rst_s2_carry_i_3_n_0
    );
rst_s2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_s_reg(0),
      I1 => count_s_reg(1),
      O => rst_s2_carry_i_4_n_0
    );
rst_s2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_s_reg(6),
      I1 => count_s_reg(7),
      O => rst_s2_carry_i_5_n_0
    );
rst_s2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(4),
      I1 => count_s_reg(5),
      O => rst_s2_carry_i_6_n_0
    );
rst_s2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(2),
      I1 => count_s_reg(3),
      O => rst_s2_carry_i_7_n_0
    );
rst_s2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_s_reg(0),
      I1 => count_s_reg(1),
      O => rst_s2_carry_i_8_n_0
    );
rst_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8088"
    )
        port map (
      I0 => rst_s2,
      I1 => rst_s20_in,
      I2 => count_s_reg(31),
      I3 => rst_s21_in,
      O => rst_s_i_1_n_0
    );
rst_s_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => rst_s_i_1_n_0,
      Q => rst_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_rs_decoder_init_rst_0_0 is
  port (
    clk_i : in STD_LOGIC;
    rst_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_rs_decoder_init_rst_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_rs_decoder_init_rst_0_0 : entity is "design_1_rs_decoder_init_rst_0_0,rs_decoder_init_rst,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_rs_decoder_init_rst_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_rs_decoder_init_rst_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_rs_decoder_init_rst_0_0 : entity is "rs_decoder_init_rst,Vivado 2023.2";
end design_1_rs_decoder_init_rst_0_0;

architecture STRUCTURE of design_1_rs_decoder_init_rst_0_0 is
begin
U0: entity work.design_1_rs_decoder_init_rst_0_0_rs_decoder_init_rst
     port map (
      clk_i => clk_i,
      rst_o => rst_o
    );
end STRUCTURE;
