-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:13 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_counter_updown_0_0/pwm_controller_counter_updown_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_counter_updown_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_counter_updown_0_0_counter_updown is
  port (
    \counter_r_reg[0]_0\ : out STD_LOGIC;
    range_s : out STD_LOGIC_VECTOR ( 0 to 0 );
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    updown_o : out STD_LOGIC;
    sawtri_i : in STD_LOGIC;
    clk_i : in STD_LOGIC;
    resetn_i : in STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_counter_updown_0_0_counter_updown : entity is "counter_updown";
end pwm_controller_counter_updown_0_0_counter_updown;

architecture STRUCTURE of pwm_controller_counter_updown_0_0_counter_updown is
  signal \^counter_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter_r[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter_r[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter_r[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter_r[11]_i_5_n_0\ : STD_LOGIC;
  signal \counter_r[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_r[15]_i_3_n_0\ : STD_LOGIC;
  signal \counter_r[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter_r[15]_i_5_n_0\ : STD_LOGIC;
  signal \counter_r[15]_i_6_n_0\ : STD_LOGIC;
  signal \counter_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter_r[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter_r[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter_r[3]_i_5_n_0\ : STD_LOGIC;
  signal \counter_r[3]_i_6_n_0\ : STD_LOGIC;
  signal \counter_r[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter_r[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_r[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter_r[7]_i_5_n_0\ : STD_LOGIC;
  signal \^counter_r_reg[0]_0\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \counter_r_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \counter_r_reg[15]_i_2_n_7\ : STD_LOGIC;
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
  signal \^range_s\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \range_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \range_s0_carry__0_n_1\ : STD_LOGIC;
  signal \range_s0_carry__0_n_2\ : STD_LOGIC;
  signal \range_s0_carry__0_n_3\ : STD_LOGIC;
  signal range_s0_carry_i_1_n_0 : STD_LOGIC;
  signal range_s0_carry_i_2_n_0 : STD_LOGIC;
  signal range_s0_carry_i_3_n_0 : STD_LOGIC;
  signal range_s0_carry_i_4_n_0 : STD_LOGIC;
  signal range_s0_carry_i_5_n_0 : STD_LOGIC;
  signal range_s0_carry_i_6_n_0 : STD_LOGIC;
  signal range_s0_carry_i_7_n_0 : STD_LOGIC;
  signal range_s0_carry_i_8_n_0 : STD_LOGIC;
  signal range_s0_carry_n_0 : STD_LOGIC;
  signal range_s0_carry_n_1 : STD_LOGIC;
  signal range_s0_carry_n_2 : STD_LOGIC;
  signal range_s0_carry_n_3 : STD_LOGIC;
  signal under_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal under_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal under_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal under_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^updown_o\ : STD_LOGIC;
  signal updown_r : STD_LOGIC;
  signal \NLW_counter_r_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_range_s0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_range_s0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_r_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[15]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counter_r_reg[7]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of range_s0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \range_s0_carry__0\ : label is 11;
begin
  counter_o(15 downto 0) <= \^counter_o\(15 downto 0);
  \counter_r_reg[0]_0\ <= \^counter_r_reg[0]_0\;
  range_s(0) <= \^range_s\(0);
  updown_o <= \^updown_o\;
\counter_r[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(11),
      O => \counter_r[11]_i_2_n_0\
    );
\counter_r[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(10),
      O => \counter_r[11]_i_3_n_0\
    );
\counter_r[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(9),
      O => \counter_r[11]_i_4_n_0\
    );
\counter_r[11]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(8),
      O => \counter_r[11]_i_5_n_0\
    );
\counter_r[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2FF"
    )
        port map (
      I0 => \^range_s\(0),
      I1 => sawtri_i,
      I2 => \^counter_r_reg[0]_0\,
      I3 => resetn_i,
      O => \counter_r[15]_i_1_n_0\
    );
\counter_r[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(15),
      O => \counter_r[15]_i_3_n_0\
    );
\counter_r[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(14),
      O => \counter_r[15]_i_4_n_0\
    );
\counter_r[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(13),
      O => \counter_r[15]_i_5_n_0\
    );
\counter_r[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(12),
      O => \counter_r[15]_i_6_n_0\
    );
\counter_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      O => \counter_r[3]_i_2_n_0\
    );
\counter_r[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(3),
      O => \counter_r[3]_i_3_n_0\
    );
\counter_r[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(2),
      O => \counter_r[3]_i_4_n_0\
    );
\counter_r[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(1),
      O => \counter_r[3]_i_5_n_0\
    );
\counter_r[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A02D5FD"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(0),
      O => \counter_r[3]_i_6_n_0\
    );
\counter_r[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(7),
      O => \counter_r[7]_i_2_n_0\
    );
\counter_r[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(6),
      O => \counter_r[7]_i_3_n_0\
    );
\counter_r[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(5),
      O => \counter_r[7]_i_4_n_0\
    );
\counter_r[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5FD2A02"
    )
        port map (
      I0 => sawtri_i,
      I1 => \^counter_r_reg[0]_0\,
      I2 => updown_r,
      I3 => \^range_s\(0),
      I4 => \^counter_o\(4),
      O => \counter_r[7]_i_5_n_0\
    );
\counter_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_7\,
      Q => \^counter_o\(0),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_5\,
      Q => \^counter_o\(10),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_4\,
      Q => \^counter_o\(11),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[7]_i_1_n_0\,
      CO(3) => \counter_r_reg[11]_i_1_n_0\,
      CO(2) => \counter_r_reg[11]_i_1_n_1\,
      CO(1) => \counter_r_reg[11]_i_1_n_2\,
      CO(0) => \counter_r_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_o\(11 downto 8),
      O(3) => \counter_r_reg[11]_i_1_n_4\,
      O(2) => \counter_r_reg[11]_i_1_n_5\,
      O(1) => \counter_r_reg[11]_i_1_n_6\,
      O(0) => \counter_r_reg[11]_i_1_n_7\,
      S(3) => \counter_r[11]_i_2_n_0\,
      S(2) => \counter_r[11]_i_3_n_0\,
      S(1) => \counter_r[11]_i_4_n_0\,
      S(0) => \counter_r[11]_i_5_n_0\
    );
\counter_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_2_n_7\,
      Q => \^counter_o\(12),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_2_n_6\,
      Q => \^counter_o\(13),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_2_n_5\,
      Q => \^counter_o\(14),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[15]_i_2_n_4\,
      Q => \^counter_o\(15),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[11]_i_1_n_0\,
      CO(3) => \NLW_counter_r_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \counter_r_reg[15]_i_2_n_1\,
      CO(1) => \counter_r_reg[15]_i_2_n_2\,
      CO(0) => \counter_r_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \^counter_o\(14 downto 12),
      O(3) => \counter_r_reg[15]_i_2_n_4\,
      O(2) => \counter_r_reg[15]_i_2_n_5\,
      O(1) => \counter_r_reg[15]_i_2_n_6\,
      O(0) => \counter_r_reg[15]_i_2_n_7\,
      S(3) => \counter_r[15]_i_3_n_0\,
      S(2) => \counter_r[15]_i_4_n_0\,
      S(1) => \counter_r[15]_i_5_n_0\,
      S(0) => \counter_r[15]_i_6_n_0\
    );
\counter_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_6\,
      Q => \^counter_o\(1),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_5\,
      Q => \^counter_o\(2),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[3]_i_1_n_4\,
      Q => \^counter_o\(3),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_r_reg[3]_i_1_n_0\,
      CO(2) => \counter_r_reg[3]_i_1_n_1\,
      CO(1) => \counter_r_reg[3]_i_1_n_2\,
      CO(0) => \counter_r_reg[3]_i_1_n_3\,
      CYINIT => \counter_r[3]_i_2_n_0\,
      DI(3 downto 0) => \^counter_o\(3 downto 0),
      O(3) => \counter_r_reg[3]_i_1_n_4\,
      O(2) => \counter_r_reg[3]_i_1_n_5\,
      O(1) => \counter_r_reg[3]_i_1_n_6\,
      O(0) => \counter_r_reg[3]_i_1_n_7\,
      S(3) => \counter_r[3]_i_3_n_0\,
      S(2) => \counter_r[3]_i_4_n_0\,
      S(1) => \counter_r[3]_i_5_n_0\,
      S(0) => \counter_r[3]_i_6_n_0\
    );
\counter_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_7\,
      Q => \^counter_o\(4),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_6\,
      Q => \^counter_o\(5),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_5\,
      Q => \^counter_o\(6),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[7]_i_1_n_4\,
      Q => \^counter_o\(7),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_r_reg[3]_i_1_n_0\,
      CO(3) => \counter_r_reg[7]_i_1_n_0\,
      CO(2) => \counter_r_reg[7]_i_1_n_1\,
      CO(1) => \counter_r_reg[7]_i_1_n_2\,
      CO(0) => \counter_r_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^counter_o\(7 downto 4),
      O(3) => \counter_r_reg[7]_i_1_n_4\,
      O(2) => \counter_r_reg[7]_i_1_n_5\,
      O(1) => \counter_r_reg[7]_i_1_n_6\,
      O(0) => \counter_r_reg[7]_i_1_n_7\,
      S(3) => \counter_r[7]_i_2_n_0\,
      S(2) => \counter_r[7]_i_3_n_0\,
      S(1) => \counter_r[7]_i_4_n_0\,
      S(0) => \counter_r[7]_i_5_n_0\
    );
\counter_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_7\,
      Q => \^counter_o\(8),
      R => \counter_r[15]_i_1_n_0\
    );
\counter_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => \counter_r_reg[11]_i_1_n_6\,
      Q => \^counter_o\(9),
      R => \counter_r[15]_i_1_n_0\
    );
range_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => range_s0_carry_n_0,
      CO(2) => range_s0_carry_n_1,
      CO(1) => range_s0_carry_n_2,
      CO(0) => range_s0_carry_n_3,
      CYINIT => '1',
      DI(3) => range_s0_carry_i_1_n_0,
      DI(2) => range_s0_carry_i_2_n_0,
      DI(1) => range_s0_carry_i_3_n_0,
      DI(0) => range_s0_carry_i_4_n_0,
      O(3 downto 0) => NLW_range_s0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => range_s0_carry_i_5_n_0,
      S(2) => range_s0_carry_i_6_n_0,
      S(1) => range_s0_carry_i_7_n_0,
      S(0) => range_s0_carry_i_8_n_0
    );
\range_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => range_s0_carry_n_0,
      CO(3) => \^range_s\(0),
      CO(2) => \range_s0_carry__0_n_1\,
      CO(1) => \range_s0_carry__0_n_2\,
      CO(0) => \range_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \range_s0_carry__0_i_1_n_0\,
      DI(2) => \range_s0_carry__0_i_2_n_0\,
      DI(1) => \range_s0_carry__0_i_3_n_0\,
      DI(0) => \range_s0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_range_s0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \range_s0_carry__0_i_5_n_0\,
      S(2) => \range_s0_carry__0_i_6_n_0\,
      S(1) => \range_s0_carry__0_i_7_n_0\,
      S(0) => \range_s0_carry__0_i_8_n_0\
    );
\range_s0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(14),
      I1 => max_i(14),
      I2 => max_i(15),
      I3 => \^counter_o\(15),
      O => \range_s0_carry__0_i_1_n_0\
    );
