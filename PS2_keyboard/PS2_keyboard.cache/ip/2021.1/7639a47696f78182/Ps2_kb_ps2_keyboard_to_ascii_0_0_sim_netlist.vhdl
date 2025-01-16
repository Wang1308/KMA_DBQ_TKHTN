-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jan  3 20:44:59 2025
-- Host        : DESKTOP-TQUTIVG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Ps2_kb_ps2_keyboard_to_ascii_0_0_sim_netlist.vhdl
-- Design      : Ps2_kb_ps2_keyboard_to_ascii_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  port (
    CLK : out STD_LOGIC;
    clear : out STD_LOGIC;
    \^clk\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce is
  signal \^clk_1\ : STD_LOGIC;
  signal \counter_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal result_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_idle[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_out[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[7]_i_2\ : label is "soft_lutpair3";
  attribute inverted : string;
  attribute inverted of \counter_out_reg[8]_inv\ : label is "yes";
  attribute SOFT_HLUTNM of result_i_1 : label is "soft_lutpair1";
begin
  CLK <= \^clk_1\;
\count_idle[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_1\,
      O => clear
    );
\counter_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => plusOp(0)
    );
\counter_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => plusOp(1)
    );
\counter_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      O => plusOp(2)
    );
\counter_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => plusOp(3)
    );
\counter_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => plusOp(4)
    );
\counter_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => plusOp(5)
    );
\counter_out[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_out[7]_i_3_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      O => plusOp(6)
    );
\counter_out[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[7]_i_3_n_0\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => plusOp(7)
    );
\counter_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => \counter_out[7]_i_3_n_0\
    );
\counter_out[8]_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out[7]_i_3_n_0\,
      I2 => \counter_out_reg_n_0_[6]\,
      O => plusOp(8)
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(8),
      Q => sel,
      S => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
