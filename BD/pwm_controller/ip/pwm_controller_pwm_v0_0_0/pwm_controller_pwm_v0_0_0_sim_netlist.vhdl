-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Dec 22 18:46:41 2022
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_pwm_v0_0_0/pwm_controller_pwm_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_pwm_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_pwm_v0_0_0_pwm_v0 is
  port (
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC;
    clk_i : in STD_LOGIC;
    top_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    duty_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_pwm_v0_0_0_pwm_v0 : entity is "pwm_v0";
end pwm_controller_pwm_v0_0_0_pwm_v0;

architecture STRUCTURE of pwm_controller_pwm_v0_0_0_pwm_v0 is
  signal clear : STD_LOGIC;
  signal \^counter_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_r0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \counter_r0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_r0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_r0_carry__0_n_3\ : STD_LOGIC;
  signal counter_r0_carry_i_1_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_2_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_3_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_4_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_5_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_6_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_7_n_0 : STD_LOGIC;
  signal counter_r0_carry_i_8_n_0 : STD_LOGIC;
  signal counter_r0_carry_n_0 : STD_LOGIC;
  signal counter_r0_carry_n_1 : STD_LOGIC;
  signal counter_r0_carry_n_2 : STD_LOGIC;
  signal counter_r0_carry_n_3 : STD_LOGIC;
  signal \counter_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \counter_r_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_r_reg[7]_i_1_n_7\ : STD_LOGIC;
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
  signal NLW_counter_r0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_r0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter_r_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_o0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_o0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of counter_r0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \counter_r0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_r_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[7]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of pwm_o0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \pwm_o0_carry__0\ : label is 11;
begin
  counter_o(15 downto 0) <= \^counter_o\(15 downto 0);
counter_r0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_r0_carry_n_0,
      CO(2) => counter_r0_carry_n_1,
      CO(1) => counter_r0_carry_n_2,
      CO(0) => counter_r0_carry_n_3,
      CYINIT => '1',
      DI(3) => counter_r0_carry_i_1_n_0,
      DI(2) => counter_r0_carry_i_2_n_0,
      DI(1) => counter_r0_carry_i_3_n_0,
      DI(0) => counter_r0_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter_r0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter_r0_carry_i_5_n_0,
      S(2) => counter_r0_carry_i_6_n_0,
      S(1) => counter_r0_carry_i_7_n_0,
      S(0) => counter_r0_carry_i_8_n_0
    );
\counter_r0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_r0_carry_n_0,
      CO(3) => clear,
      CO(2) => \counter_r0_carry__0_n_1\,
      CO(1) => \counter_r0_carry__0_n_2\,
      CO(0) => \counter_r0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \counter_r0_carry__0_i_1_n_0\,
      DI(2) => \counter_r0_carry__0_i_2_n_0\,
      DI(1) => \counter_r0_carry__0_i_3_n_0\,
      DI(0) => \counter_r0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_counter_r0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \counter_r0_carry__0_i_5_n_0\,
      S(2) => \counter_r0_carry__0_i_6_n_0\,
      S(1) => \counter_r0_carry__0_i_7_n_0\,
      S(0) => \counter_r0_carry__0_i_8_n_0\
    );
\counter_r0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(14),
      I1 => top_i(14),
      I2 => top_i(15),
      I3 => \^counter_o\(15),
      O => \counter_r0_carry__0_i_1_n_0\
    );
\counter_r0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(12),
      I1 => top_i(12),
      I2 => top_i(13),
      I3 => \^counter_o\(13),
      O => \counter_r0_carry__0_i_2_n_0\
    );
\counter_r0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(10),
      I1 => top_i(10),
      I2 => top_i(11),
      I3 => \^counter_o\(11),
      O => \counter_r0_carry__0_i_3_n_0\
    );
\counter_r0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(8),
      I1 => top_i(8),
      I2 => top_i(9),
      I3 => \^counter_o\(9),
      O => \counter_r0_carry__0_i_4_n_0\
    );
\counter_r0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(14),
      I1 => top_i(14),
      I2 => \^counter_o\(15),
      I3 => top_i(15),
      O => \counter_r0_carry__0_i_5_n_0\
    );
\counter_r0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(12),
      I1 => top_i(12),
      I2 => \^counter_o\(13),
      I3 => top_i(13),
      O => \counter_r0_carry__0_i_6_n_0\
    );
\counter_r0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(10),
      I1 => top_i(10),
      I2 => \^counter_o\(11),
      I3 => top_i(11),
      O => \counter_r0_carry__0_i_7_n_0\
    );
\counter_r0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(8),
      I1 => top_i(8),
      I2 => \^counter_o\(9),
      I3 => top_i(9),
      O => \counter_r0_carry__0_i_8_n_0\
    );
