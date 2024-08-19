-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 17 13:01:20 2024
-- Host        : DESKTOP-FT2RUUG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mux_select_1_0_0_sim_netlist.vhdl
-- Design      : design_1_mux_select_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1 is
  port (
    mux_a_o : out STD_LOGIC;
    mux_b_o : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    moving_ave_i : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1 is
  signal \FSM_onehot_state_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_s_reg_n_0_[4]\ : STD_LOGIC;
  signal count_s : STD_LOGIC;
  signal \count_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_s[27]_i_1_n_0\ : STD_LOGIC;
  signal \count_s[27]_i_3_n_0\ : STD_LOGIC;
  signal \count_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[10]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[11]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[12]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[13]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[14]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[15]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[16]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[17]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[18]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[19]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[20]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[21]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[22]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[24]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[26]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[27]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[4]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[5]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[6]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[7]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[8]\ : STD_LOGIC;
  signal \count_s_reg_n_0_[9]\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal moving_ave_s : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \moving_ave_s[11]_i_2_n_0\ : STD_LOGIC;
  signal \moving_ave_s[11]_i_3_n_0\ : STD_LOGIC;
  signal \moving_ave_s[11]_i_4_n_0\ : STD_LOGIC;
  signal moving_ave_s_0 : STD_LOGIC;
  signal \^mux_a_o\ : STD_LOGIC;
  signal \^mux_b_o\ : STD_LOGIC;
  signal mux_sel_abc_s : STD_LOGIC;
  signal \mux_sel_abc_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_abc_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[0]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[1]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[1]_i_2_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[1]_i_3_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[2]_i_1_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[2]_i_2_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[2]_i_3_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s[2]_i_4_n_0\ : STD_LOGIC;
  signal \mux_sel_level_s_reg_n_0_[0]\ : STD_LOGIC;
  signal \mux_sel_level_s_reg_n_0_[1]\ : STD_LOGIC;
  signal \mux_sel_level_s_reg_n_0_[2]\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_plusOp_inferred__0/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_s[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state_s[4]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state_s[4]_i_7\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_s_reg[1]\ : label is "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_s_reg[2]\ : label is "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_s_reg[3]\ : label is "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_s_reg[4]\ : label is "mux_waiting:00010,mux_read_moving_ave:00100,mux_if_condition:01000,mux_write_output:10000,iSTATE:00001";
  attribute SOFT_HLUTNM of \count_s[27]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \moving_ave_s[11]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \moving_ave_s[11]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
begin
  mux_a_o <= \^mux_a_o\;
  mux_b_o <= \^mux_b_o\;
\FSM_onehot_state_s[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \FSM_onehot_state_s_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_s_reg_n_0_[2]\,
      I2 => mux_sel_abc_s,
      I3 => \FSM_onehot_state_s_reg_n_0_[4]\,
      O => \FSM_onehot_state_s[1]_i_1_n_0\
    );
\FSM_onehot_state_s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_s[4]_i_2_n_0\,
      I1 => \FSM_onehot_state_s[4]_i_3_n_0\,
      I2 => \count_s_reg_n_0_[25]\,
      I3 => \count_s_reg_n_0_[26]\,
      I4 => \count_s_reg_n_0_[27]\,
      I5 => \FSM_onehot_state_s_reg_n_0_[2]\,
      O => \FSM_onehot_state_s[4]_i_1_n_0\
    );
\FSM_onehot_state_s[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => mux_sel_abc_s,
      I1 => \FSM_onehot_state_s_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_s_reg_n_0_[1]\,
      O => \FSM_onehot_state_s[4]_i_2_n_0\
    );
\FSM_onehot_state_s[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEFAAAAAAAA"
    )
        port map (
      I0 => \moving_ave_s[11]_i_3_n_0\,
      I1 => \FSM_onehot_state_s[4]_i_4_n_0\,
      I2 => \FSM_onehot_state_s[4]_i_5_n_0\,
      I3 => \FSM_onehot_state_s[4]_i_6_n_0\,
      I4 => \count_s_reg_n_0_[13]\,
      I5 => \FSM_onehot_state_s[4]_i_7_n_0\,
      O => \FSM_onehot_state_s[4]_i_3_n_0\
    );
\FSM_onehot_state_s[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \count_s_reg_n_0_[19]\,
      I1 => \count_s_reg_n_0_[18]\,
      I2 => \count_s_reg_n_0_[14]\,
      I3 => \count_s_reg_n_0_[17]\,
      I4 => \count_s_reg_n_0_[16]\,
      I5 => \count_s_reg_n_0_[15]\,
      O => \FSM_onehot_state_s[4]_i_4_n_0\
    );
\FSM_onehot_state_s[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \count_s_reg_n_0_[8]\,
      I1 => \count_s_reg_n_0_[9]\,
      I2 => \count_s_reg_n_0_[10]\,
      I3 => \count_s_reg_n_0_[12]\,
      I4 => \count_s_reg_n_0_[11]\,
      O => \FSM_onehot_state_s[4]_i_5_n_0\
    );
\FSM_onehot_state_s[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \count_s_reg_n_0_[17]\,
      I1 => \count_s_reg_n_0_[16]\,
      I2 => \count_s_reg_n_0_[15]\,
      O => \FSM_onehot_state_s[4]_i_6_n_0\
    );
\FSM_onehot_state_s[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \count_s_reg_n_0_[21]\,
      I1 => \count_s_reg_n_0_[20]\,
      I2 => \count_s_reg_n_0_[23]\,
      O => \FSM_onehot_state_s[4]_i_7_n_0\
    );
\FSM_onehot_state_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state_s[4]_i_1_n_0\,
      D => \FSM_onehot_state_s[1]_i_1_n_0\,
      Q => \FSM_onehot_state_s_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state_s[4]_i_1_n_0\,
      D => \FSM_onehot_state_s_reg_n_0_[1]\,
      Q => \FSM_onehot_state_s_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state_s[4]_i_1_n_0\,
      D => \FSM_onehot_state_s_reg_n_0_[2]\,
      Q => mux_sel_abc_s,
      R => '0'
    );