result_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => sel,
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^clk_1\,
      O => result_i_1_n_0
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => result_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 : entity is "debounce";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter_out[7]_i_3__0_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \result_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_out[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[6]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[7]_i_2__0\ : label is "soft_lutpair6";
  attribute inverted : string;
  attribute inverted of \counter_out_reg[8]_inv\ : label is "yes";
begin
  D(0) <= \^d\(0);
\counter_out[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\counter_out[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\counter_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\counter_out[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\counter_out[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[4]\,
      O => \plusOp__0\(4)
    );
\counter_out[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => \plusOp__0\(5)
    );
\counter_out[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \counter_out[7]_i_3__0_n_0\,
      I1 => \counter_out_reg_n_0_[6]\,
      O => \plusOp__0\(6)
    );
\counter_out[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out[7]_i_3__0_n_0\,
      I2 => \counter_out_reg_n_0_[7]\,
      O => \plusOp__0\(7)
    );
\counter_out[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      I4 => \counter_out_reg_n_0_[3]\,
      I5 => \counter_out_reg_n_0_[5]\,
      O => \counter_out[7]_i_3__0_n_0\
    );
\counter_out[8]_inv_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out[7]_i_3__0_n_0\,
      I2 => \counter_out_reg_n_0_[6]\,
      O => \plusOp__0\(8)
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => counter_out_reg(8),
      D => \plusOp__0\(8),
      Q => counter_out_reg(8),
      S => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\result_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => counter_out_reg(8),
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^d\(0),
      O => \result_i_1__0_n_0\
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \result_i_1__0_n_0\,
      Q => \^d\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard is
  port (
    ps2_code_new : out STD_LOGIC;
    break_reg : out STD_LOGIC;
    break_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    break_reg_1 : out STD_LOGIC;
    break_reg_2 : out STD_LOGIC;
    break_reg_3 : out STD_LOGIC;
    break_reg_4 : out STD_LOGIC;
    \ascii_reg[7]\ : out STD_LOGIC;
    e0_code_reg : out STD_LOGIC;
    break_reg_5 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_state_reg[1]_0\ : in STD_LOGIC;
    prev_ps2_code_new : in STD_LOGIC;
    control_r_reg : in STD_LOGIC;
    control_l_reg : in STD_LOGIC;
    shift_r_reg : in STD_LOGIC;
    shift_l_reg : in STD_LOGIC;
    e0_code : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ascii_new : in STD_LOGIC;
    \sync_ffs_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard is
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[7]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal break_i_2_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal control_l_i_2_n_0 : STD_LOGIC;
  signal control_r_i_2_n_0 : STD_LOGIC;
  signal control_r_i_3_n_0 : STD_LOGIC;
  signal \count_idle[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_6_n_0\ : STD_LOGIC;
  signal count_idle_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_idle_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal debounce_ps2_data_n_0 : STD_LOGIC;
  signal e0_code_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal ps2_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ps2_code_new\ : STD_LOGIC;
  signal ps2_code_new0 : STD_LOGIC;
  signal ps2_code_new_i_2_n_0 : STD_LOGIC;
  signal ps2_code_new_i_3_n_0 : STD_LOGIC;
  signal ps2_code_new_i_4_n_0 : STD_LOGIC;
  signal ps2_code_new_i_5_n_0 : STD_LOGIC;
  signal \ps2_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[9]\ : STD_LOGIC;
  signal result : STD_LOGIC;
  signal shift_l_i_2_n_0 : STD_LOGIC;
  signal shift_r_i_2_n_0 : STD_LOGIC;
  signal shift_r_i_3_n_0 : STD_LOGIC;
  signal sync_ffs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ascii[0]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ascii[2]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ascii[3]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ascii[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ascii[5]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ascii[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \ascii[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ascii[7]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of control_r_i_3 : label is "soft_lutpair7";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_idle_reg[0]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \count_idle_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_idle_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of shift_r_i_3 : label is "soft_lutpair10";
begin
  ps2_code_new <= \^ps2_code_new\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF47440000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => \FSM_sequential_state_reg[1]_0\,
      I2 => prev_ps2_code_new,
      I3 => \^ps2_code_new\,
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => state(0),
      O => break_reg_0
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0055FFFFF3000000"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => ps2_code(7),
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => state(0),
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_state_reg[1]_0\,
      O => break_reg
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(6),
      I4 => ps2_code(0),
      I5 => ps2_code(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFD5D"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => ps2_code(1),
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => ps2_code(7),
      I5 => \FSM_sequential_state_reg[1]_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(6),
      I5 => ps2_code(0),
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(6),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(5),
      I5 => ps2_code(2),
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\ascii[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[0]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[0]_i_3_n_0\,
      O => D(0)
    );
\ascii[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82AA8282EFFF9AAA"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(6),
      I2 => ps2_code(5),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[0]_i_10_n_0\
    );
\ascii[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AA828AEFFF92AA"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(6),
      I2 => ps2_code(5),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[0]_i_11_n_0\
    );
\ascii[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF5357148F2525"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(4),
      I5 => ps2_code(6),
      O => \ascii[0]_i_12_n_0\
    );
\ascii[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[0]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[0]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[0]_i_8_n_0\,
      O => \ascii[0]_i_3_n_0\
    );
\ascii[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F0000BFBFFFFF"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(0),
      I3 => ps2_code(6),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[0]_i_4_n_0\
    );
\ascii[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C8F038F"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(4),
      O => \ascii[0]_i_5_n_0\
    );
\ascii[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0EFEFBFB0E0E0"
    )
        port map (
      I0 => \ascii[4]_i_5_n_0\,
      I1 => ps2_code(2),
      I2 => ps2_code(7),
      I3 => \ascii[0]_i_9_n_0\,
      I4 => ps2_code(1),
      I5 => \ascii[0]_i_10_n_0\,
      O => \ascii[0]_i_6_n_0\
    );
\ascii[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"75BA"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(3),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      O => \ascii[0]_i_7_n_0\
    );
\ascii[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55145325FE8F5525"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(6),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[0]_i_9_n_0\
    );
\ascii[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[1]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[1]_i_3_n_0\,
      O => D(1)
    );
\ascii[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A001820D5FF0420"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[1]_i_10_n_0\
    );
\ascii[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF47BD01015020"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(4),
      O => \ascii[1]_i_11_n_0\
    );
\ascii[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[1]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[4]_i_5_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[1]_i_7_n_0\,
      O => \ascii[1]_i_3_n_0\
    );
\ascii[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A047AA47FFFFFFFF"
    )
        port map (
      I0 => ps2_code(3),
      I1 => ps2_code(4),
      I2 => ps2_code(5),
      I3 => ps2_code(0),
      I4 => ps2_code(6),
      I5 => ps2_code(2),
      O => \ascii[1]_i_4_n_0\
    );
\ascii[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F50F00353F0F0F"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(6),
      I2 => ps2_code(0),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(5),
      O => \ascii[1]_i_5_n_0\
    );
\ascii[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      I2 => ps2_code(7),
      I3 => \ascii[1]_i_8_n_0\,
      I4 => ps2_code(1),
      I5 => \ascii[1]_i_9_n_0\,
      O => \ascii[1]_i_6_n_0\
    );
\ascii[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF65BD03015220"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(4),
      O => \ascii[1]_i_8_n_0\
    );
\ascii[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A001820F5FF0420"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[1]_i_9_n_0\
    );
\ascii[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[2]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[2]_i_3_n_0\,
      O => D(2)
    );
\ascii[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5057170255402455"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(4),
      I3 => ps2_code(5),
      I4 => ps2_code(6),
      I5 => ps2_code(3),
      O => \ascii[2]_i_10_n_0\
    );
\ascii[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A081008755D9AAA"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[2]_i_11_n_0\
    );
\ascii[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5507107055502545"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(6),
      I5 => ps2_code(3),
      O => \ascii[2]_i_12_n_0\
    );
\ascii[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[2]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[2]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[2]_i_8_n_0\,
      O => \ascii[2]_i_3_n_0\
    );
\ascii[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFC032326A6A"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(4),
      I2 => ps2_code(0),
      I3 => ps2_code(5),
      I4 => ps2_code(6),
      I5 => ps2_code(3),
      O => \ascii[2]_i_4_n_0\
    );
\ascii[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFB0AAAABABA"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(4),
      I2 => ps2_code(0),
      I3 => ps2_code(5),
      I4 => ps2_code(6),
      I5 => ps2_code(3),
      O => \ascii[2]_i_5_n_0\
    );
\ascii[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2036"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(2),
      I2 => ps2_code(4),
      I3 => ps2_code(3),
      O => \ascii[2]_i_7_n_0\
    );
\ascii[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A081008555D9AAA"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[2]_i_9_n_0\
    );
\ascii[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[3]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[3]_i_3_n_0\,
      O => D(3)
    );
\ascii[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FEFF7107ED9F"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(6),
      O => \ascii[3]_i_10_n_0\
    );
\ascii[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F592A2FDF7D3F7"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[3]_i_11_n_0\
    );
\ascii[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557FEFF7105CD9F"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(6),
      O => \ascii[3]_i_12_n_0\
    );
\ascii[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[3]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[3]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[3]_i_8_n_0\,
      O => \ascii[3]_i_3_n_0\
    );
\ascii[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF07CF17D105C015"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(6),
      O => \ascii[3]_i_4_n_0\
    );
\ascii[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF07EFBFD105EABF"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(6),
      O => \ascii[3]_i_5_n_0\
    );
\ascii[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77FB"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(3),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      O => \ascii[3]_i_7_n_0\
    );
\ascii[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F592A2FDF7F3F7"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[3]_i_9_n_0\
    );
\ascii[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[4]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[4]_i_3_n_0\,
      O => D(4)
    );
\ascii[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F4E00022A7F3300"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(3),
      I3 => ps2_code(5),
      I4 => ps2_code(4),
      I5 => ps2_code(6),
      O => \ascii[4]_i_10_n_0\
    );
\ascii[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF3CFCFC8FFCBC8"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(2),
      I2 => ps2_code(0),
      I3 => ps2_code(5),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[4]_i_2_n_0\
    );
\ascii[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[4]_i_4_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[4]_i_5_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[4]_i_6_n_0\,
      O => \ascii[4]_i_3_n_0\
    );
\ascii[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      I2 => ps2_code(7),
      I3 => \ascii[4]_i_7_n_0\,
      I4 => ps2_code(1),
      I5 => \ascii[4]_i_8_n_0\,
      O => \ascii[4]_i_4_n_0\
    );
\ascii[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      O => \ascii[4]_i_5_n_0\
    );
\ascii[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04FE05AD03001210"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(4),
      O => \ascii[4]_i_7_n_0\
    );
\ascii[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22083828DBF71000"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[4]_i_8_n_0\
    );
\ascii[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A202828EFDF2800"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(6),
      I2 => ps2_code(5),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[4]_i_9_n_0\
    );
\ascii[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[6]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[5]_i_2_n_0\,
      O => D(5)
    );
\ascii[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[5]_i_3_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[5]_i_4_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[5]_i_5_n_0\,
      O => \ascii[5]_i_2_n_0\
    );
\ascii[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A014"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(4),
      I2 => ps2_code(3),
      I3 => ps2_code(2),
      O => \ascii[5]_i_4_n_0\
    );
\ascii[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800717555753800"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[5]_i_6_n_0\
    );
\ascii[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA02E8129A20"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(6),
      I3 => ps2_code(3),
      I4 => ps2_code(4),
      I5 => ps2_code(5),
      O => \ascii[5]_i_7_n_0\
    );
\ascii[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0A7F5D7D7D3C28"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(0),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[5]_i_8_n_0\
    );
\ascii[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAFFA01720770"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(6),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[5]_i_9_n_0\
    );
\ascii[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[6]_i_2_n_0\,
      I2 => control_l_reg,
      I3 => \ascii[6]_i_3_n_0\,
      O => D(6)
    );
\ascii[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(6),
      I2 => ps2_code(3),
      I3 => ps2_code(2),
      O => \ascii[6]_i_2_n_0\
    );
\ascii[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[6]_i_4_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[6]_i_5_n_0\,
      O => \ascii[6]_i_3_n_0\
    );
\ascii[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \ascii[4]_i_5_n_0\,
      I1 => ps2_code(2),
      I2 => ps2_code(7),
      I3 => \ascii[6]_i_6_n_0\,
      I4 => ps2_code(1),
      I5 => \ascii[6]_i_7_n_0\,
      O => \ascii[6]_i_4_n_0\
    );
\ascii[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => \ascii[4]_i_5_n_0\,
      I1 => ps2_code(2),
      I2 => ps2_code(7),
      I3 => \ascii[6]_i_8_n_0\,
      I4 => ps2_code(1),
      I5 => \ascii[6]_i_7_n_0\,
      O => \ascii[6]_i_5_n_0\
    );
\ascii[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0454577506055250"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(4),
      O => \ascii[6]_i_6_n_0\
    );
\ascii[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A222820777D1028"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(6),
      I2 => ps2_code(5),
      I3 => ps2_code(0),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[6]_i_7_n_0\
    );
\ascii[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0454555504055250"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(4),
      O => \ascii[6]_i_8_n_0\
    );
\ascii[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5051504000000000"
    )
        port map (
      I0 => state(0),
      I1 => control_r_reg,
      I2 => \ascii[7]_i_2_n_0\,
      I3 => control_l_reg,
      I4 => \ascii[7]_i_3_n_0\,
      I5 => \FSM_sequential_state_reg[1]_0\,
      O => E(0)
    );
\ascii[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ascii[7]_i_4_n_0\,
      I1 => ps2_code(1),
      I2 => \ascii[7]_i_5_n_0\,
      I3 => ps2_code(7),
      O => \ascii[7]_i_2_n_0\
    );
\ascii[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \ascii[7]_i_6_n_0\,
      I1 => ps2_code(2),
      I2 => \ascii[7]_i_7_n_0\,
      I3 => ps2_code(1),
      I4 => \ascii[7]_i_8_n_0\,
      I5 => ps2_code(7),
      O => \ascii[7]_i_3_n_0\
    );
\ascii[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0048B8000CC8C0"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(2),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(6),
      I5 => ps2_code(0),
      O => \ascii[7]_i_4_n_0\
    );
\ascii[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0457007007500550"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(6),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[7]_i_5_n_0\
    );
\ascii[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03308F3000000000"
    )
        port map (
      I0 => e0_code,
      I1 => ps2_code(4),
      I2 => ps2_code(6),
      I3 => ps2_code(5),
      I4 => ps2_code(3),
      I5 => ps2_code(0),
      O => \ascii[7]_i_6_n_0\
    );
\ascii[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2F3E3E3C"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(5),
      I2 => ps2_code(6),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      O => \ascii[7]_i_7_n_0\
    );
\ascii[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0507212777727270"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(0),
      I2 => ps2_code(5),
      I3 => ps2_code(4),
      I4 => ps2_code(3),
      I5 => ps2_code(6),
      O => \ascii[7]_i_8_n_0\
    );
ascii_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFF44440000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_sequential_state_reg[1]_0\,
      I2 => prev_ps2_code_new,
      I3 => \^ps2_code_new\,
      I4 => state(0),
      I5 => ascii_new,
      O => \ascii_reg[7]\
    );
\ascii_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[0]_i_4_n_0\,
      I1 => \ascii[0]_i_5_n_0\,
      O => \ascii_reg[0]_i_2_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[0]_i_11_n_0\,
      I1 => \ascii[0]_i_12_n_0\,
      O => \ascii_reg[0]_i_8_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[1]_i_4_n_0\,
      I1 => \ascii[1]_i_5_n_0\,
      O => \ascii_reg[1]_i_2_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[1]_i_10_n_0\,
      I1 => \ascii[1]_i_11_n_0\,
      O => \ascii_reg[1]_i_7_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_4_n_0\,
      I1 => \ascii[2]_i_5_n_0\,
      O => \ascii_reg[2]_i_2_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_9_n_0\,
      I1 => \ascii[2]_i_10_n_0\,
      O => \ascii_reg[2]_i_6_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_11_n_0\,
      I1 => \ascii[2]_i_12_n_0\,
      O => \ascii_reg[2]_i_8_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_4_n_0\,
      I1 => \ascii[3]_i_5_n_0\,
      O => \ascii_reg[3]_i_2_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_9_n_0\,
      I1 => \ascii[3]_i_10_n_0\,
      O => \ascii_reg[3]_i_6_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_11_n_0\,
      I1 => \ascii[3]_i_12_n_0\,
      O => \ascii_reg[3]_i_8_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[4]_i_9_n_0\,
      I1 => \ascii[4]_i_10_n_0\,
      O => \ascii_reg[4]_i_6_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_6_n_0\,
      I1 => \ascii[5]_i_7_n_0\,
      O => \ascii_reg[5]_i_3_n_0\,
      S => ps2_code(1)
    );
\ascii_reg[5]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_8_n_0\,
      I1 => \ascii[5]_i_9_n_0\,
      O => \ascii_reg[5]_i_5_n_0\,
      S => ps2_code(1)
    );
break_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => ps2_code(1),
      I2 => break_i_2_n_0,
      I3 => ps2_code(7),
      I4 => state(0),
      I5 => \FSM_sequential_state_reg[1]_0\,
      O => break_reg_5
    );
break_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(6),
      I2 => ps2_code(4),
      I3 => ps2_code(3),
      I4 => ps2_code(5),
      I5 => ps2_code(2),
      O => break_i_2_n_0
    );
control_l_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => control_l_i_2_n_0,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => control_l_reg,
      O => break_reg_4
    );
control_l_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => ps2_code(7),
      I1 => ps2_code(2),
      I2 => control_r_i_3_n_0,
      I3 => e0_code,
      I4 => ps2_code(1),
      I5 => state(0),
      O => control_l_i_2_n_0
    );
control_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => control_r_i_2_n_0,
      I2 => \FSM_sequential_state_reg[1]_0\,
      I3 => control_r_reg,
      O => break_reg_3
    );
control_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => ps2_code(7),
      I1 => ps2_code(2),
      I2 => control_r_i_3_n_0,
      I3 => e0_code,
      I4 => ps2_code(1),
      I5 => state(0),
      O => control_r_i_2_n_0
    );
control_r_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => ps2_code(5),
      I1 => ps2_code(3),
      I2 => ps2_code(4),
      I3 => ps2_code(6),
      I4 => ps2_code(0),
      O => control_r_i_3_n_0
    );
\count_idle[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFFFFF"
    )
        port map (
      I0 => \count_idle[0]_i_4_n_0\,
      I1 => count_idle_reg(2),
      I2 => count_idle_reg(3),
      I3 => count_idle_reg(5),
      I4 => count_idle_reg(4),
      I5 => \count_idle[0]_i_5_n_0\,
      O => \count_idle[0]_i_2_n_0\
    );
\count_idle[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_idle_reg(0),
      I1 => count_idle_reg(1),
      O => \count_idle[0]_i_4_n_0\
    );
\count_idle[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFFFFFFFFFF"
    )
        port map (
      I0 => count_idle_reg(11),
      I1 => count_idle_reg(10),
      I2 => count_idle_reg(9),
      I3 => count_idle_reg(8),
      I4 => count_idle_reg(7),
      I5 => count_idle_reg(6),
      O => \count_idle[0]_i_5_n_0\
    );
\count_idle[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_idle_reg(0),
      O => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_7\,
      Q => count_idle_reg(0),
      R => clear
    );
\count_idle_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_idle_reg[0]_i_3_n_0\,
      CO(2) => \count_idle_reg[0]_i_3_n_1\,
      CO(1) => \count_idle_reg[0]_i_3_n_2\,
      CO(0) => \count_idle_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_idle_reg[0]_i_3_n_4\,
      O(2) => \count_idle_reg[0]_i_3_n_5\,
      O(1) => \count_idle_reg[0]_i_3_n_6\,
      O(0) => \count_idle_reg[0]_i_3_n_7\,
      S(3 downto 1) => count_idle_reg(3 downto 1),
      S(0) => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_5\,
      Q => count_idle_reg(10),
      R => clear
    );
\count_idle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_4\,
      Q => count_idle_reg(11),
      R => clear
    );
\count_idle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_6\,
      Q => count_idle_reg(1),
      R => clear
    );
\count_idle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_5\,
      Q => count_idle_reg(2),
      R => clear
    );
\count_idle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_4\,
      Q => count_idle_reg(3),
      R => clear
    );
\count_idle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_7\,
      Q => count_idle_reg(4),
      R => clear
    );
\count_idle_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[0]_i_3_n_0\,
      CO(3) => \count_idle_reg[4]_i_1_n_0\,
      CO(2) => \count_idle_reg[4]_i_1_n_1\,
      CO(1) => \count_idle_reg[4]_i_1_n_2\,
      CO(0) => \count_idle_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[4]_i_1_n_4\,
      O(2) => \count_idle_reg[4]_i_1_n_5\,
      O(1) => \count_idle_reg[4]_i_1_n_6\,
      O(0) => \count_idle_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(7 downto 4)
    );
\count_idle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_6\,
      Q => count_idle_reg(5),
      R => clear
    );
\count_idle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_5\,
      Q => count_idle_reg(6),
      R => clear
    );
\count_idle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_4\,
      Q => count_idle_reg(7),
      R => clear
    );
\count_idle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_7\,
      Q => count_idle_reg(8),
      R => clear
    );
\count_idle_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[4]_i_1_n_0\,
      CO(3) => \NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_idle_reg[8]_i_1_n_1\,
      CO(1) => \count_idle_reg[8]_i_1_n_2\,
      CO(0) => \count_idle_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[8]_i_1_n_4\,
      O(2) => \count_idle_reg[8]_i_1_n_5\,
      O(1) => \count_idle_reg[8]_i_1_n_6\,
      O(0) => \count_idle_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(11 downto 8)
    );
\count_idle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_6\,
      Q => count_idle_reg(9),
      R => clear
    );
