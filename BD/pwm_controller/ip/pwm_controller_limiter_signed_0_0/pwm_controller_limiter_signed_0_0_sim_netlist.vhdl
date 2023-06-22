-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 02:14:13 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_limiter_signed_0_0/pwm_controller_limiter_signed_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_limiter_signed_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_limiter_signed_0_0_limiter_signed is
  port (
    data_o : out STD_LOGIC_VECTOR ( 33 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_limiter_signed_0_0_limiter_signed : entity is "limiter_signed";
end pwm_controller_limiter_signed_0_0_limiter_signed;

architecture STRUCTURE of pwm_controller_limiter_signed_0_0_limiter_signed is
  signal data_o1 : STD_LOGIC;
  signal \data_o1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_n_0\ : STD_LOGIC;
  signal \data_o1_carry__0_n_1\ : STD_LOGIC;
  signal \data_o1_carry__0_n_2\ : STD_LOGIC;
  signal \data_o1_carry__0_n_3\ : STD_LOGIC;
  signal \data_o1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \data_o1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \data_o1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \data_o1_carry__1_n_3\ : STD_LOGIC;
  signal data_o1_carry_i_1_n_0 : STD_LOGIC;
  signal data_o1_carry_i_2_n_0 : STD_LOGIC;
  signal data_o1_carry_i_3_n_0 : STD_LOGIC;
  signal data_o1_carry_i_4_n_0 : STD_LOGIC;
  signal data_o1_carry_i_5_n_0 : STD_LOGIC;
  signal data_o1_carry_i_6_n_0 : STD_LOGIC;
  signal data_o1_carry_i_7_n_0 : STD_LOGIC;
  signal data_o1_carry_i_8_n_0 : STD_LOGIC;
  signal data_o1_carry_n_0 : STD_LOGIC;
  signal data_o1_carry_n_1 : STD_LOGIC;
  signal data_o1_carry_n_2 : STD_LOGIC;
  signal data_o1_carry_n_3 : STD_LOGIC;
  signal NLW_data_o1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_o1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_data_o1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_data_o1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of data_o1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_o1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \data_o1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_o[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_o[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_o[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_o[16]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_o[17]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_o[18]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_o[19]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_o[21]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_o[22]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_o[23]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_o[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_o[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_o[26]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_o[27]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_o[28]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_o[29]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[30]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_o[31]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_o[32]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_o[33]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_o[9]_INST_0\ : label is "soft_lutpair4";
begin
data_o1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => data_o1_carry_n_0,
      CO(2) => data_o1_carry_n_1,
      CO(1) => data_o1_carry_n_2,
      CO(0) => data_o1_carry_n_3,
      CYINIT => '0',
      DI(3) => data_o1_carry_i_1_n_0,
      DI(2) => data_o1_carry_i_2_n_0,
      DI(1) => data_o1_carry_i_3_n_0,
      DI(0) => data_o1_carry_i_4_n_0,
      O(3 downto 0) => NLW_data_o1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_o1_carry_i_5_n_0,
      S(2) => data_o1_carry_i_6_n_0,
      S(1) => data_o1_carry_i_7_n_0,
      S(0) => data_o1_carry_i_8_n_0
    );
\data_o1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => data_o1_carry_n_0,
      CO(3) => \data_o1_carry__0_n_0\,
      CO(2) => \data_o1_carry__0_n_1\,
      CO(1) => \data_o1_carry__0_n_2\,
      CO(0) => \data_o1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \data_o1_carry__0_i_1_n_0\,
      DI(2) => \data_o1_carry__0_i_2_n_0\,
      DI(1) => \data_o1_carry__0_i_3_n_0\,
      DI(0) => \data_o1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_data_o1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \data_o1_carry__0_i_5_n_0\,
      S(2) => \data_o1_carry__0_i_6_n_0\,
      S(1) => \data_o1_carry__0_i_7_n_0\,
      S(0) => \data_o1_carry__0_i_8_n_0\
    );
\data_o1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(30),
      I1 => data_i(31),
      O => \data_o1_carry__0_i_1_n_0\
    );
\data_o1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(28),
      I1 => data_i(29),
      O => \data_o1_carry__0_i_2_n_0\
    );
\data_o1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(26),
      I1 => data_i(27),
      O => \data_o1_carry__0_i_3_n_0\
    );
\data_o1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(24),
      I1 => data_i(25),
      O => \data_o1_carry__0_i_4_n_0\
    );
\data_o1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(30),
      I1 => data_i(31),
      O => \data_o1_carry__0_i_5_n_0\
    );
\data_o1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(28),
      I1 => data_i(29),
      O => \data_o1_carry__0_i_6_n_0\
    );