counter_r0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(6),
      I1 => top_i(6),
      I2 => top_i(7),
      I3 => \^counter_o\(7),
      O => counter_r0_carry_i_1_n_0
    );
counter_r0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(4),
      I1 => top_i(4),
      I2 => top_i(5),
      I3 => \^counter_o\(5),
      O => counter_r0_carry_i_2_n_0
    );
counter_r0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(2),
      I1 => top_i(2),
      I2 => top_i(3),
      I3 => \^counter_o\(3),
      O => counter_r0_carry_i_3_n_0
    );
counter_r0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(0),
      I1 => top_i(0),
      I2 => top_i(1),
      I3 => \^counter_o\(1),
      O => counter_r0_carry_i_4_n_0
    );
counter_r0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(6),
      I1 => top_i(6),
      I2 => \^counter_o\(7),
      I3 => top_i(7),
      O => counter_r0_carry_i_5_n_0
    );
counter_r0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(4),
      I1 => top_i(4),
      I2 => \^counter_o\(5),
      I3 => top_i(5),
      O => counter_r0_carry_i_6_n_0
    );
counter_r0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(2),
      I1 => top_i(2),
      I2 => \^counter_o\(3),
      I3 => top_i(3),
      O => counter_r0_carry_i_7_n_0
    );
counter_r0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(0),
      I1 => top_i(0),
      I2 => \^counter_o\(1),
      I3 => top_i(1),
      O => counter_r0_carry_i_8_n_0
    );
\counter_r[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_o\(0),
      O => \counter_r[3]_i_2_n_0\
    );
\counter_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_7\,
      Q => \^counter_o\(0),
      R => clear
    );
\counter_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_5\,
      Q => \^counter_o\(10),
      R => clear
    );
\counter_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_4\,
      Q => \^counter_o\(11),
      R => clear
    );
\counter_r_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[7]_i_1_n_0\,
      CO(3) => \counter_r_reg[11]_i_1_n_0\,
      CO(2) => \counter_r_reg[11]_i_1_n_1\,
      CO(1) => \counter_r_reg[11]_i_1_n_2\,
      CO(0) => \counter_r_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_r_reg[11]_i_1_n_4\,
      O(2) => \counter_r_reg[11]_i_1_n_5\,
      O(1) => \counter_r_reg[11]_i_1_n_6\,
      O(0) => \counter_r_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^counter_o\(11 downto 8)
    );
\counter_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_1_n_7\,
      Q => \^counter_o\(12),
      R => clear
    );
\counter_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_1_n_6\,
      Q => \^counter_o\(13),
      R => clear
    );
\counter_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_1_n_5\,
      Q => \^counter_o\(14),
      R => clear
    );
\counter_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_1_n_4\,
      Q => \^counter_o\(15),
      R => clear
    );
\counter_r_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[11]_i_1_n_0\,
      CO(3) => \NLW_counter_r_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counter_r_reg[15]_i_1_n_1\,
      CO(1) => \counter_r_reg[15]_i_1_n_2\,
      CO(0) => \counter_r_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_r_reg[15]_i_1_n_4\,
      O(2) => \counter_r_reg[15]_i_1_n_5\,
      O(1) => \counter_r_reg[15]_i_1_n_6\,
      O(0) => \counter_r_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^counter_o\(15 downto 12)
    );
\counter_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_6\,
      Q => \^counter_o\(1),
      R => clear
    );
\counter_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_5\,
      Q => \^counter_o\(2),
      R => clear
    );
\counter_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_4\,
      Q => \^counter_o\(3),
      R => clear
    );
\counter_r_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_r_reg[3]_i_1_n_0\,
      CO(2) => \counter_r_reg[3]_i_1_n_1\,
      CO(1) => \counter_r_reg[3]_i_1_n_2\,
      CO(0) => \counter_r_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_r_reg[3]_i_1_n_4\,
      O(2) => \counter_r_reg[3]_i_1_n_5\,
      O(1) => \counter_r_reg[3]_i_1_n_6\,
      O(0) => \counter_r_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^counter_o\(3 downto 1),
      S(0) => \counter_r[3]_i_2_n_0\
    );
\counter_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_7\,
      Q => \^counter_o\(4),
      R => clear
    );
\counter_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_6\,
      Q => \^counter_o\(5),
      R => clear
    );
\counter_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_5\,
      Q => \^counter_o\(6),
      R => clear
    );
\counter_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_4\,
      Q => \^counter_o\(7),
      R => clear
    );