debounce_ps2_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce
     port map (
      CLK => result,
      Q(0) => sync_ffs(0),
      clear => clear,
      \^clk\ => clk
    );
debounce_ps2_data: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_debounce_0
     port map (
      D(0) => debounce_ps2_data_n_0,
      Q(0) => sync_ffs(1),
      clk => clk
    );
e0_code_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => e0_code,
      I1 => ps2_code(1),
      I2 => e0_code_i_2_n_0,
      I3 => ps2_code(7),
      I4 => state(0),
      I5 => \FSM_sequential_state_reg[1]_0\,
      O => e0_code_reg
    );
e0_code_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(6),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(5),
      I5 => ps2_code(2),
      O => e0_code_i_2_n_0
    );
ps2_code_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => ps2_code_new_i_2_n_0,
      I1 => \ps2_word_reg_n_0_[0]\,
      I2 => \ps2_word_reg_n_0_[10]\,
      I3 => ps2_code_new_i_3_n_0,
      I4 => ps2_code_new_i_4_n_0,
      I5 => ps2_code_new_i_5_n_0,
      O => ps2_code_new0
    );
ps2_code_new_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => count_idle_reg(3),
      I1 => count_idle_reg(2),
      I2 => count_idle_reg(0),
      I3 => count_idle_reg(1),
      I4 => count_idle_reg(5),
      I5 => count_idle_reg(4),
      O => ps2_code_new_i_2_n_0
    );