\data_o1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(26),
      I1 => data_i(27),
      O => \data_o1_carry__0_i_7_n_0\
    );
\data_o1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(24),
      I1 => data_i(25),
      O => \data_o1_carry__0_i_8_n_0\
    );
\data_o1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_o1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_data_o1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data_o1,
      CO(0) => \data_o1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \data_o1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_data_o1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \data_o1_carry__1_i_2_n_0\,
      S(0) => \data_o1_carry__1_i_3_n_0\
    );
\data_o1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(32),
      I1 => data_i(33),
      O => \data_o1_carry__1_i_1_n_0\
    );
\data_o1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(34),
      O => \data_o1_carry__1_i_2_n_0\
    );
\data_o1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(32),
      I1 => data_i(33),
      O => \data_o1_carry__1_i_3_n_0\
    );
data_o1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(22),
      I1 => data_i(23),
      O => data_o1_carry_i_1_n_0
    );
data_o1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(20),
      I1 => data_i(21),
      O => data_o1_carry_i_2_n_0
    );
data_o1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(18),
      I1 => data_i(19),
      O => data_o1_carry_i_3_n_0
    );
data_o1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_i(16),
      I1 => data_i(17),
      O => data_o1_carry_i_4_n_0
    );
data_o1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(22),
      I1 => data_i(23),
      O => data_o1_carry_i_5_n_0
    );
data_o1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(20),
      I1 => data_i(21),
      O => data_o1_carry_i_6_n_0
    );
data_o1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(18),
      I1 => data_i(19),
      O => data_o1_carry_i_7_n_0
    );
data_o1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_i(16),
      I1 => data_i(17),
      O => data_o1_carry_i_8_n_0
    );
\data_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(0),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(0)
    );
\data_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(10),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(10)
    );
\data_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(11),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(11)
    );
\data_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(12),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(12)
    );
\data_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(13),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(13)
    );
\data_o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(14),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(14)
    );
\data_o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(15),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(15)
    );
\data_o[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(16),
      I2 => data_i(34),
      O => data_o(16)
    );
\data_o[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(17),
      I2 => data_i(34),
      O => data_o(17)
    );
\data_o[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(18),
      I2 => data_i(34),
      O => data_o(18)
    );
\data_o[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(19),
      I2 => data_i(34),
      O => data_o(19)
    );
\data_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(1),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(1)
    );
\data_o[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(20),
      I2 => data_i(34),
      O => data_o(20)
    );
\data_o[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(21),
      I2 => data_i(34),
      O => data_o(21)
    );
\data_o[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(22),
      I2 => data_i(34),
      O => data_o(22)
    );
\data_o[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(23),
      I2 => data_i(34),
      O => data_o(23)
    );
\data_o[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(24),
      I2 => data_i(34),
      O => data_o(24)
    );
\data_o[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(25),
      I2 => data_i(34),
      O => data_o(25)
    );
\data_o[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(26),
      I2 => data_i(34),
      O => data_o(26)
    );
\data_o[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(27),
      I2 => data_i(34),
      O => data_o(27)
    );
\data_o[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(28),
      I2 => data_i(34),
      O => data_o(28)
    );
\data_o[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(29),
      I2 => data_i(34),
      O => data_o(29)
    );
\data_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(2),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(2)
    );
\data_o[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(30),
      I2 => data_i(34),
      O => data_o(30)
    );
\data_o[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(31),
      I2 => data_i(34),
      O => data_o(31)
    );
\data_o[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(32),
      I2 => data_i(34),
      O => data_o(32)
    );
\data_o[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => data_o1,
      I1 => data_i(33),
      I2 => data_i(34),
      O => data_o(33)
    );
\data_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(3),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(3)
    );
\data_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(4),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(4)
    );
\data_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(5),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(5)
    );
\data_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(6),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(6)
    );
\data_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(7),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(7)
    );
\data_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(8),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(8)
    );
\data_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_i(9),
      I1 => data_o1,
      I2 => data_i(34),
      O => data_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_limiter_signed_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_limiter_signed_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_limiter_signed_0_0 : entity is "pwm_controller_limiter_signed_0_0,limiter_signed,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_limiter_signed_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_limiter_signed_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_limiter_signed_0_0 : entity is "limiter_signed,Vivado 2022.2";
end pwm_controller_limiter_signed_0_0;

architecture STRUCTURE of pwm_controller_limiter_signed_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^data_o\ : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
  data_o(34) <= \<const0>\;
  data_o(33 downto 0) <= \^data_o\(33 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.pwm_controller_limiter_signed_0_0_limiter_signed
     port map (
      data_i(34 downto 0) => data_i(34 downto 0),
      data_o(33 downto 0) => \^data_o\(33 downto 0)
    );
end STRUCTURE;
