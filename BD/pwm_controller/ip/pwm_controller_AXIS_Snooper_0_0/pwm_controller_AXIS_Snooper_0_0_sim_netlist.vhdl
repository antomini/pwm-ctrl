-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:13 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_AXIS_Snooper_0_0/pwm_controller_AXIS_Snooper_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_AXIS_Snooper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper is
  port (
    adcA_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adcB_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en_out_i : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper : entity is "AXIS_Snooper";
end pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper;

architecture STRUCTURE of pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper is
  signal dataA_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dataA_r0__0\ : STD_LOGIC;
  signal dataB_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \dataB_r0__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \adcA_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adcA_o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adcA_o[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \adcA_o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adcA_o[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \adcA_o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adcA_o[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \adcA_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \adcA_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adcA_o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \adcA_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adcA_o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \adcA_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adcA_o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \adcA_o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adcA_o[9]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \adcB_o[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adcB_o[10]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adcB_o[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \adcB_o[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adcB_o[13]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \adcB_o[14]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adcB_o[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \adcB_o[1]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \adcB_o[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adcB_o[3]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \adcB_o[4]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adcB_o[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \adcB_o[6]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adcB_o[7]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \adcB_o[8]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \adcB_o[9]_INST_0\ : label is "soft_lutpair12";
begin
\adcA_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(0),
      O => adcA_o(0)
    );
\adcA_o[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(10),
      O => adcA_o(10)
    );
\adcA_o[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(11),
      O => adcA_o(11)
    );
\adcA_o[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(12),
      O => adcA_o(12)
    );
\adcA_o[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(13),
      O => adcA_o(13)
    );
\adcA_o[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(14),
      O => adcA_o(14)
    );
\adcA_o[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(15),
      O => adcA_o(15)
    );
\adcA_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(1),
      O => adcA_o(1)
    );
\adcA_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(2),
      O => adcA_o(2)
    );
\adcA_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(3),
      O => adcA_o(3)
    );
\adcA_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(4),
      O => adcA_o(4)
    );
\adcA_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(5),
      O => adcA_o(5)
    );
\adcA_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(6),
      O => adcA_o(6)
    );
\adcA_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(7),
      O => adcA_o(7)
    );
\adcA_o[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(8),
      O => adcA_o(8)
    );
\adcA_o[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataA_r(9),
      O => adcA_o(9)
    );
\adcB_o[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(0),
      O => adcB_o(0)
    );
\adcB_o[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(10),
      O => adcB_o(10)
    );
\adcB_o[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(11),
      O => adcB_o(11)
    );
\adcB_o[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(12),
      O => adcB_o(12)
    );
\adcB_o[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(13),
      O => adcB_o(13)
    );
\adcB_o[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(14),
      O => adcB_o(14)
    );
\adcB_o[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(15),
      O => adcB_o(15)
    );
\adcB_o[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(1),
      O => adcB_o(1)
    );
\adcB_o[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(2),
      O => adcB_o(2)
    );
\adcB_o[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(3),
      O => adcB_o(3)
    );
\adcB_o[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(4),
      O => adcB_o(4)
    );
\adcB_o[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(5),
      O => adcB_o(5)
    );
\adcB_o[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(6),
      O => adcB_o(6)
    );
\adcB_o[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(7),
      O => adcB_o(7)
    );
\adcB_o[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(8),
      O => adcB_o(8)
    );
\adcB_o[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en_out_i,
      I1 => dataB_r(9),
      O => adcB_o(9)
    );
dataA_r0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(4),
      I2 => s_axis_tid(1),
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(2),
      I5 => s_axis_tid(3),
      O => \dataA_r0__0\
    );
\dataA_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(0),
      Q => dataA_r(0),
      R => '0'
    );
\dataA_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(10),
      Q => dataA_r(10),
      R => '0'
    );
\dataA_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(11),
      Q => dataA_r(11),
      R => '0'
    );
\dataA_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(12),
      Q => dataA_r(12),
      R => '0'
    );
\dataA_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(13),
      Q => dataA_r(13),
      R => '0'
    );
\dataA_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(14),
      Q => dataA_r(14),
      R => '0'
    );
\dataA_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(15),
      Q => dataA_r(15),
      R => '0'
    );
\dataA_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(1),
      Q => dataA_r(1),
      R => '0'
    );