ps2_code_new_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => count_idle_reg(9),
      I1 => count_idle_reg(8),
      I2 => count_idle_reg(6),
      I3 => count_idle_reg(7),
      I4 => count_idle_reg(10),
      I5 => count_idle_reg(11),
      O => ps2_code_new_i_3_n_0
    );
ps2_code_new_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => p_3_in,
      I1 => p_4_in,
      I2 => p_1_in,
      I3 => p_2_in,
      O => ps2_code_new_i_4_n_0
    );
ps2_code_new_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in,
      I1 => \ps2_word_reg_n_0_[8]\,
      I2 => \ps2_word_reg_n_0_[9]\,
      I3 => p_5_in,
      I4 => p_6_in,
      O => ps2_code_new_i_5_n_0
    );
ps2_code_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_code_new0,
      Q => \^ps2_code_new\,
      R => '0'
    );
\ps2_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_0_in,
      Q => ps2_code(0),
      R => '0'
    );
\ps2_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_6_in,
      Q => ps2_code(1),
      R => '0'
    );
\ps2_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_5_in,
      Q => ps2_code(2),
      R => '0'
    );
\ps2_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_4_in,
      Q => ps2_code(3),
      R => '0'
    );
\ps2_code_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_3_in,
      Q => ps2_code(4),
      R => '0'
    );
