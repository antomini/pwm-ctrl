-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Apr 12 18:26:45 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_saturator_v0_0_0/pwm_controller_saturator_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_saturator_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_saturator_v0_0_0_saturator_v0 is
  port (
    sat_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_saturator_v0_0_0_saturator_v0 : entity is "saturator_v0";
end pwm_controller_saturator_v0_0_0_saturator_v0;

architecture STRUCTURE of pwm_controller_saturator_v0_0_0_saturator_v0 is
  signal sat1 : STD_LOGIC;
  signal \sat1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_n_0\ : STD_LOGIC;
  signal \sat1_carry__0_n_1\ : STD_LOGIC;
  signal \sat1_carry__0_n_2\ : STD_LOGIC;
  signal \sat1_carry__0_n_3\ : STD_LOGIC;
  signal \sat1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sat1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal sat1_carry_i_1_n_0 : STD_LOGIC;
  signal sat1_carry_i_2_n_0 : STD_LOGIC;
  signal sat1_carry_i_3_n_0 : STD_LOGIC;
  signal sat1_carry_i_4_n_0 : STD_LOGIC;
  signal sat1_carry_i_5_n_0 : STD_LOGIC;
  signal sat1_carry_i_6_n_0 : STD_LOGIC;
  signal sat1_carry_i_7_n_0 : STD_LOGIC;
  signal sat1_carry_i_8_n_0 : STD_LOGIC;
  signal sat1_carry_n_0 : STD_LOGIC;
  signal sat1_carry_n_1 : STD_LOGIC;
  signal sat1_carry_n_2 : STD_LOGIC;
  signal sat1_carry_n_3 : STD_LOGIC;
  signal NLW_sat1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sat1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sat1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sat1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sat1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sat1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sat1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sat_out[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sat_out[10]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sat_out[11]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sat_out[12]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sat_out[13]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sat_out[14]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sat_out[15]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sat_out[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sat_out[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sat_out[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sat_out[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sat_out[5]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sat_out[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sat_out[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sat_out[8]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sat_out[9]_INST_0\ : label is "soft_lutpair3";
begin
sat1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sat1_carry_n_0,
      CO(2) => sat1_carry_n_1,
      CO(1) => sat1_carry_n_2,
      CO(0) => sat1_carry_n_3,
      CYINIT => '0',
      DI(3) => sat1_carry_i_1_n_0,
      DI(2) => sat1_carry_i_2_n_0,
      DI(1) => sat1_carry_i_3_n_0,
      DI(0) => sat1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sat1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sat1_carry_i_5_n_0,
      S(2) => sat1_carry_i_6_n_0,
      S(1) => sat1_carry_i_7_n_0,
      S(0) => sat1_carry_i_8_n_0
    );
\sat1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sat1_carry_n_0,
      CO(3) => \sat1_carry__0_n_0\,
      CO(2) => \sat1_carry__0_n_1\,
      CO(1) => \sat1_carry__0_n_2\,
      CO(0) => \sat1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sat1_carry__0_i_1_n_0\,
      DI(2) => \sat1_carry__0_i_2_n_0\,
      DI(1) => \sat1_carry__0_i_3_n_0\,
      DI(0) => \sat1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_sat1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sat1_carry__0_i_5_n_0\,
      S(2) => \sat1_carry__0_i_6_n_0\,
      S(1) => \sat1_carry__0_i_7_n_0\,
      S(0) => \sat1_carry__0_i_8_n_0\
    );
\sat1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(31),
      O => \sat1_carry__0_i_1_n_0\
    );
\sat1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(29),
      O => \sat1_carry__0_i_2_n_0\
    );
\sat1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(27),
      O => \sat1_carry__0_i_3_n_0\
    );
\sat1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(25),
      O => \sat1_carry__0_i_4_n_0\
    );
\sat1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(30),
      I1 => data_in(31),
      O => \sat1_carry__0_i_5_n_0\
    );
\sat1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(28),
      I1 => data_in(29),
      O => \sat1_carry__0_i_6_n_0\
    );
\sat1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in(27),
      O => \sat1_carry__0_i_7_n_0\
    );
\sat1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in(25),
      O => \sat1_carry__0_i_8_n_0\
    );
\sat1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sat1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_sat1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => sat1,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sat1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_sat1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sat1_carry__1_i_2_n_0\
    );
\sat1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data_in(32),
      I1 => data_in(33),
      O => \sat1_carry__1_i_1_n_0\
    );
\sat1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(32),
      I1 => data_in(33),
      O => \sat1_carry__1_i_2_n_0\
    );
sat1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(22),
      I1 => data_in(23),
      O => sat1_carry_i_1_n_0
    );
sat1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(20),
      I1 => data_in(21),
      O => sat1_carry_i_2_n_0
    );
sat1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(18),
      I1 => data_in(19),
      O => sat1_carry_i_3_n_0
    );
sat1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data_in(16),
      I1 => data_in(17),
      O => sat1_carry_i_4_n_0
    );
sat1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(22),
      I1 => data_in(23),
      O => sat1_carry_i_5_n_0
    );
sat1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(20),
      I1 => data_in(21),
      O => sat1_carry_i_6_n_0
    );
sat1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(18),
      I1 => data_in(19),
      O => sat1_carry_i_7_n_0
    );
sat1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(16),
      I1 => data_in(17),
      O => sat1_carry_i_8_n_0
    );
\sat_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(0),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(0)
    );
\sat_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(10),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(10)
    );
\sat_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(11),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(11)
    );
\sat_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(12),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(12)
    );
\sat_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(13),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(13)
    );
\sat_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(14),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(14)
    );
\sat_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(15),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(15)
    );
\sat_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(1),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(1)
    );
\sat_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(2),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(2)
    );
\sat_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(3),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(3)
    );
\sat_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(4),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(4)
    );
\sat_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(5),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(5)
    );
\sat_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(6),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(6)
    );
\sat_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(7),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(7)
    );
\sat_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(8),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(8)
    );
\sat_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => data_in(9),
      I1 => sat1,
      I2 => data_in(33),
      O => sat_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_saturator_v0_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    sat_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_saturator_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_saturator_v0_0_0 : entity is "pwm_controller_saturator_v0_0_0,saturator_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_saturator_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_saturator_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_saturator_v0_0_0 : entity is "saturator_v0,Vivado 2022.2";
end pwm_controller_saturator_v0_0_0;

architecture STRUCTURE of pwm_controller_saturator_v0_0_0 is
begin
U0: entity work.pwm_controller_saturator_v0_0_0_saturator_v0
     port map (
      data_in(33 downto 0) => data_in(33 downto 0),
      sat_out(15 downto 0) => sat_out(15 downto 0)
    );
end STRUCTURE;
