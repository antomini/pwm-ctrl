-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:13 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_pwm_comparator_0_0/pwm_controller_pwm_comparator_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_pwm_comparator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_pwm_comparator_0_0_pwm_comparator is
  port (
    half_o : out STD_LOGIC_VECTOR ( 14 downto 0 );
    cmp_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    pwm_o : out STD_LOGIC;
    update_i : in STD_LOGIC;
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    async_i : in STD_LOGIC;
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_pwm_comparator_0_0_pwm_comparator : entity is "pwm_comparator";
end pwm_controller_pwm_comparator_0_0_pwm_comparator;

architecture STRUCTURE of pwm_controller_pwm_comparator_0_0_pwm_comparator is
  signal cmp_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^half_o\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \pwm_o0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_o0_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_o0_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_o0_carry__0_n_3\ : STD_LOGIC;
  signal pwm_o0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_o0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_o0_carry_n_0 : STD_LOGIC;
  signal pwm_o0_carry_n_1 : STD_LOGIC;
  signal pwm_o0_carry_n_2 : STD_LOGIC;
  signal pwm_o0_carry_n_3 : STD_LOGIC;
  signal NLW_pwm_o0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_o0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmp_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \half_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \half_o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \half_o[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \half_o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \half_o[13]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \half_o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \half_o[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \half_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \half_o[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \half_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \half_o[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \half_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \half_o[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \half_o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \half_o[9]_INST_0\ : label is "soft_lutpair5";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of pwm_o0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_o0_carry__0\ : label is 11;
begin
  half_o(14 downto 0) <= \^half_o\(14 downto 0);
\cmp_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(0),
      I1 => cmp_r(0),
      I2 => async_i,
      O => cmp_o(0)
    );
\cmp_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(0),
      Q => cmp_r(0),
      R => '0'
    );
\cmp_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(10),
      Q => cmp_r(10),
      R => '0'
    );
\cmp_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(11),
      Q => cmp_r(11),
      R => '0'
    );
\cmp_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(12),
      Q => cmp_r(12),
      R => '0'
    );
\cmp_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(13),
      Q => cmp_r(13),
      R => '0'
    );
\cmp_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(14),
      Q => cmp_r(14),
      R => '0'
    );
\cmp_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(15),
      Q => cmp_r(15),
      R => '0'
    );
\cmp_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(1),
      Q => cmp_r(1),
      R => '0'
    );
\cmp_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(2),
      Q => cmp_r(2),
      R => '0'
    );
\cmp_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(3),
      Q => cmp_r(3),
      R => '0'
    );
\cmp_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(4),
      Q => cmp_r(4),
      R => '0'
    );
\cmp_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(5),
      Q => cmp_r(5),
      R => '0'
    );
\cmp_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(6),
      Q => cmp_r(6),
      R => '0'
    );
\cmp_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(7),
      Q => cmp_r(7),
      R => '0'
    );
\cmp_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(8),
      Q => cmp_r(8),
      R => '0'
    );
\cmp_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => update_i,
      D => cmp_i(9),
      Q => cmp_r(9),
      R => '0'
    );
\half_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(1),
      I1 => cmp_r(1),
      I2 => async_i,
      O => \^half_o\(0)
    );
\half_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(11),
      I1 => cmp_r(11),
      I2 => async_i,
      O => \^half_o\(10)
    );
\half_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(12),
      I1 => cmp_r(12),
      I2 => async_i,
      O => \^half_o\(11)
    );
\half_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(13),
      I1 => cmp_r(13),
      I2 => async_i,
      O => \^half_o\(12)
    );
\half_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(14),
      I1 => cmp_r(14),
      I2 => async_i,
      O => \^half_o\(13)
    );
\half_o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(15),
      I1 => cmp_r(15),
      I2 => async_i,
      O => \^half_o\(14)
    );
\half_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(2),
      I1 => cmp_r(2),
      I2 => async_i,
      O => \^half_o\(1)
    );