\ps2_code_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_2_in,
      Q => ps2_code(5),
      R => '0'
    );
\ps2_code_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_1_in,
      Q => ps2_code(6),
      R => '0'
    );
\ps2_code_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => \ps2_word_reg_n_0_[8]\,
      Q => ps2_code(7),
      R => '0'
    );
\ps2_word_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_0_in,
      Q => \ps2_word_reg_n_0_[0]\,
      R => '0'
    );
\ps2_word_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => debounce_ps2_data_n_0,
      Q => \ps2_word_reg_n_0_[10]\,
      R => '0'
    );
\ps2_word_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_6_in,
      Q => p_0_in,
      R => '0'
    );
\ps2_word_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_5_in,
      Q => p_6_in,
      R => '0'
    );
\ps2_word_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_4_in,
      Q => p_5_in,
      R => '0'
    );
\ps2_word_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_3_in,
      Q => p_4_in,
      R => '0'
    );
\ps2_word_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_2_in,
      Q => p_3_in,
      R => '0'
    );
\ps2_word_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_1_in,
      Q => p_2_in,
      R => '0'
    );
\ps2_word_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[8]\,
      Q => p_1_in,
      R => '0'
    );
\ps2_word_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[9]\,
      Q => \ps2_word_reg_n_0_[8]\,
      R => '0'
    );