\range_s0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(12),
      I1 => max_i(12),
      I2 => max_i(13),
      I3 => \^counter_o\(13),
      O => \range_s0_carry__0_i_2_n_0\
    );
\range_s0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(10),
      I1 => max_i(10),
      I2 => max_i(11),
      I3 => \^counter_o\(11),
      O => \range_s0_carry__0_i_3_n_0\
    );
\range_s0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(8),
      I1 => max_i(8),
      I2 => max_i(9),
      I3 => \^counter_o\(9),
      O => \range_s0_carry__0_i_4_n_0\
    );
\range_s0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(14),
      I1 => max_i(14),
      I2 => \^counter_o\(15),
      I3 => max_i(15),
      O => \range_s0_carry__0_i_5_n_0\
    );
\range_s0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(12),
      I1 => max_i(12),
      I2 => \^counter_o\(13),
      I3 => max_i(13),
      O => \range_s0_carry__0_i_6_n_0\
    );
\range_s0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(10),
      I1 => max_i(10),
      I2 => \^counter_o\(11),
      I3 => max_i(11),
      O => \range_s0_carry__0_i_7_n_0\
    );
\range_s0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(8),
      I1 => max_i(8),
      I2 => \^counter_o\(9),
      I3 => max_i(9),
      O => \range_s0_carry__0_i_8_n_0\
    );
