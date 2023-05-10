-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 31 13:13:27 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_shiftarith_v0_0_0 -prefix
--               pwm_controller_shiftarith_v0_0_0_ pwm_controller_shiftarith_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_shiftarith_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_shiftarith_v0_0_0_shiftarith_v0 is
  port (
    sra_out : out STD_LOGIC_VECTOR ( 32 downto 0 );
    shift_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
end pwm_controller_shiftarith_v0_0_0_shiftarith_v0;

architecture STRUCTURE of pwm_controller_shiftarith_v0_0_0_shiftarith_v0 is
  signal \sra_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sra_out[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sra_out[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sra_out[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sra_out[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \sra_out[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[32]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \sra_out[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \sra_out[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sra_out[0]_INST_0_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sra_out[0]_INST_0_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sra_out[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sra_out[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sra_out[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sra_out[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sra_out[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sra_out[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sra_out[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sra_out[17]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sra_out[17]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sra_out[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sra_out[18]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sra_out[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sra_out[19]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sra_out[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sra_out[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sra_out[20]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sra_out[21]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sra_out[21]_INST_0_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sra_out[22]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sra_out[22]_INST_0_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sra_out[23]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sra_out[23]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sra_out[24]_INST_0_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sra_out[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sra_out[31]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sra_out[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sra_out[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sra_out[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sra_out[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sra_out[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sra_out[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sra_out[9]_INST_0\ : label is "soft_lutpair9";
begin
\sra_out[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sra_out[1]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[0]_INST_0_i_1_n_0\,
      I3 => shift_in(1),
      I4 => \sra_out[0]_INST_0_i_2_n_0\,
      O => sra_out(0)
    );
\sra_out[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[6]_INST_0_i_2_n_0\,
      I1 => shift_in(2),
      I2 => \sra_out[2]_INST_0_i_2_n_0\,
      O => \sra_out[0]_INST_0_i_1_n_0\
    );
\sra_out[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[4]_INST_0_i_2_n_0\,
      I1 => shift_in(2),
      I2 => \sra_out[0]_INST_0_i_3_n_0\,
      O => \sra_out[0]_INST_0_i_2_n_0\
    );
\sra_out[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(8),
      I2 => shift_in(3),
      I3 => data_in(16),
      I4 => shift_in(4),
      I5 => data_in(0),
      O => \sra_out[0]_INST_0_i_3_n_0\
    );
\sra_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[11]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[10]_INST_0_i_1_n_0\,
      O => sra_out(10)
    );
\sra_out[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[16]_INST_0_i_2_n_0\,
      I1 => \sra_out[12]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[14]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[10]_INST_0_i_2_n_0\,
      O => \sra_out[10]_INST_0_i_1_n_0\
    );
\sra_out[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(18),
      I2 => shift_in(3),
      I3 => data_in(26),
      I4 => shift_in(4),
      I5 => data_in(10),
      O => \sra_out[10]_INST_0_i_2_n_0\
    );
\sra_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[12]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[11]_INST_0_i_1_n_0\,
      O => sra_out(11)
    );
\sra_out[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[17]_INST_0_i_2_n_0\,
      I1 => \sra_out[13]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[15]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[11]_INST_0_i_2_n_0\,
      O => \sra_out[11]_INST_0_i_1_n_0\
    );
\sra_out[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(19),
      I2 => shift_in(3),
      I3 => data_in(27),
      I4 => shift_in(4),
      I5 => data_in(11),
      O => \sra_out[11]_INST_0_i_2_n_0\
    );
\sra_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[13]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[12]_INST_0_i_1_n_0\,
      O => sra_out(12)
    );
\sra_out[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[18]_INST_0_i_2_n_0\,
      I1 => \sra_out[14]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[16]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[12]_INST_0_i_2_n_0\,
      O => \sra_out[12]_INST_0_i_1_n_0\
    );
\sra_out[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(20),
      I2 => shift_in(3),
      I3 => data_in(28),
      I4 => shift_in(4),
      I5 => data_in(12),
      O => \sra_out[12]_INST_0_i_2_n_0\
    );
\sra_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[14]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[13]_INST_0_i_1_n_0\,
      O => sra_out(13)
    );
\sra_out[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[19]_INST_0_i_2_n_0\,
      I1 => \sra_out[15]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[17]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[13]_INST_0_i_2_n_0\,
      O => \sra_out[13]_INST_0_i_1_n_0\
    );
\sra_out[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(21),
      I2 => shift_in(3),
      I3 => data_in(29),
      I4 => shift_in(4),
      I5 => data_in(13),
      O => \sra_out[13]_INST_0_i_2_n_0\
    );
\sra_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[15]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[14]_INST_0_i_1_n_0\,
      O => sra_out(14)
    );
\sra_out[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[20]_INST_0_i_2_n_0\,
      I1 => \sra_out[16]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[18]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[14]_INST_0_i_2_n_0\,
      O => \sra_out[14]_INST_0_i_1_n_0\
    );
\sra_out[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(22),
      I2 => shift_in(3),
      I3 => data_in(30),
      I4 => shift_in(4),
      I5 => data_in(14),
      O => \sra_out[14]_INST_0_i_2_n_0\
    );
\sra_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[16]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[15]_INST_0_i_1_n_0\,
      O => sra_out(15)
    );
\sra_out[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[21]_INST_0_i_3_n_0\,
      I1 => \sra_out[17]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[19]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[15]_INST_0_i_2_n_0\,
      O => \sra_out[15]_INST_0_i_1_n_0\
    );
\sra_out[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(23),
      I2 => shift_in(3),
      I3 => data_in(31),
      I4 => shift_in(4),
      I5 => data_in(15),
      O => \sra_out[15]_INST_0_i_2_n_0\
    );
\sra_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[17]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[16]_INST_0_i_1_n_0\,
      O => sra_out(16)
    );
\sra_out[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[22]_INST_0_i_3_n_0\,
      I1 => \sra_out[18]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[20]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[16]_INST_0_i_2_n_0\,
      O => \sra_out[16]_INST_0_i_1_n_0\
    );
\sra_out[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(24),
      I2 => shift_in(3),
      I3 => data_in(32),
      I4 => shift_in(4),
      I5 => data_in(16),
      O => \sra_out[16]_INST_0_i_2_n_0\
    );
\sra_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[18]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[17]_INST_0_i_1_n_0\,
      O => sra_out(17)
    );
\sra_out[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[23]_INST_0_i_3_n_0\,
      I1 => \sra_out[19]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[21]_INST_0_i_3_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[17]_INST_0_i_2_n_0\,
      O => \sra_out[17]_INST_0_i_1_n_0\
    );
\sra_out[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(25),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(17),
      O => \sra_out[17]_INST_0_i_2_n_0\
    );
\sra_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[19]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[18]_INST_0_i_1_n_0\,
      O => sra_out(18)
    );
\sra_out[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[24]_INST_0_i_3_n_0\,
      I1 => \sra_out[20]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[22]_INST_0_i_3_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[18]_INST_0_i_2_n_0\,
      O => \sra_out[18]_INST_0_i_1_n_0\
    );
\sra_out[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(26),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(18),
      O => \sra_out[18]_INST_0_i_2_n_0\
    );
\sra_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[20]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[19]_INST_0_i_1_n_0\,
      O => sra_out(19)
    );
\sra_out[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[21]_INST_0_i_2_n_0\,
      I1 => \sra_out[21]_INST_0_i_3_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[23]_INST_0_i_3_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[19]_INST_0_i_2_n_0\,
      O => \sra_out[19]_INST_0_i_1_n_0\
    );
\sra_out[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(27),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(19),
      O => \sra_out[19]_INST_0_i_2_n_0\
    );
\sra_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[2]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[1]_INST_0_i_1_n_0\,
      O => sra_out(1)
    );
\sra_out[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[7]_INST_0_i_2_n_0\,
      I1 => \sra_out[3]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[5]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[1]_INST_0_i_2_n_0\,
      O => \sra_out[1]_INST_0_i_1_n_0\
    );
\sra_out[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in(9),
      I2 => shift_in(3),
      I3 => data_in(17),
      I4 => shift_in(4),
      I5 => data_in(1),
      O => \sra_out[1]_INST_0_i_2_n_0\
    );
\sra_out[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[21]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[20]_INST_0_i_1_n_0\,
      O => sra_out(20)
    );
\sra_out[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[22]_INST_0_i_2_n_0\,
      I1 => \sra_out[22]_INST_0_i_3_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[24]_INST_0_i_3_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[20]_INST_0_i_2_n_0\,
      O => \sra_out[20]_INST_0_i_1_n_0\
    );
\sra_out[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(28),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(20),
      O => \sra_out[20]_INST_0_i_2_n_0\
    );
\sra_out[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[22]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[21]_INST_0_i_1_n_0\,
      O => sra_out(21)
    );
\sra_out[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[23]_INST_0_i_2_n_0\,
      I1 => \sra_out[23]_INST_0_i_3_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[21]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[21]_INST_0_i_3_n_0\,
      O => \sra_out[21]_INST_0_i_1_n_0\
    );
\sra_out[21]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_in(3),
      I1 => data_in(33),
      I2 => shift_in(4),
      I3 => data_in(25),
      O => \sra_out[21]_INST_0_i_2_n_0\
    );
\sra_out[21]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(29),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(21),
      O => \sra_out[21]_INST_0_i_3_n_0\
    );
\sra_out[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[23]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[22]_INST_0_i_1_n_0\,
      O => sra_out(22)
    );
\sra_out[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[24]_INST_0_i_2_n_0\,
      I1 => \sra_out[24]_INST_0_i_3_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[22]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[22]_INST_0_i_3_n_0\,
      O => \sra_out[22]_INST_0_i_1_n_0\
    );
\sra_out[22]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_in(3),
      I1 => data_in(33),
      I2 => shift_in(4),
      I3 => data_in(26),
      O => \sra_out[22]_INST_0_i_2_n_0\
    );
\sra_out[22]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(30),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(22),
      O => \sra_out[22]_INST_0_i_3_n_0\
    );
\sra_out[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[24]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[23]_INST_0_i_1_n_0\,
      O => sra_out(23)
    );
\sra_out[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sra_out[25]_INST_0_i_1_n_0\,
      I1 => shift_in(1),
      I2 => \sra_out[23]_INST_0_i_2_n_0\,
      I3 => shift_in(2),
      I4 => \sra_out[23]_INST_0_i_3_n_0\,
      O => \sra_out[23]_INST_0_i_1_n_0\
    );
\sra_out[23]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_in(3),
      I1 => data_in(33),
      I2 => shift_in(4),
      I3 => data_in(27),
      O => \sra_out[23]_INST_0_i_2_n_0\
    );
\sra_out[23]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(31),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(23),
      O => \sra_out[23]_INST_0_i_3_n_0\
    );
\sra_out[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \sra_out[27]_INST_0_i_1_n_0\,
      I1 => shift_in(1),
      I2 => \sra_out[25]_INST_0_i_1_n_0\,
      I3 => shift_in(0),
      I4 => \sra_out[24]_INST_0_i_1_n_0\,
      O => sra_out(24)
    );
\sra_out[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sra_out[26]_INST_0_i_1_n_0\,
      I1 => shift_in(1),
      I2 => \sra_out[24]_INST_0_i_2_n_0\,
      I3 => shift_in(2),
      I4 => \sra_out[24]_INST_0_i_3_n_0\,
      O => \sra_out[24]_INST_0_i_1_n_0\
    );
\sra_out[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_in(3),
      I1 => data_in(33),
      I2 => shift_in(4),
      I3 => data_in(28),
      O => \sra_out[24]_INST_0_i_2_n_0\
    );
\sra_out[24]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0BBF088"
    )
        port map (
      I0 => data_in(32),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(24),
      O => \sra_out[24]_INST_0_i_3_n_0\
    );
\sra_out[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[28]_INST_0_i_1_n_0\,
      I1 => \sra_out[26]_INST_0_i_1_n_0\,
      I2 => shift_in(0),
      I3 => \sra_out[27]_INST_0_i_1_n_0\,
      I4 => shift_in(1),
      I5 => \sra_out[25]_INST_0_i_1_n_0\,
      O => sra_out(25)
    );
\sra_out[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_in(29),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(25),
      O => \sra_out[25]_INST_0_i_1_n_0\
    );
\sra_out[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[29]_INST_0_i_2_n_0\,
      I1 => \sra_out[27]_INST_0_i_1_n_0\,
      I2 => shift_in(0),
      I3 => \sra_out[28]_INST_0_i_1_n_0\,
      I4 => shift_in(1),
      I5 => \sra_out[26]_INST_0_i_1_n_0\,
      O => sra_out(26)
    );
\sra_out[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_in(30),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(26),
      O => \sra_out[26]_INST_0_i_1_n_0\
    );
\sra_out[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[30]_INST_0_i_2_n_0\,
      I1 => \sra_out[28]_INST_0_i_1_n_0\,
      I2 => shift_in(0),
      I3 => \sra_out[29]_INST_0_i_2_n_0\,
      I4 => shift_in(1),
      I5 => \sra_out[27]_INST_0_i_1_n_0\,
      O => sra_out(27)
    );
\sra_out[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_in(31),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(27),
      O => \sra_out[27]_INST_0_i_1_n_0\
    );
\sra_out[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[29]_INST_0_i_1_n_0\,
      I1 => \sra_out[29]_INST_0_i_2_n_0\,
      I2 => shift_in(0),
      I3 => \sra_out[30]_INST_0_i_2_n_0\,
      I4 => shift_in(1),
      I5 => \sra_out[28]_INST_0_i_1_n_0\,
      O => sra_out(28)
    );
\sra_out[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FB0BFF00F808"
    )
        port map (
      I0 => data_in(32),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(28),
      O => \sra_out[28]_INST_0_i_1_n_0\
    );
\sra_out[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[30]_INST_0_i_1_n_0\,
      I1 => \sra_out[30]_INST_0_i_2_n_0\,
      I2 => shift_in(0),
      I3 => \sra_out[29]_INST_0_i_1_n_0\,
      I4 => shift_in(1),
      I5 => \sra_out[29]_INST_0_i_2_n_0\,
      O => sra_out(29)
    );
\sra_out[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_in(2),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(31),
      O => \sra_out[29]_INST_0_i_1_n_0\
    );
\sra_out[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_in(2),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(29),
      O => \sra_out[29]_INST_0_i_2_n_0\
    );
\sra_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[3]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[2]_INST_0_i_1_n_0\,
      O => sra_out(2)
    );
\sra_out[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[8]_INST_0_i_2_n_0\,
      I1 => \sra_out[4]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[6]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[2]_INST_0_i_2_n_0\,
      O => \sra_out[2]_INST_0_i_1_n_0\
    );
\sra_out[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(10),
      I2 => shift_in(3),
      I3 => data_in(18),
      I4 => shift_in(4),
      I5 => data_in(2),
      O => \sra_out[2]_INST_0_i_2_n_0\
    );
\sra_out[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \sra_out[31]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[30]_INST_0_i_1_n_0\,
      I3 => shift_in(1),
      I4 => \sra_out[30]_INST_0_i_2_n_0\,
      O => sra_out(30)
    );
\sra_out[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_in(2),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(32),
      O => \sra_out[30]_INST_0_i_1_n_0\
    );
\sra_out[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F1F0E0"
    )
        port map (
      I0 => shift_in(2),
      I1 => shift_in(3),
      I2 => data_in(33),
      I3 => shift_in(4),
      I4 => data_in(30),
      O => \sra_out[30]_INST_0_i_2_n_0\
    );
\sra_out[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[32]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[31]_INST_0_i_1_n_0\,
      O => sra_out(31)
    );
\sra_out[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => shift_in(1),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(31),
      O => \sra_out[31]_INST_0_i_1_n_0\
    );
\sra_out[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(33),
      I1 => shift_in(0),
      I2 => \sra_out[32]_INST_0_i_1_n_0\,
      O => sra_out(32)
    );
\sra_out[32]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF01FF00FE00"
    )
        port map (
      I0 => shift_in(1),
      I1 => shift_in(2),
      I2 => shift_in(3),
      I3 => data_in(33),
      I4 => shift_in(4),
      I5 => data_in(32),
      O => \sra_out[32]_INST_0_i_1_n_0\
    );
\sra_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[4]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[3]_INST_0_i_1_n_0\,
      O => sra_out(3)
    );
\sra_out[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[9]_INST_0_i_2_n_0\,
      I1 => \sra_out[5]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[7]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[3]_INST_0_i_2_n_0\,
      O => \sra_out[3]_INST_0_i_1_n_0\
    );
\sra_out[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(27),
      I1 => data_in(11),
      I2 => shift_in(3),
      I3 => data_in(19),
      I4 => shift_in(4),
      I5 => data_in(3),
      O => \sra_out[3]_INST_0_i_2_n_0\
    );
\sra_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[5]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[4]_INST_0_i_1_n_0\,
      O => sra_out(4)
    );
\sra_out[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[10]_INST_0_i_2_n_0\,
      I1 => \sra_out[6]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[8]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[4]_INST_0_i_2_n_0\,
      O => \sra_out[4]_INST_0_i_1_n_0\
    );
\sra_out[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(12),
      I2 => shift_in(3),
      I3 => data_in(20),
      I4 => shift_in(4),
      I5 => data_in(4),
      O => \sra_out[4]_INST_0_i_2_n_0\
    );
\sra_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[6]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[5]_INST_0_i_1_n_0\,
      O => sra_out(5)
    );
\sra_out[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[11]_INST_0_i_2_n_0\,
      I1 => \sra_out[7]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[9]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[5]_INST_0_i_2_n_0\,
      O => \sra_out[5]_INST_0_i_1_n_0\
    );
\sra_out[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(29),
      I1 => data_in(13),
      I2 => shift_in(3),
      I3 => data_in(21),
      I4 => shift_in(4),
      I5 => data_in(5),
      O => \sra_out[5]_INST_0_i_2_n_0\
    );
\sra_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[7]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[6]_INST_0_i_1_n_0\,
      O => sra_out(6)
    );
\sra_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[12]_INST_0_i_2_n_0\,
      I1 => \sra_out[8]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[10]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[6]_INST_0_i_2_n_0\,
      O => \sra_out[6]_INST_0_i_1_n_0\
    );
\sra_out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(14),
      I2 => shift_in(3),
      I3 => data_in(22),
      I4 => shift_in(4),
      I5 => data_in(6),
      O => \sra_out[6]_INST_0_i_2_n_0\
    );