\ps2_word_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[10]\,
      Q => \ps2_word_reg_n_0_[9]\,
      R => '0'
    );
shift_l_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => state(0),
      I2 => shift_l_i_2_n_0,
      I3 => ps2_code(7),
      I4 => \FSM_sequential_state_reg[1]_0\,
      I5 => shift_l_reg,
      O => break_reg_1
    );
shift_l_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => \ascii[4]_i_5_n_0\,
      I3 => ps2_code(6),
      I4 => ps2_code(0),
      I5 => ps2_code(1),
      O => shift_l_i_2_n_0
    );
shift_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]\,
      I1 => state(0),
      I2 => shift_r_i_2_n_0,
      I3 => ps2_code(7),
      I4 => \FSM_sequential_state_reg[1]_0\,
      I5 => shift_r_reg,
      O => break_reg_2
    );
shift_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(5),
      I2 => shift_r_i_3_n_0,
      I3 => ps2_code(6),
      I4 => ps2_code(0),
      I5 => ps2_code(1),
      O => shift_r_i_2_n_0
    );
shift_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      O => shift_r_i_3_n_0
    );
\sync_ffs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(0),
      Q => sync_ffs(0),
      R => '0'
    );
\sync_ffs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(1),
      Q => sync_ffs(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii is
  port (
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ascii_new : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii is
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal ascii : STD_LOGIC;
  signal ascii6_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ascii_code[6]_i_1_n_0\ : STD_LOGIC;
  signal \^ascii_new\ : STD_LOGIC;
  signal \ascii_reg_n_0_[0]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[1]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[2]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[3]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[4]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[5]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[6]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[7]\ : STD_LOGIC;
  signal break_reg_n_0 : STD_LOGIC;
  signal control_l_reg_n_0 : STD_LOGIC;
  signal control_r_reg_n_0 : STD_LOGIC;
  signal e0_code : STD_LOGIC;
  signal prev_ps2_code_new : STD_LOGIC;
  signal ps2_code_new : STD_LOGIC;
  signal ps2_keyboard_0_n_1 : STD_LOGIC;
  signal ps2_keyboard_0_n_11 : STD_LOGIC;
  signal ps2_keyboard_0_n_12 : STD_LOGIC;
  signal ps2_keyboard_0_n_13 : STD_LOGIC;
  signal ps2_keyboard_0_n_14 : STD_LOGIC;
  signal ps2_keyboard_0_n_15 : STD_LOGIC;
  signal ps2_keyboard_0_n_16 : STD_LOGIC;
  signal ps2_keyboard_0_n_17 : STD_LOGIC;
  signal ps2_keyboard_0_n_2 : STD_LOGIC;
  signal shift_l_reg_n_0 : STD_LOGIC;
  signal shift_r_reg_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "new_code:01,translate:10,ready:00,output:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "new_code:01,translate:10,ready:00,output:11";
begin
  ascii_new <= \^ascii_new\;
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_2,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_1,
      Q => \FSM_sequential_state_reg_n_0_[1]\,
      R => '0'
    );
\ascii_code[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ascii_reg_n_0_[7]\,
      I1 => state(0),
      I2 => \FSM_sequential_state_reg_n_0_[1]\,
      O => \ascii_code[6]_i_1_n_0\
    );
\ascii_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[0]\,
      Q => ascii_code(0),
      R => '0'
    );
