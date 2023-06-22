-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 02:14:15 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_shiftprog_signed_0_0/pwm_controller_shiftprog_signed_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_shiftprog_signed_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_shiftprog_signed_0_0_shiftprog_signed is
  port (
    data_o : out STD_LOGIC_VECTOR ( 33 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_shiftprog_signed_0_0_shiftprog_signed : entity is "shiftprog_signed";
end pwm_controller_shiftprog_signed_0_0_shiftprog_signed;

architecture STRUCTURE of pwm_controller_shiftprog_signed_0_0_shiftprog_signed is
  signal \data_o[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_o[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_o[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[32]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[32]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_o[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[26]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[27]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[28]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[29]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[30]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_o[31]_INST_0\ : label is "soft_lutpair2";
begin
\data_o[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[3]_INST_0_i_1_n_0\,
      I1 => \data_o[1]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[2]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[0]_INST_0_i_1_n_0\,
      O => data_o(0)
    );
\data_o[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(12),
      I1 => data_i(4),
      I2 => shift_i(2),
      I3 => data_i(8),
      I4 => shift_i(3),
      I5 => data_i(0),
      O => \data_o[0]_INST_0_i_1_n_0\
    );
\data_o[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[13]_INST_0_i_1_n_0\,
      I1 => \data_o[11]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[12]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[10]_INST_0_i_1_n_0\,
      O => data_o(10)
    );
\data_o[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(22),
      I1 => data_i(14),
      I2 => shift_i(2),
      I3 => data_i(18),
      I4 => shift_i(3),
      I5 => data_i(10),
      O => \data_o[10]_INST_0_i_1_n_0\
    );
\data_o[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[14]_INST_0_i_1_n_0\,
      I1 => \data_o[12]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[13]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[11]_INST_0_i_1_n_0\,
      O => data_o(11)
    );
\data_o[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(23),
      I1 => data_i(15),
      I2 => shift_i(2),
      I3 => data_i(19),
      I4 => shift_i(3),
      I5 => data_i(11),
      O => \data_o[11]_INST_0_i_1_n_0\
    );
\data_o[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[15]_INST_0_i_1_n_0\,
      I1 => \data_o[13]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[14]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[12]_INST_0_i_1_n_0\,
      O => data_o(12)
    );
\data_o[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(24),
      I1 => data_i(16),
      I2 => shift_i(2),
      I3 => data_i(20),
      I4 => shift_i(3),
      I5 => data_i(12),
      O => \data_o[12]_INST_0_i_1_n_0\
    );
\data_o[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[16]_INST_0_i_1_n_0\,
      I1 => \data_o[14]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[15]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[13]_INST_0_i_1_n_0\,
      O => data_o(13)
    );
\data_o[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(25),
      I1 => data_i(17),
      I2 => shift_i(2),
      I3 => data_i(21),
      I4 => shift_i(3),
      I5 => data_i(13),
      O => \data_o[13]_INST_0_i_1_n_0\
    );
\data_o[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[17]_INST_0_i_1_n_0\,
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[16]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[14]_INST_0_i_1_n_0\,
      O => data_o(14)
    );
\data_o[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(26),
      I1 => data_i(18),
      I2 => shift_i(2),
      I3 => data_i(22),
      I4 => shift_i(3),
      I5 => data_i(14),
      O => \data_o[14]_INST_0_i_1_n_0\
    );
\data_o[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[18]_INST_0_i_1_n_0\,
      I1 => \data_o[16]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[17]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[15]_INST_0_i_1_n_0\,
      O => data_o(15)
    );
\data_o[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(27),
      I1 => data_i(19),
      I2 => shift_i(2),
      I3 => data_i(23),
      I4 => shift_i(3),
      I5 => data_i(15),
      O => \data_o[15]_INST_0_i_1_n_0\
    );
\data_o[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[19]_INST_0_i_1_n_0\,
      I1 => \data_o[17]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[18]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[16]_INST_0_i_1_n_0\,
      O => data_o(16)
    );
\data_o[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(28),
      I1 => data_i(20),
      I2 => shift_i(2),
      I3 => data_i(24),
      I4 => shift_i(3),
      I5 => data_i(16),
      O => \data_o[16]_INST_0_i_1_n_0\
    );
\data_o[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[20]_INST_0_i_1_n_0\,
      I1 => \data_o[18]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[19]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[17]_INST_0_i_1_n_0\,
      O => data_o(17)
    );
\data_o[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(29),
      I1 => data_i(21),
      I2 => shift_i(2),
      I3 => data_i(25),
      I4 => shift_i(3),
      I5 => data_i(17),
      O => \data_o[17]_INST_0_i_1_n_0\
    );
\data_o[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[21]_INST_0_i_1_n_0\,
      I1 => \data_o[19]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[20]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[18]_INST_0_i_1_n_0\,
      O => data_o(18)
    );
\data_o[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(30),
      I1 => data_i(22),
      I2 => shift_i(2),
      I3 => data_i(26),
      I4 => shift_i(3),
      I5 => data_i(18),
      O => \data_o[18]_INST_0_i_1_n_0\
    );
\data_o[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[22]_INST_0_i_1_n_0\,
      I1 => \data_o[20]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[21]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[19]_INST_0_i_1_n_0\,
      O => data_o(19)
    );
\data_o[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(31),
      I1 => data_i(23),
      I2 => shift_i(2),
      I3 => data_i(27),
      I4 => shift_i(3),
      I5 => data_i(19),
      O => \data_o[19]_INST_0_i_1_n_0\
    );
\data_o[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[4]_INST_0_i_1_n_0\,
      I1 => \data_o[2]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[3]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[1]_INST_0_i_1_n_0\,
      O => data_o(1)
    );
\data_o[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(13),
      I1 => data_i(5),
      I2 => shift_i(2),
      I3 => data_i(9),
      I4 => shift_i(3),
      I5 => data_i(1),
      O => \data_o[1]_INST_0_i_1_n_0\
    );
\data_o[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[23]_INST_0_i_1_n_0\,
      I1 => \data_o[21]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[22]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[20]_INST_0_i_1_n_0\,
      O => data_o(20)
    );
\data_o[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(32),
      I1 => data_i(24),
      I2 => shift_i(2),
      I3 => data_i(28),
      I4 => shift_i(3),
      I5 => data_i(20),
      O => \data_o[20]_INST_0_i_1_n_0\
    );
\data_o[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[24]_INST_0_i_1_n_0\,
      I1 => \data_o[22]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[23]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[21]_INST_0_i_1_n_0\,
      O => data_o(21)
    );
\data_o[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(33),
      I1 => data_i(25),
      I2 => shift_i(2),
      I3 => data_i(29),
      I4 => shift_i(3),
      I5 => data_i(21),
      O => \data_o[21]_INST_0_i_1_n_0\
    );
\data_o[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[25]_INST_0_i_1_n_0\,
      I1 => \data_o[23]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[24]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[22]_INST_0_i_1_n_0\,
      O => data_o(22)
    );
\data_o[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(34),
      I1 => data_i(26),
      I2 => shift_i(2),
      I3 => data_i(30),
      I4 => shift_i(3),
      I5 => data_i(22),
      O => \data_o[22]_INST_0_i_1_n_0\
    );
\data_o[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[26]_INST_0_i_1_n_0\,
      I1 => \data_o[24]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[25]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[23]_INST_0_i_1_n_0\,
      O => data_o(23)
    );
\data_o[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(34),
      I1 => data_i(27),
      I2 => shift_i(2),
      I3 => data_i(31),
      I4 => shift_i(3),
      I5 => data_i(23),
      O => \data_o[23]_INST_0_i_1_n_0\
    );
\data_o[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[27]_INST_0_i_1_n_0\,
      I1 => \data_o[25]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[26]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[24]_INST_0_i_1_n_0\,
      O => data_o(24)
    );
\data_o[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(34),
      I1 => data_i(28),
      I2 => shift_i(2),
      I3 => data_i(32),
      I4 => shift_i(3),
      I5 => data_i(24),
      O => \data_o[24]_INST_0_i_1_n_0\
    );
\data_o[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[28]_INST_0_i_2_n_0\,
      I1 => \data_o[26]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[27]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[25]_INST_0_i_1_n_0\,
      O => data_o(25)
    );
\data_o[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(34),
      I1 => data_i(29),
      I2 => shift_i(2),
      I3 => data_i(33),
      I4 => shift_i(3),
      I5 => data_i(25),
      O => \data_o[25]_INST_0_i_1_n_0\
    );
\data_o[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[29]_INST_0_i_2_n_0\,
      I1 => \data_o[27]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[28]_INST_0_i_2_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[26]_INST_0_i_1_n_0\,
      O => data_o(26)
    );
\data_o[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_i(30),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(26),
      O => \data_o[26]_INST_0_i_1_n_0\
    );
\data_o[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[28]_INST_0_i_1_n_0\,
      I1 => \data_o[28]_INST_0_i_2_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[29]_INST_0_i_2_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[27]_INST_0_i_1_n_0\,
      O => data_o(27)
    );
\data_o[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_i(31),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(27),
      O => \data_o[27]_INST_0_i_1_n_0\
    );
\data_o[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[29]_INST_0_i_1_n_0\,
      I1 => \data_o[29]_INST_0_i_2_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[28]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[28]_INST_0_i_2_n_0\,
      O => data_o(28)
    );
\data_o[28]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_i(2),
      I1 => data_i(34),
      I2 => shift_i(3),
      I3 => data_i(30),
      O => \data_o[28]_INST_0_i_1_n_0\
    );
\data_o[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_i(32),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(28),
      O => \data_o[28]_INST_0_i_2_n_0\
    );
\data_o[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \data_o[30]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \data_o[29]_INST_0_i_1_n_0\,
      I3 => shift_i(1),
      I4 => \data_o[29]_INST_0_i_2_n_0\,
      O => data_o(29)
    );
\data_o[29]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_i(2),
      I1 => data_i(34),
      I2 => shift_i(3),
      I3 => data_i(31),
      O => \data_o[29]_INST_0_i_1_n_0\
    );
\data_o[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_i(33),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(29),
      O => \data_o[29]_INST_0_i_2_n_0\
    );
\data_o[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[5]_INST_0_i_1_n_0\,
      I1 => \data_o[3]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[4]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[2]_INST_0_i_1_n_0\,
      O => data_o(2)
    );
\data_o[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(14),
      I1 => data_i(6),
      I2 => shift_i(2),
      I3 => data_i(10),
      I4 => shift_i(3),
      I5 => data_i(2),
      O => \data_o[2]_INST_0_i_1_n_0\
    );
\data_o[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_o[31]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \data_o[30]_INST_0_i_1_n_0\,
      O => data_o(30)
    );
\data_o[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_i(32),
      I1 => shift_i(1),
      I2 => shift_i(2),
      I3 => data_i(34),
      I4 => shift_i(3),
      I5 => data_i(30),
      O => \data_o[30]_INST_0_i_1_n_0\
    );
\data_o[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_o[32]_INST_0_i_2_n_0\,
      I1 => shift_i(0),
      I2 => \data_o[31]_INST_0_i_1_n_0\,
      O => data_o(31)
    );
\data_o[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_i(33),
      I1 => shift_i(1),
      I2 => shift_i(2),
      I3 => data_i(34),
      I4 => shift_i(3),
      I5 => data_i(31),
      O => \data_o[31]_INST_0_i_1_n_0\
    );
\data_o[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_o[32]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \data_o[32]_INST_0_i_2_n_0\,
      O => data_o(32)
    );
\data_o[32]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_i(1),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(33),
      O => \data_o[32]_INST_0_i_1_n_0\
    );
\data_o[32]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_i(1),
      I1 => shift_i(2),
      I2 => data_i(34),
      I3 => shift_i(3),
      I4 => data_i(32),
      O => \data_o[32]_INST_0_i_2_n_0\
    );
\data_o[33]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => shift_i(0),
      I1 => shift_i(1),
      I2 => shift_i(2),
      I3 => data_i(34),
      I4 => shift_i(3),
      I5 => data_i(33),
      O => data_o(33)
    );
\data_o[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[6]_INST_0_i_1_n_0\,
      I1 => \data_o[4]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[5]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[3]_INST_0_i_1_n_0\,
      O => data_o(3)
    );
\data_o[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(15),
      I1 => data_i(7),
      I2 => shift_i(2),
      I3 => data_i(11),
      I4 => shift_i(3),
      I5 => data_i(3),
      O => \data_o[3]_INST_0_i_1_n_0\
    );
\data_o[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[7]_INST_0_i_1_n_0\,
      I1 => \data_o[5]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[6]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[4]_INST_0_i_1_n_0\,
      O => data_o(4)
    );
\data_o[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(16),
      I1 => data_i(8),
      I2 => shift_i(2),
      I3 => data_i(12),
      I4 => shift_i(3),
      I5 => data_i(4),
      O => \data_o[4]_INST_0_i_1_n_0\
    );
\data_o[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[8]_INST_0_i_1_n_0\,
      I1 => \data_o[6]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[7]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[5]_INST_0_i_1_n_0\,
      O => data_o(5)
    );
\data_o[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(17),
      I1 => data_i(9),
      I2 => shift_i(2),
      I3 => data_i(13),
      I4 => shift_i(3),
      I5 => data_i(5),
      O => \data_o[5]_INST_0_i_1_n_0\
    );
\data_o[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[9]_INST_0_i_1_n_0\,
      I1 => \data_o[7]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[8]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[6]_INST_0_i_1_n_0\,
      O => data_o(6)
    );
\data_o[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(18),
      I1 => data_i(10),
      I2 => shift_i(2),
      I3 => data_i(14),
      I4 => shift_i(3),
      I5 => data_i(6),
      O => \data_o[6]_INST_0_i_1_n_0\
    );
\data_o[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[10]_INST_0_i_1_n_0\,
      I1 => \data_o[8]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[9]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[7]_INST_0_i_1_n_0\,
      O => data_o(7)
    );
\data_o[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(19),
      I1 => data_i(11),
      I2 => shift_i(2),
      I3 => data_i(15),
      I4 => shift_i(3),
      I5 => data_i(7),
      O => \data_o[7]_INST_0_i_1_n_0\
    );
\data_o[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[11]_INST_0_i_1_n_0\,
      I1 => \data_o[9]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[10]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[8]_INST_0_i_1_n_0\,
      O => data_o(8)
    );
\data_o[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(20),
      I1 => data_i(12),
      I2 => shift_i(2),
      I3 => data_i(16),
      I4 => shift_i(3),
      I5 => data_i(8),
      O => \data_o[8]_INST_0_i_1_n_0\
    );
\data_o[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_o[12]_INST_0_i_1_n_0\,
      I1 => \data_o[10]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \data_o[11]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \data_o[9]_INST_0_i_1_n_0\,
      O => data_o(9)
    );
\data_o[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_i(21),
      I1 => data_i(13),
      I2 => shift_i(2),
      I3 => data_i(17),
      I4 => shift_i(3),
      I5 => data_i(9),
      O => \data_o[9]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_shiftprog_signed_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_shiftprog_signed_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_shiftprog_signed_0_0 : entity is "pwm_controller_shiftprog_signed_0_0,shiftprog_signed,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_shiftprog_signed_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_shiftprog_signed_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_shiftprog_signed_0_0 : entity is "shiftprog_signed,Vivado 2022.2";
end pwm_controller_shiftprog_signed_0_0;

architecture STRUCTURE of pwm_controller_shiftprog_signed_0_0 is
  signal \^data_i\ : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal \^data_o\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
  \^data_i\(34 downto 0) <= data_i(34 downto 0);
  data_o(34) <= \^data_i\(34);
  data_o(33 downto 0) <= \^data_o\(33 downto 0);
U0: entity work.pwm_controller_shiftprog_signed_0_0_shiftprog_signed
     port map (
      data_i(34 downto 0) => \^data_i\(34 downto 0),
      data_o(33 downto 0) => \^data_o\(33 downto 0),
      shift_i(3 downto 0) => shift_i(3 downto 0)
    );
end STRUCTURE;