\FSM_onehot_state_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => \FSM_onehot_state_s[4]_i_1_n_0\,
      D => mux_sel_abc_s,
      Q => \FSM_onehot_state_s_reg_n_0_[4]\,
      R => '0'
    );
\count_s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_s_reg_n_0_[0]\,
      O => \count_s[0]_i_1_n_0\
    );
\count_s[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_s[27]_i_3_n_0\,
      I1 => \FSM_onehot_state_s_reg_n_0_[1]\,
      O => \count_s[27]_i_1_n_0\
    );
\count_s[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAEAEEEEEEEE"
    )
        port map (
      I0 => \count_s[27]_i_3_n_0\,
      I1 => \FSM_onehot_state_s_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_s[4]_i_3_n_0\,
      I3 => \count_s_reg_n_0_[25]\,
      I4 => \count_s_reg_n_0_[26]\,
      I5 => \count_s_reg_n_0_[27]\,
      O => count_s
    );
\count_s[27]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF01"
    )
        port map (
      I0 => \FSM_onehot_state_s_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_s_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_s_reg_n_0_[4]\,
      I3 => mux_sel_abc_s,
      O => \count_s[27]_i_3_n_0\
    );
\count_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => \count_s[0]_i_1_n_0\,
      Q => \count_s_reg_n_0_[0]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(10),
      Q => \count_s_reg_n_0_[10]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(11),
      Q => \count_s_reg_n_0_[11]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(12),
      Q => \count_s_reg_n_0_[12]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(13),
      Q => \count_s_reg_n_0_[13]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(14),
      Q => \count_s_reg_n_0_[14]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(15),
      Q => \count_s_reg_n_0_[15]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(16),
      Q => \count_s_reg_n_0_[16]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(17),
      Q => \count_s_reg_n_0_[17]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(18),
      Q => \count_s_reg_n_0_[18]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(19),
      Q => \count_s_reg_n_0_[19]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(1),
      Q => \count_s_reg_n_0_[1]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(20),
      Q => \count_s_reg_n_0_[20]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(21),
      Q => \count_s_reg_n_0_[21]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(22),
      Q => \count_s_reg_n_0_[22]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(23),
      Q => \count_s_reg_n_0_[23]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(24),
      Q => \count_s_reg_n_0_[24]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(25),
      Q => \count_s_reg_n_0_[25]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(26),
      Q => \count_s_reg_n_0_[26]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(27),
      Q => \count_s_reg_n_0_[27]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(2),
      Q => \count_s_reg_n_0_[2]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(3),
      Q => \count_s_reg_n_0_[3]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(4),
      Q => \count_s_reg_n_0_[4]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(5),
      Q => \count_s_reg_n_0_[5]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(6),
      Q => \count_s_reg_n_0_[6]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(7),
      Q => \count_s_reg_n_0_[7]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(8),
      Q => \count_s_reg_n_0_[8]\,
      R => \count_s[27]_i_1_n_0\
    );