\ascii_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[1]\,
      Q => ascii_code(1),
      R => '0'
    );
\ascii_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[2]\,
      Q => ascii_code(2),
      R => '0'
    );
\ascii_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[3]\,
      Q => ascii_code(3),
      R => '0'
    );
\ascii_code_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[4]\,
      Q => ascii_code(4),
      R => '0'
    );
\ascii_code_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[5]\,
      Q => ascii_code(5),
      R => '0'
    );
\ascii_code_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[6]\,
      Q => ascii_code(6),
      R => '0'
    );
ascii_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_15,
      Q => \^ascii_new\,
      R => '0'
    );
\ascii_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(0),
      Q => \ascii_reg_n_0_[0]\,
      R => '0'
    );
\ascii_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(1),
      Q => \ascii_reg_n_0_[1]\,
      R => '0'
    );
\ascii_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(2),
      Q => \ascii_reg_n_0_[2]\,
      R => '0'
    );
\ascii_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(3),
      Q => \ascii_reg_n_0_[3]\,
      R => '0'
    );
\ascii_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(4),
      Q => \ascii_reg_n_0_[4]\,
      R => '0'
    );
\ascii_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(5),
      Q => \ascii_reg_n_0_[5]\,
      R => '0'
    );
\ascii_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => ascii6_out(6),
      Q => \ascii_reg_n_0_[6]\,
      R => '0'
    );