range_s0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(6),
      I1 => max_i(6),
      I2 => max_i(7),
      I3 => \^counter_o\(7),
      O => range_s0_carry_i_1_n_0
    );
range_s0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(4),
      I1 => max_i(4),
      I2 => max_i(5),
      I3 => \^counter_o\(5),
      O => range_s0_carry_i_2_n_0
    );
range_s0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(2),
      I1 => max_i(2),
      I2 => max_i(3),
      I3 => \^counter_o\(3),
      O => range_s0_carry_i_3_n_0
    );
range_s0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^counter_o\(0),
      I1 => max_i(0),
      I2 => max_i(1),
      I3 => \^counter_o\(1),
      O => range_s0_carry_i_4_n_0
    );
range_s0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(6),
      I1 => max_i(6),
      I2 => \^counter_o\(7),
      I3 => max_i(7),
      O => range_s0_carry_i_5_n_0
    );
range_s0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(4),
      I1 => max_i(4),
      I2 => \^counter_o\(5),
      I3 => max_i(5),
      O => range_s0_carry_i_6_n_0
    );
range_s0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(2),
      I1 => max_i(2),
      I2 => \^counter_o\(3),
      I3 => max_i(3),
      O => range_s0_carry_i_7_n_0
    );
range_s0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter_o\(0),
      I1 => max_i(0),
      I2 => \^counter_o\(1),
      I3 => max_i(1),
      O => range_s0_carry_i_8_n_0
    );