\count_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => count_s,
      D => in4(9),
      Q => \count_s_reg_n_0_[9]\,
      R => \count_s[27]_i_1_n_0\
    );
\moving_ave_s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888088808888"
    )
        port map (
      I0 => \FSM_onehot_state_s_reg_n_0_[1]\,
      I1 => \count_s_reg_n_0_[27]\,
      I2 => \count_s_reg_n_0_[26]\,
      I3 => \count_s_reg_n_0_[25]\,
      I4 => \moving_ave_s[11]_i_2_n_0\,
      I5 => \moving_ave_s[11]_i_3_n_0\,
      O => moving_ave_s_0
    );
\moving_ave_s[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010100000100"
    )
        port map (
      I0 => \count_s_reg_n_0_[23]\,
      I1 => \count_s_reg_n_0_[20]\,
      I2 => \count_s_reg_n_0_[21]\,
      I3 => \moving_ave_s[11]_i_4_n_0\,
      I4 => \FSM_onehot_state_s[4]_i_5_n_0\,
      I5 => \FSM_onehot_state_s[4]_i_4_n_0\,
      O => \moving_ave_s[11]_i_2_n_0\
    );
\moving_ave_s[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \count_s_reg_n_0_[22]\,
      I1 => \count_s_reg_n_0_[23]\,
      I2 => \count_s_reg_n_0_[24]\,
      O => \moving_ave_s[11]_i_3_n_0\
    );
\moving_ave_s[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \count_s_reg_n_0_[15]\,
      I1 => \count_s_reg_n_0_[16]\,
      I2 => \count_s_reg_n_0_[17]\,
      I3 => \count_s_reg_n_0_[13]\,
      O => \moving_ave_s[11]_i_4_n_0\
    );
\moving_ave_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(0),
      Q => moving_ave_s(0),
      R => '0'
    );
\moving_ave_s_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(10),
      Q => moving_ave_s(10),
      R => '0'
    );
\moving_ave_s_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(11),
      Q => moving_ave_s(11),
      R => '0'
    );
\moving_ave_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(1),
      Q => moving_ave_s(1),
      R => '0'
    );
\moving_ave_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(2),
      Q => moving_ave_s(2),
      R => '0'
    );
\moving_ave_s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(3),
      Q => moving_ave_s(3),
      R => '0'
    );
\moving_ave_s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(4),
      Q => moving_ave_s(4),
      R => '0'
    );
\moving_ave_s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(5),
      Q => moving_ave_s(5),
      R => '0'
    );
\moving_ave_s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(6),
      Q => moving_ave_s(6),
      R => '0'
    );
\moving_ave_s_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(7),
      Q => moving_ave_s(7),
      R => '0'
    );