\ascii_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ascii,
      D => '0',
      Q => \ascii_reg_n_0_[7]\,
      R => '0'
    );
break_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_17,
      Q => break_reg_n_0,
      R => '0'
    );
control_l_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_14,
      Q => control_l_reg_n_0,
      R => '0'
    );
control_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_13,
      Q => control_r_reg_n_0,
      R => '0'
    );
e0_code_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_16,
      Q => e0_code,
      R => '0'
    );
prev_ps2_code_new_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_code_new,
      Q => prev_ps2_code_new,
      R => '0'
    );
ps2_keyboard_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard
     port map (
      D(6 downto 0) => ascii6_out(6 downto 0),
      E(0) => ascii,
      \FSM_sequential_state_reg[1]\ => break_reg_n_0,
      \FSM_sequential_state_reg[1]_0\ => \FSM_sequential_state_reg_n_0_[1]\,
      Q(0) => \ascii_reg_n_0_[7]\,
      ascii_new => \^ascii_new\,
      \ascii_reg[7]\ => ps2_keyboard_0_n_15,
      break_reg => ps2_keyboard_0_n_1,
      break_reg_0 => ps2_keyboard_0_n_2,
      break_reg_1 => ps2_keyboard_0_n_11,
      break_reg_2 => ps2_keyboard_0_n_12,
      break_reg_3 => ps2_keyboard_0_n_13,
      break_reg_4 => ps2_keyboard_0_n_14,
      break_reg_5 => ps2_keyboard_0_n_17,
      clk => clk,
      control_l_reg => control_l_reg_n_0,
      control_r_reg => control_r_reg_n_0,
      e0_code => e0_code,
      e0_code_reg => ps2_keyboard_0_n_16,
      prev_ps2_code_new => prev_ps2_code_new,
      ps2_code_new => ps2_code_new,
      shift_l_reg => shift_l_reg_n_0,
      shift_r_reg => shift_r_reg_n_0,
      state(0) => state(0),
      \sync_ffs_reg[1]_0\(1 downto 0) => D(1 downto 0)
    );
shift_l_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_11,
      Q => shift_l_reg_n_0,
      R => '0'
    );
shift_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_12,
      Q => shift_r_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Ps2_kb_ps2_keyboard_to_ascii_0_0,ps2_keyboard_to_ascii,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ps2_keyboard_to_ascii,Vivado 2021.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_clk_0, INSERT_VIP 0";
  attribute x_interface_info of ps2_clk : signal is "xilinx.com:signal:clock:1.0 ps2_clk CLK";
  attribute x_interface_parameter of ps2_clk : signal is "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Ps2_kb_ps2_clk_0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ps2_keyboard_to_ascii
     port map (
      D(1) => ps2_data,
      D(0) => ps2_clk,
      ascii_code(6 downto 0) => ascii_code(6 downto 0),
      ascii_new => ascii_new,
      clk => clk
    );
end STRUCTURE;