under_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => under_o_INST_0_i_1_n_0,
      I1 => under_o_INST_0_i_2_n_0,
      I2 => under_o_INST_0_i_3_n_0,
      I3 => under_o_INST_0_i_4_n_0,
      I4 => \^counter_o\(0),
      O => \^counter_r_reg[0]_0\
    );
under_o_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^counter_o\(9),
      I1 => \^counter_o\(8),
      I2 => \^counter_o\(11),
      I3 => \^counter_o\(10),
      O => under_o_INST_0_i_1_n_0
    );
under_o_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^counter_o\(13),
      I1 => \^counter_o\(12),
      I2 => \^counter_o\(15),
      I3 => \^counter_o\(14),
      O => under_o_INST_0_i_2_n_0
    );
under_o_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^counter_o\(1),
      I1 => \^counter_o\(3),
      I2 => \^counter_o\(2),
      O => under_o_INST_0_i_3_n_0
    );
under_o_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^counter_o\(5),
      I1 => \^counter_o\(4),
      I2 => \^counter_o\(7),
      I3 => \^counter_o\(6),
      O => under_o_INST_0_i_4_n_0
    );
updown_o_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4FF"
    )
        port map (
      I0 => \^range_s\(0),
      I1 => updown_r,
      I2 => \^counter_r_reg[0]_0\,
      I3 => sawtri_i,
      O => \^updown_o\
    );
updown_r_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_i,
      CE => '1',
      D => \^updown_o\,
      Q => updown_r,
      S => \counter_r[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_counter_updown_0_0 is
  port (
    counter_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    updown_o : out STD_LOGIC;
    over_o : out STD_LOGIC;
    under_o : out STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sawtri_i : in STD_LOGIC;
    resetn_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_counter_updown_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_counter_updown_0_0 : entity is "pwm_controller_counter_updown_0_0,counter_updown,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_counter_updown_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_counter_updown_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_counter_updown_0_0 : entity is "counter_updown,Vivado 2022.2";
end pwm_controller_counter_updown_0_0;

architecture STRUCTURE of pwm_controller_counter_updown_0_0 is
begin
U0: entity work.pwm_controller_counter_updown_0_0_counter_updown
     port map (
      clk_i => clk_i,
      counter_o(15 downto 0) => counter_o(15 downto 0),
      \counter_r_reg[0]_0\ => under_o,
      max_i(15 downto 0) => max_i(15 downto 0),
      range_s(0) => over_o,
      resetn_i => resetn_i,
      sawtri_i => sawtri_i,
      updown_o => updown_o
    );
end STRUCTURE;