\counter_r_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[3]_i_1_n_0\,
      CO(3) => \counter_r_reg[7]_i_1_n_0\,
      CO(2) => \counter_r_reg[7]_i_1_n_1\,
      CO(1) => \counter_r_reg[7]_i_1_n_2\,
      CO(0) => \counter_r_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_r_reg[7]_i_1_n_4\,
      O(2) => \counter_r_reg[7]_i_1_n_5\,
      O(1) => \counter_r_reg[7]_i_1_n_6\,
      O(0) => \counter_r_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^counter_o\(7 downto 4)
    );
\counter_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_7\,
      Q => \^counter_o\(8),
      R => clear
    );
\counter_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_6\,
      Q => \^counter_o\(9),
      R => clear
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
\pwm_o0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(14),
      I1 => \^counter_o\(14),
      I2 => \^counter_o\(15),
      I3 => duty_i(15),
      O => \pwm_o0_carry__0_i_1_n_0\
    );
\pwm_o0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(12),
      I1 => \^counter_o\(12),
      I2 => \^counter_o\(13),
      I3 => duty_i(13),
      O => \pwm_o0_carry__0_i_2_n_0\
    );
\pwm_o0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(10),
      I1 => \^counter_o\(10),
      I2 => \^counter_o\(11),
      I3 => duty_i(11),
      O => \pwm_o0_carry__0_i_3_n_0\
    );
\pwm_o0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(8),
      I1 => \^counter_o\(8),
      I2 => \^counter_o\(9),
      I3 => duty_i(9),
      O => \pwm_o0_carry__0_i_4_n_0\
    );
\pwm_o0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(14),
      I1 => \^counter_o\(14),
      I2 => duty_i(15),
      I3 => \^counter_o\(15),
      O => \pwm_o0_carry__0_i_5_n_0\
    );
\pwm_o0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(12),
      I1 => \^counter_o\(12),
      I2 => duty_i(13),
      I3 => \^counter_o\(13),
      O => \pwm_o0_carry__0_i_6_n_0\
    );
\pwm_o0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(10),
      I1 => \^counter_o\(10),
      I2 => duty_i(11),
      I3 => \^counter_o\(11),
      O => \pwm_o0_carry__0_i_7_n_0\
    );
\pwm_o0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(8),
      I1 => \^counter_o\(8),
      I2 => duty_i(9),
      I3 => \^counter_o\(9),
      O => \pwm_o0_carry__0_i_8_n_0\
    );
pwm_o0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(6),
      I1 => \^counter_o\(6),
      I2 => \^counter_o\(7),
      I3 => duty_i(7),
      O => pwm_o0_carry_i_1_n_0
    );
pwm_o0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(4),
      I1 => \^counter_o\(4),
      I2 => \^counter_o\(5),
      I3 => duty_i(5),
      O => pwm_o0_carry_i_2_n_0
    );
pwm_o0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(2),
      I1 => \^counter_o\(2),
      I2 => \^counter_o\(3),
      I3 => duty_i(3),
      O => pwm_o0_carry_i_3_n_0
    );
pwm_o0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => duty_i(0),
      I1 => \^counter_o\(0),
      I2 => \^counter_o\(1),
      I3 => duty_i(1),
      O => pwm_o0_carry_i_4_n_0
    );
pwm_o0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(6),
      I1 => \^counter_o\(6),
      I2 => duty_i(7),
      I3 => \^counter_o\(7),
      O => pwm_o0_carry_i_5_n_0
    );
pwm_o0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(4),
      I1 => \^counter_o\(4),
      I2 => duty_i(5),
      I3 => \^counter_o\(5),
      O => pwm_o0_carry_i_6_n_0
    );
pwm_o0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(2),
      I1 => \^counter_o\(2),
      I2 => duty_i(3),
      I3 => \^counter_o\(3),
      O => pwm_o0_carry_i_7_n_0
    );
pwm_o0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => duty_i(0),
      I1 => \^counter_o\(0),
      I2 => duty_i(1),
      I3 => \^counter_o\(1),
      O => pwm_o0_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_pwm_v0_0_0 is
  port (
    clk_i : in STD_LOGIC;
    duty_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    top_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_o : out STD_LOGIC;
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_pwm_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_pwm_v0_0_0 : entity is "pwm_controller_pwm_v0_0_0,pwm_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_pwm_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_pwm_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_pwm_v0_0_0 : entity is "pwm_v0,Vivado 2022.2";
end pwm_controller_pwm_v0_0_0;

architecture STRUCTURE of pwm_controller_pwm_v0_0_0 is
begin
U0: entity work.pwm_controller_pwm_v0_0_0_pwm_v0
     port map (
      clk_i => clk_i,
      counter_o(15 downto 0) => counter_o(15 downto 0),
      duty_i(15 downto 0) => duty_i(15 downto 0),
      pwm_o => pwm_o,
      top_i(15 downto 0) => top_i(15 downto 0)
    );
end STRUCTURE;