\half_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(3),
      I1 => cmp_r(3),
      I2 => async_i,
      O => \^half_o\(2)
    );
\half_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(4),
      I1 => cmp_r(4),
      I2 => async_i,
      O => \^half_o\(3)
    );
\half_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(5),
      I1 => cmp_r(5),
      I2 => async_i,
      O => \^half_o\(4)
    );
\half_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(6),
      I1 => cmp_r(6),
      I2 => async_i,
      O => \^half_o\(5)
    );
\half_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(7),
      I1 => cmp_r(7),
      I2 => async_i,
      O => \^half_o\(6)
    );
\half_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(8),
      I1 => cmp_r(8),
      I2 => async_i,
      O => \^half_o\(7)
    );
\half_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(9),
      I1 => cmp_r(9),
      I2 => async_i,
      O => \^half_o\(8)
    );
\half_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => cmp_i(10),
      I1 => cmp_r(10),
      I2 => async_i,
      O => \^half_o\(9)
    );
pwm_o0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_o0_carry_n_0,
      CO(2) => pwm_o0_carry_n_1,
      CO(1) => pwm_o0_carry_n_2,
      CO(0) => pwm_o0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_o0_carry_i_1_n_0,
      DI(2) => pwm_o0_carry_i_2_n_0,
      DI(1) => pwm_o0_carry_i_3_n_0,
      DI(0) => pwm_o0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_o0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_o0_carry_i_5_n_0,
      S(2) => pwm_o0_carry_i_6_n_0,
      S(1) => pwm_o0_carry_i_7_n_0,
      S(0) => pwm_o0_carry_i_8_n_0
    );
\pwm_o0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_o0_carry_n_0,
      CO(3) => pwm_o,
      CO(2) => \pwm_o0_carry__0_n_1\,
      CO(1) => \pwm_o0_carry__0_n_2\,
      CO(0) => \pwm_o0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pwm_o0_carry__0_i_1_n_0\,
      DI(2) => \pwm_o0_carry__0_i_2_n_0\,
      DI(1) => \pwm_o0_carry__0_i_3_n_0\,
      DI(0) => \pwm_o0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_o0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_o0_carry__0_i_5_n_0\,
      S(2) => \pwm_o0_carry__0_i_6_n_0\,
      S(1) => \pwm_o0_carry__0_i_7_n_0\,
      S(0) => \pwm_o0_carry__0_i_8_n_0\
    );
\pwm_o0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(14),
      I2 => cmp_i(14),
      I3 => counter_i(14),
      I4 => counter_i(15),
      I5 => \^half_o\(14),
      O => \pwm_o0_carry__0_i_1_n_0\
    );
\pwm_o0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(12),
      I2 => cmp_i(12),
      I3 => counter_i(12),
      I4 => counter_i(13),
      I5 => \^half_o\(12),
      O => \pwm_o0_carry__0_i_2_n_0\
    );
\pwm_o0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(10),
      I2 => cmp_i(10),
      I3 => counter_i(10),
      I4 => counter_i(11),
      I5 => \^half_o\(10),
      O => \pwm_o0_carry__0_i_3_n_0\
    );
\pwm_o0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(8),
      I2 => cmp_i(8),
      I3 => counter_i(8),
      I4 => counter_i(9),
      I5 => \^half_o\(8),
      O => \pwm_o0_carry__0_i_4_n_0\
    );
\pwm_o0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(14),
      I1 => cmp_r(14),
      I2 => async_i,
      I3 => counter_i(14),
      I4 => \^half_o\(14),
      I5 => counter_i(15),
      O => \pwm_o0_carry__0_i_5_n_0\
    );
\pwm_o0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(12),
      I1 => cmp_r(12),
      I2 => async_i,
      I3 => counter_i(12),
      I4 => \^half_o\(12),
      I5 => counter_i(13),
      O => \pwm_o0_carry__0_i_6_n_0\
    );