\moving_ave_s_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(8),
      Q => moving_ave_s(8),
      R => '0'
    );
\moving_ave_s_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => moving_ave_s_0,
      D => moving_ave_i(9),
      Q => moving_ave_s(9),
      R => '0'
    );
\mux_sel_abc_s[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => \mux_sel_level_s_reg_n_0_[0]\,
      I1 => \mux_sel_level_s_reg_n_0_[1]\,
      I2 => \mux_sel_level_s_reg_n_0_[2]\,
      I3 => mux_sel_abc_s,
      I4 => \^mux_b_o\,
      O => \mux_sel_abc_s[1]_i_1_n_0\
    );
\mux_sel_abc_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => \mux_sel_level_s_reg_n_0_[1]\,
      I1 => \mux_sel_level_s_reg_n_0_[2]\,
      I2 => \mux_sel_level_s_reg_n_0_[0]\,
      I3 => mux_sel_abc_s,
      I4 => \^mux_a_o\,
      O => \mux_sel_abc_s[2]_i_1_n_0\
    );
\mux_sel_abc_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mux_sel_abc_s[1]_i_1_n_0\,
      Q => \^mux_b_o\,
      R => '0'
    );
\mux_sel_abc_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mux_sel_abc_s[2]_i_1_n_0\,
      Q => \^mux_a_o\,
      R => '0'
    );
\mux_sel_level_s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333FFF7CCC00008"
    )
        port map (
      I0 => \mux_sel_level_s[1]_i_2_n_0\,
      I1 => \FSM_onehot_state_s_reg_n_0_[2]\,
      I2 => \mux_sel_level_s_reg_n_0_[1]\,
      I3 => \mux_sel_level_s_reg_n_0_[2]\,
      I4 => \mux_sel_level_s[2]_i_2_n_0\,
      I5 => \mux_sel_level_s_reg_n_0_[0]\,
      O => \mux_sel_level_s[0]_i_1_n_0\
    );
\mux_sel_level_s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB42FF00BB40FF00"
    )
        port map (
      I0 => \mux_sel_level_s_reg_n_0_[0]\,
      I1 => \mux_sel_level_s[2]_i_2_n_0\,
      I2 => \mux_sel_level_s_reg_n_0_[2]\,
      I3 => \mux_sel_level_s_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_s_reg_n_0_[2]\,
      I5 => \mux_sel_level_s[1]_i_2_n_0\,
      O => \mux_sel_level_s[1]_i_1_n_0\
    );
\mux_sel_level_s[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"557755F7"
    )
        port map (
      I0 => moving_ave_s(11),
      I1 => moving_ave_s(9),
      I2 => \mux_sel_level_s[1]_i_3_n_0\,
      I3 => moving_ave_s(10),
      I4 => moving_ave_s(8),
      O => \mux_sel_level_s[1]_i_2_n_0\
    );
\mux_sel_level_s[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010101FFFFFFFF"
    )
        port map (
      I0 => moving_ave_s(6),
      I1 => moving_ave_s(5),
      I2 => moving_ave_s(4),
      I3 => moving_ave_s(2),
      I4 => moving_ave_s(3),
      I5 => moving_ave_s(7),
      O => \mux_sel_level_s[1]_i_3_n_0\
    );
\mux_sel_level_s[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0B0F0F0"
    )
        port map (
      I0 => \mux_sel_level_s_reg_n_0_[0]\,
      I1 => \mux_sel_level_s[2]_i_2_n_0\,
      I2 => \mux_sel_level_s_reg_n_0_[2]\,
      I3 => \mux_sel_level_s_reg_n_0_[1]\,
      I4 => \FSM_onehot_state_s_reg_n_0_[2]\,
      O => \mux_sel_level_s[2]_i_1_n_0\
    );