\dataA_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(2),
      Q => dataA_r(2),
      R => '0'
    );
\dataA_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(3),
      Q => dataA_r(3),
      R => '0'
    );
\dataA_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(4),
      Q => dataA_r(4),
      R => '0'
    );
\dataA_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(5),
      Q => dataA_r(5),
      R => '0'
    );
\dataA_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(6),
      Q => dataA_r(6),
      R => '0'
    );
\dataA_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(7),
      Q => dataA_r(7),
      R => '0'
    );
\dataA_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(8),
      Q => dataA_r(8),
      R => '0'
    );
\dataA_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataA_r0__0\,
      D => s_axis_tdata(9),
      Q => dataA_r(9),
      R => '0'
    );
dataB_r0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => s_axis_tid(2),
      I2 => s_axis_tid(3),
      I3 => s_axis_tid(0),
      I4 => s_axis_tid(4),
      I5 => s_axis_tid(1),
      O => \dataB_r0__0\
    );
\dataB_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(0),
      Q => dataB_r(0),
      R => '0'
    );
\dataB_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(10),
      Q => dataB_r(10),
      R => '0'
    );
\dataB_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(11),
      Q => dataB_r(11),
      R => '0'
    );
\dataB_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(12),
      Q => dataB_r(12),
      R => '0'
    );
\dataB_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(13),
      Q => dataB_r(13),
      R => '0'
    );
\dataB_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(14),
      Q => dataB_r(14),
      R => '0'
    );
\dataB_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(15),
      Q => dataB_r(15),
      R => '0'
    );
\dataB_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(1),
      Q => dataB_r(1),
      R => '0'
    );
\dataB_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(2),
      Q => dataB_r(2),
      R => '0'
    );
\dataB_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(3),
      Q => dataB_r(3),
      R => '0'
    );
\dataB_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(4),
      Q => dataB_r(4),
      R => '0'
    );
\dataB_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(5),
      Q => dataB_r(5),
      R => '0'
    );
\dataB_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(6),
      Q => dataB_r(6),
      R => '0'
    );
\dataB_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(7),
      Q => dataB_r(7),
      R => '0'
    );
\dataB_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(8),
      Q => dataB_r(8),
      R => '0'
    );
\dataB_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axis_aclk,
      CE => \dataB_r0__0\,
      D => s_axis_tdata(9),
      Q => dataB_r(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_AXIS_Snooper_0_0 is
  port (
    adcA_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adcB_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    idA_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    idB_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    en_out_i : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tid : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_AXIS_Snooper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_AXIS_Snooper_0_0 : entity is "pwm_controller_AXIS_Snooper_0_0,AXIS_Snooper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_AXIS_Snooper_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_AXIS_Snooper_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_AXIS_Snooper_0_0 : entity is "AXIS_Snooper,Vivado 2022.2";
end pwm_controller_AXIS_Snooper_0_0;

architecture STRUCTURE of pwm_controller_AXIS_Snooper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s_axis_aclk : signal is "xilinx.com:signal:clock:1.0 s_axis_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axis_aclk : signal is "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axis_aresetn RST";
  attribute x_interface_parameter of s_axis_aresetn : signal is "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 5, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute x_interface_info of s_axis_tid : signal is "xilinx.com:interface:axis:1.0 s_axis TID";
begin
  \^s_axis_tvalid\ <= s_axis_tvalid;
  idA_o(4) <= \<const1>\;
  idA_o(3) <= \<const0>\;
  idA_o(2) <= \<const1>\;
  idA_o(1) <= \<const0>\;
  idA_o(0) <= \<const1>\;
  idB_o(4) <= \<const1>\;
  idB_o(3) <= \<const1>\;
  idB_o(2) <= \<const1>\;
  idB_o(1) <= \<const0>\;
  idB_o(0) <= \<const1>\;
  s_axis_tready <= \^s_axis_tvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper
     port map (
      adcA_o(15 downto 0) => adcA_o(15 downto 0),
      adcB_o(15 downto 0) => adcB_o(15 downto 0),
      en_out_i => en_out_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(15 downto 0) => s_axis_tdata(15 downto 0),
      s_axis_tid(4 downto 0) => s_axis_tid(4 downto 0),
      s_axis_tvalid => \^s_axis_tvalid\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