\sra_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[8]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[7]_INST_0_i_1_n_0\,
      O => sra_out(7)
    );
\sra_out[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[13]_INST_0_i_2_n_0\,
      I1 => \sra_out[9]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[11]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[7]_INST_0_i_2_n_0\,
      O => \sra_out[7]_INST_0_i_1_n_0\
    );
\sra_out[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(31),
      I1 => data_in(15),
      I2 => shift_in(3),
      I3 => data_in(23),
      I4 => shift_in(4),
      I5 => data_in(7),
      O => \sra_out[7]_INST_0_i_2_n_0\
    );
\sra_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[9]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[8]_INST_0_i_1_n_0\,
      O => sra_out(8)
    );
\sra_out[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[14]_INST_0_i_2_n_0\,
      I1 => \sra_out[10]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[12]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[8]_INST_0_i_2_n_0\,
      O => \sra_out[8]_INST_0_i_1_n_0\
    );
\sra_out[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(32),
      I1 => data_in(16),
      I2 => shift_in(3),
      I3 => data_in(24),
      I4 => shift_in(4),
      I5 => data_in(8),
      O => \sra_out[8]_INST_0_i_2_n_0\
    );
\sra_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sra_out[10]_INST_0_i_1_n_0\,
      I1 => shift_in(0),
      I2 => \sra_out[9]_INST_0_i_1_n_0\,
      O => sra_out(9)
    );