\mux_sel_level_s[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888088808080"
    )
        port map (
      I0 => moving_ave_s(11),
      I1 => moving_ave_s(10),
      I2 => moving_ave_s(9),
      I3 => \mux_sel_level_s[2]_i_3_n_0\,
      I4 => moving_ave_s(6),
      I5 => \mux_sel_level_s[2]_i_4_n_0\,
      O => \mux_sel_level_s[2]_i_2_n_0\
    );
\mux_sel_level_s[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => moving_ave_s(7),
      I1 => moving_ave_s(8),
      O => \mux_sel_level_s[2]_i_3_n_0\
    );
\mux_sel_level_s[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC08000000000"
    )
        port map (
      I0 => moving_ave_s(1),
      I1 => moving_ave_s(3),
      I2 => moving_ave_s(2),
      I3 => moving_ave_s(0),
      I4 => moving_ave_s(4),
      I5 => moving_ave_s(5),
      O => \mux_sel_level_s[2]_i_4_n_0\
    );
\mux_sel_level_s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mux_sel_level_s[0]_i_1_n_0\,
      Q => \mux_sel_level_s_reg_n_0_[0]\,
      R => '0'
    );
\mux_sel_level_s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mux_sel_level_s[1]_i_1_n_0\,
      Q => \mux_sel_level_s_reg_n_0_[1]\,
      R => '0'
    );
\mux_sel_level_s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i,
      CE => '1',
      D => \mux_sel_level_s[2]_i_1_n_0\,
      Q => \mux_sel_level_s_reg_n_0_[2]\,
      R => '0'
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => \count_s_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(4 downto 1),
      S(3) => \count_s_reg_n_0_[4]\,
      S(2) => \count_s_reg_n_0_[3]\,
      S(1) => \count_s_reg_n_0_[2]\,
      S(0) => \count_s_reg_n_0_[1]\
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(8 downto 5),
      S(3) => \count_s_reg_n_0_[8]\,
      S(2) => \count_s_reg_n_0_[7]\,
      S(1) => \count_s_reg_n_0_[6]\,
      S(0) => \count_s_reg_n_0_[5]\
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(12 downto 9),
      S(3) => \count_s_reg_n_0_[12]\,
      S(2) => \count_s_reg_n_0_[11]\,
      S(1) => \count_s_reg_n_0_[10]\,
      S(0) => \count_s_reg_n_0_[9]\
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(16 downto 13),
      S(3) => \count_s_reg_n_0_[16]\,
      S(2) => \count_s_reg_n_0_[15]\,
      S(1) => \count_s_reg_n_0_[14]\,
      S(0) => \count_s_reg_n_0_[13]\
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(20 downto 17),
      S(3) => \count_s_reg_n_0_[20]\,
      S(2) => \count_s_reg_n_0_[19]\,
      S(1) => \count_s_reg_n_0_[18]\,
      S(0) => \count_s_reg_n_0_[17]\
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(24 downto 21),
      S(3) => \count_s_reg_n_0_[24]\,
      S(2) => \count_s_reg_n_0_[23]\,
      S(1) => \count_s_reg_n_0_[22]\,
      S(0) => \count_s_reg_n_0_[21]\
    );
\plusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => in4(27 downto 25),
      S(3) => '0',
      S(2) => \count_s_reg_n_0_[27]\,
      S(1) => \count_s_reg_n_0_[26]\,
      S(0) => \count_s_reg_n_0_[25]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_i : in STD_LOGIC;
    moving_ave_i : in STD_LOGIC_VECTOR ( 11 downto 0 );
    mux_a_o : out STD_LOGIC;
    mux_b_o : out STD_LOGIC;
    mux_c_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mux_select_1_0_0,mux_select_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mux_select_1,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
begin
  mux_c_o <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mux_select_1
     port map (
      clk_i => clk_i,
      moving_ave_i(11 downto 0) => moving_ave_i(11 downto 0),
      mux_a_o => mux_a_o,
      mux_b_o => mux_b_o
    );
end STRUCTURE;