\pwm_o0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(10),
      I1 => cmp_r(10),
      I2 => async_i,
      I3 => counter_i(10),
      I4 => \^half_o\(10),
      I5 => counter_i(11),
      O => \pwm_o0_carry__0_i_7_n_0\
    );
\pwm_o0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(8),
      I1 => cmp_r(8),
      I2 => async_i,
      I3 => counter_i(8),
      I4 => \^half_o\(8),
      I5 => counter_i(9),
      O => \pwm_o0_carry__0_i_8_n_0\
    );
pwm_o0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(6),
      I2 => cmp_i(6),
      I3 => counter_i(6),
      I4 => counter_i(7),
      I5 => \^half_o\(6),
      O => pwm_o0_carry_i_1_n_0
    );
pwm_o0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(4),
      I2 => cmp_i(4),
      I3 => counter_i(4),
      I4 => counter_i(5),
      I5 => \^half_o\(4),
      O => pwm_o0_carry_i_2_n_0
    );
pwm_o0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(2),
      I2 => cmp_i(2),
      I3 => counter_i(2),
      I4 => counter_i(3),
      I5 => \^half_o\(2),
      O => pwm_o0_carry_i_3_n_0
    );
pwm_o0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E4FFFF000000E4"
    )
        port map (
      I0 => async_i,
      I1 => cmp_r(0),
      I2 => cmp_i(0),
      I3 => counter_i(0),
      I4 => counter_i(1),
      I5 => \^half_o\(0),
      O => pwm_o0_carry_i_4_n_0
    );
pwm_o0_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(6),
      I1 => cmp_r(6),
      I2 => async_i,
      I3 => counter_i(6),
      I4 => \^half_o\(6),
      I5 => counter_i(7),
      O => pwm_o0_carry_i_5_n_0
    );
pwm_o0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(4),
      I1 => cmp_r(4),
      I2 => async_i,
      I3 => counter_i(4),
      I4 => \^half_o\(4),
      I5 => counter_i(5),
      O => pwm_o0_carry_i_6_n_0
    );
pwm_o0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(2),
      I1 => cmp_r(2),
      I2 => async_i,
      I3 => counter_i(2),
      I4 => \^half_o\(2),
      I5 => counter_i(3),
      O => pwm_o0_carry_i_7_n_0
    );
pwm_o0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AC5300000000AC53"
    )
        port map (
      I0 => cmp_i(0),
      I1 => cmp_r(0),
      I2 => async_i,
      I3 => counter_i(0),
      I4 => \^half_o\(0),
      I5 => counter_i(1),
      O => pwm_o0_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_pwm_comparator_0_0 is
  port (
    cmp_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    half_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC;
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    update_i : in STD_LOGIC;
    async_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_pwm_comparator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_pwm_comparator_0_0 : entity is "pwm_controller_pwm_comparator_0_0,pwm_comparator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_pwm_comparator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_pwm_comparator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_pwm_comparator_0_0 : entity is "pwm_comparator,Vivado 2022.2";
end pwm_controller_pwm_comparator_0_0;

architecture STRUCTURE of pwm_controller_pwm_comparator_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^cmp_o\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^half_o\ : STD_LOGIC_VECTOR ( 14 downto 0 );
begin
  cmp_o(15 downto 1) <= \^half_o\(14 downto 0);
  cmp_o(0) <= \^cmp_o\(0);
  half_o(15) <= \<const0>\;
  half_o(14 downto 0) <= \^half_o\(14 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.pwm_controller_pwm_comparator_0_0_pwm_comparator
     port map (
      async_i => async_i,
      clk_i => clk_i,
      cmp_i(15 downto 0) => cmp_i(15 downto 0),
      cmp_o(0) => \^cmp_o\(0),
      counter_i(15 downto 0) => counter_i(15 downto 0),
      half_o(14 downto 0) => \^half_o\(14 downto 0),
      pwm_o => pwm_o,
      update_i => update_i
    );
end STRUCTURE;