\sra_out[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sra_out[15]_INST_0_i_2_n_0\,
      I1 => \sra_out[11]_INST_0_i_2_n_0\,
      I2 => shift_in(1),
      I3 => \sra_out[13]_INST_0_i_2_n_0\,
      I4 => shift_in(2),
      I5 => \sra_out[9]_INST_0_i_2_n_0\,
      O => \sra_out[9]_INST_0_i_1_n_0\
    );
\sra_out[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(33),
      I1 => data_in(17),
      I2 => shift_in(3),
      I3 => data_in(25),
      I4 => shift_in(4),
      I5 => data_in(9),
      O => \sra_out[9]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_shiftarith_v0_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    shift_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sra_out : out STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_shiftarith_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_shiftarith_v0_0_0 : entity is "pwm_controller_shiftarith_v0_0_0,shiftarith_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_shiftarith_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_shiftarith_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_shiftarith_v0_0_0 : entity is "shiftarith_v0,Vivado 2022.2";
end pwm_controller_shiftarith_v0_0_0;

architecture STRUCTURE of pwm_controller_shiftarith_v0_0_0 is
  signal \^data_in\ : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal \^sra_out\ : STD_LOGIC_VECTOR ( 32 downto 0 );
begin
  \^data_in\(33 downto 0) <= data_in(33 downto 0);
  sra_out(33) <= \^data_in\(33);
  sra_out(32 downto 0) <= \^sra_out\(32 downto 0);
U0: entity work.pwm_controller_shiftarith_v0_0_0_shiftarith_v0
     port map (
      data_in(33 downto 0) => \^data_in\(33 downto 0),
      shift_in(4 downto 0) => shift_in(4 downto 0),
      sra_out(32 downto 0) => \^sra_out\(32 downto 0)
    );
end STRUCTURE;
