-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue Apr 11 09:59:24 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_sync_v1_1_0 -prefix
--               pwm_controller_sync_v1_1_0_ pwm_controller_sync_v1_1_0_sim_netlist.vhdl
-- Design      : pwm_controller_sync_v1_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v1_1_0_sync_v1 is
  port (
    trunc_d : out STD_LOGIC_VECTOR ( 15 downto 0 );
    shifted_d : out STD_LOGIC_VECTOR ( 15 downto 0 );
    trigger_o : out STD_LOGIC;
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    delay_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mask_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end pwm_controller_sync_v1_1_0_sync_v1;

architecture STRUCTURE of pwm_controller_sync_v1_1_0_sync_v1 is
  signal delayed_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \delayed_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__0_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__0_n_1\ : STD_LOGIC;
  signal \delayed_s_carry__0_n_2\ : STD_LOGIC;
  signal \delayed_s_carry__0_n_3\ : STD_LOGIC;
  signal \delayed_s_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__1_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__1_n_1\ : STD_LOGIC;
  signal \delayed_s_carry__1_n_2\ : STD_LOGIC;
  signal \delayed_s_carry__1_n_3\ : STD_LOGIC;
  signal \delayed_s_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \delayed_s_carry__2_n_1\ : STD_LOGIC;
  signal \delayed_s_carry__2_n_2\ : STD_LOGIC;
  signal \delayed_s_carry__2_n_3\ : STD_LOGIC;
  signal delayed_s_carry_i_1_n_0 : STD_LOGIC;
  signal delayed_s_carry_i_2_n_0 : STD_LOGIC;
  signal delayed_s_carry_i_3_n_0 : STD_LOGIC;
  signal delayed_s_carry_i_4_n_0 : STD_LOGIC;
  signal delayed_s_carry_n_0 : STD_LOGIC;
  signal delayed_s_carry_n_1 : STD_LOGIC;
  signal delayed_s_carry_n_2 : STD_LOGIC;
  signal delayed_s_carry_n_3 : STD_LOGIC;
  signal \^shifted_d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \shifted_d[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \shifted_d[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \shifted_d[15]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \shifted_d[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \shifted_d[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \shifted_d[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal trigger_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal \^trunc_d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \trunc_d[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \trunc_d[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \NLW_delayed_s_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delayed_s_carry : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shifted_d[10]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shifted_d[11]_INST_0_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shifted_d[12]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shifted_d[13]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shifted_d[14]_INST_0_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \shifted_d[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shifted_d[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shifted_d[4]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shifted_d[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shifted_d[6]_INST_0_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shifted_d[8]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \shifted_d[9]_INST_0_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \trunc_d[2]_INST_0_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \trunc_d[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \trunc_d[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \trunc_d[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \trunc_d[7]_INST_0\ : label is "soft_lutpair4";
begin
  shifted_d(15 downto 0) <= \^shifted_d\(15 downto 0);
  trunc_d(15 downto 0) <= \^trunc_d\(15 downto 0);
delayed_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delayed_s_carry_n_0,
      CO(2) => delayed_s_carry_n_1,
      CO(1) => delayed_s_carry_n_2,
      CO(0) => delayed_s_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => counter_i(3 downto 0),
      O(3 downto 0) => delayed_s(3 downto 0),
      S(3) => delayed_s_carry_i_1_n_0,
      S(2) => delayed_s_carry_i_2_n_0,
      S(1) => delayed_s_carry_i_3_n_0,
      S(0) => delayed_s_carry_i_4_n_0
    );
\delayed_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delayed_s_carry_n_0,
      CO(3) => \delayed_s_carry__0_n_0\,
      CO(2) => \delayed_s_carry__0_n_1\,
      CO(1) => \delayed_s_carry__0_n_2\,
      CO(0) => \delayed_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_i(7 downto 4),
      O(3 downto 0) => delayed_s(7 downto 4),
      S(3) => \delayed_s_carry__0_i_1_n_0\,
      S(2) => \delayed_s_carry__0_i_2_n_0\,
      S(1) => \delayed_s_carry__0_i_3_n_0\,
      S(0) => \delayed_s_carry__0_i_4_n_0\
    );
\delayed_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(7),
      I1 => delay_i(7),
      O => \delayed_s_carry__0_i_1_n_0\
    );
\delayed_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(6),
      I1 => delay_i(6),
      O => \delayed_s_carry__0_i_2_n_0\
    );
\delayed_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(5),
      I1 => delay_i(5),
      O => \delayed_s_carry__0_i_3_n_0\
    );
\delayed_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(4),
      I1 => delay_i(4),
      O => \delayed_s_carry__0_i_4_n_0\
    );
\delayed_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayed_s_carry__0_n_0\,
      CO(3) => \delayed_s_carry__1_n_0\,
      CO(2) => \delayed_s_carry__1_n_1\,
      CO(1) => \delayed_s_carry__1_n_2\,
      CO(0) => \delayed_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counter_i(11 downto 8),
      O(3 downto 0) => delayed_s(11 downto 8),
      S(3) => \delayed_s_carry__1_i_1_n_0\,
      S(2) => \delayed_s_carry__1_i_2_n_0\,
      S(1) => \delayed_s_carry__1_i_3_n_0\,
      S(0) => \delayed_s_carry__1_i_4_n_0\
    );
\delayed_s_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(11),
      O => \delayed_s_carry__1_i_1_n_0\
    );
\delayed_s_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(10),
      O => \delayed_s_carry__1_i_2_n_0\
    );
\delayed_s_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(9),
      O => \delayed_s_carry__1_i_3_n_0\
    );
\delayed_s_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(8),
      I1 => delay_i(8),
      O => \delayed_s_carry__1_i_4_n_0\
    );
\delayed_s_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delayed_s_carry__1_n_0\,
      CO(3) => \NLW_delayed_s_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \delayed_s_carry__2_n_1\,
      CO(1) => \delayed_s_carry__2_n_2\,
      CO(0) => \delayed_s_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => counter_i(14 downto 12),
      O(3 downto 0) => delayed_s(15 downto 12),
      S(3) => \delayed_s_carry__2_i_1_n_0\,
      S(2) => \delayed_s_carry__2_i_2_n_0\,
      S(1) => \delayed_s_carry__2_i_3_n_0\,
      S(0) => \delayed_s_carry__2_i_4_n_0\
    );
\delayed_s_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(15),
      O => \delayed_s_carry__2_i_1_n_0\
    );
\delayed_s_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(14),
      O => \delayed_s_carry__2_i_2_n_0\
    );
\delayed_s_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(13),
      O => \delayed_s_carry__2_i_3_n_0\
    );
\delayed_s_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(12),
      O => \delayed_s_carry__2_i_4_n_0\
    );
delayed_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(3),
      I1 => delay_i(3),
      O => delayed_s_carry_i_1_n_0
    );
delayed_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(2),
      I1 => delay_i(2),
      O => delayed_s_carry_i_2_n_0
    );
delayed_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(1),
      I1 => delay_i(1),
      O => delayed_s_carry_i_3_n_0
    );
delayed_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(0),
      I1 => delay_i(0),
      O => delayed_s_carry_i_4_n_0
    );
\shifted_d[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => shift_i(1),
      I1 => shift_i(3),
      I2 => delayed_s(0),
      I3 => shift_i(2),
      I4 => shift_i(0),
      O => \^shifted_d\(0)
    );
\shifted_d[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[10]_INST_0_i_1_n_0\,
      I1 => \shifted_d[12]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[11]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[13]_INST_0_i_1_n_0\,
      O => \^shifted_d\(10)
    );
\shifted_d[10]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => delayed_s(3),
      I1 => shift_i(2),
      I2 => delayed_s(7),
      I3 => shift_i(3),
      O => \shifted_d[10]_INST_0_i_1_n_0\
    );
\shifted_d[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[11]_INST_0_i_1_n_0\,
      I1 => \shifted_d[13]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[12]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[14]_INST_0_i_1_n_0\,
      O => \^shifted_d\(11)
    );
\shifted_d[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F00ACAC"
    )
        port map (
      I0 => delayed_s(0),
      I1 => delayed_s(8),
      I2 => shift_i(3),
      I3 => delayed_s(4),
      I4 => shift_i(2),
      O => \shifted_d[11]_INST_0_i_1_n_0\
    );
\shifted_d[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[12]_INST_0_i_1_n_0\,
      I1 => \shifted_d[14]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[13]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[15]_INST_0_i_1_n_0\,
      O => \^shifted_d\(12)
    );
\shifted_d[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => delayed_s(5),
      I1 => shift_i(2),
      I2 => delayed_s(1),
      I3 => shift_i(3),
      I4 => delayed_s(9),
      O => \shifted_d[12]_INST_0_i_1_n_0\
    );
\shifted_d[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[13]_INST_0_i_1_n_0\,
      I1 => \shifted_d[15]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[14]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[15]_INST_0_i_3_n_0\,
      O => \^shifted_d\(13)
    );
\shifted_d[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => delayed_s(6),
      I1 => shift_i(2),
      I2 => delayed_s(2),
      I3 => shift_i(3),
      I4 => delayed_s(10),
      O => \shifted_d[13]_INST_0_i_1_n_0\
    );
\shifted_d[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[14]_INST_0_i_1_n_0\,
      I1 => \shifted_d[15]_INST_0_i_3_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[15]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[15]_INST_0_i_2_n_0\,
      O => \^shifted_d\(14)
    );
\shifted_d[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => delayed_s(7),
      I1 => shift_i(2),
      I2 => delayed_s(3),
      I3 => shift_i(3),
      I4 => delayed_s(11),
      O => \shifted_d[14]_INST_0_i_1_n_0\
    );
\shifted_d[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[15]_INST_0_i_1_n_0\,
      I1 => \shifted_d[15]_INST_0_i_2_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[15]_INST_0_i_3_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[15]_INST_0_i_4_n_0\,
      O => \^shifted_d\(15)
    );
\shifted_d[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(0),
      I1 => delayed_s(8),
      I2 => shift_i(2),
      I3 => delayed_s(4),
      I4 => shift_i(3),
      I5 => delayed_s(12),
      O => \shifted_d[15]_INST_0_i_1_n_0\
    );
\shifted_d[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(2),
      I1 => delayed_s(10),
      I2 => shift_i(2),
      I3 => delayed_s(6),
      I4 => shift_i(3),
      I5 => delayed_s(14),
      O => \shifted_d[15]_INST_0_i_2_n_0\
    );
\shifted_d[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(1),
      I1 => delayed_s(9),
      I2 => shift_i(2),
      I3 => delayed_s(5),
      I4 => shift_i(3),
      I5 => delayed_s(13),
      O => \shifted_d[15]_INST_0_i_3_n_0\
    );
\shifted_d[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(3),
      I1 => delayed_s(11),
      I2 => shift_i(2),
      I3 => delayed_s(7),
      I4 => shift_i(3),
      I5 => delayed_s(15),
      O => \shifted_d[15]_INST_0_i_4_n_0\
    );
\shifted_d[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003100000020"
    )
        port map (
      I0 => shift_i(0),
      I1 => shift_i(2),
      I2 => delayed_s(0),
      I3 => shift_i(3),
      I4 => shift_i(1),
      I5 => delayed_s(1),
      O => \^shifted_d\(1)
    );
\shifted_d[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11111111111D1111"
    )
        port map (
      I0 => \shifted_d[3]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => shift_i(2),
      I3 => shift_i(3),
      I4 => delayed_s(1),
      I5 => shift_i(1),
      O => \^shifted_d\(2)
    );
\shifted_d[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \shifted_d[4]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \shifted_d[3]_INST_0_i_1_n_0\,
      O => \^shifted_d\(3)
    );
\shifted_d[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF4F7"
    )
        port map (
      I0 => delayed_s(0),
      I1 => shift_i(1),
      I2 => shift_i(2),
      I3 => delayed_s(2),
      I4 => shift_i(3),
      O => \shifted_d[3]_INST_0_i_1_n_0\
    );
\shifted_d[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \shifted_d[5]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \shifted_d[4]_INST_0_i_1_n_0\,
      O => \^shifted_d\(4)
    );
\shifted_d[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF4FFF7"
    )
        port map (
      I0 => delayed_s(1),
      I1 => shift_i(1),
      I2 => shift_i(2),
      I3 => shift_i(3),
      I4 => delayed_s(3),
      O => \shifted_d[4]_INST_0_i_1_n_0\
    );
\shifted_d[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \shifted_d[6]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \shifted_d[5]_INST_0_i_1_n_0\,
      O => \^shifted_d\(5)
    );
\shifted_d[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCF44FFFFCF77"
    )
        port map (
      I0 => delayed_s(2),
      I1 => shift_i(1),
      I2 => delayed_s(0),
      I3 => shift_i(2),
      I4 => shift_i(3),
      I5 => delayed_s(4),
      O => \shifted_d[5]_INST_0_i_1_n_0\
    );
\shifted_d[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47774744"
    )
        port map (
      I0 => \shifted_d[6]_INST_0_i_1_n_0\,
      I1 => shift_i(0),
      I2 => \shifted_d[6]_INST_0_i_2_n_0\,
      I3 => shift_i(1),
      I4 => \shifted_d[9]_INST_0_i_1_n_0\,
      O => \^shifted_d\(6)
    );
\shifted_d[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF5F5FFFF303F"
    )
        port map (
      I0 => delayed_s(3),
      I1 => delayed_s(1),
      I2 => shift_i(2),
      I3 => delayed_s(5),
      I4 => shift_i(3),
      I5 => shift_i(1),
      O => \shifted_d[6]_INST_0_i_1_n_0\
    );
\shifted_d[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F7"
    )
        port map (
      I0 => delayed_s(0),
      I1 => shift_i(2),
      I2 => shift_i(3),
      I3 => delayed_s(4),
      O => \shifted_d[6]_INST_0_i_2_n_0\
    );
\shifted_d[7]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \shifted_d[7]_INST_0_i_1_n_0\,
      O => \^shifted_d\(7)
    );
\shifted_d[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AFA0AF30303F3F"
    )
        port map (
      I0 => \shifted_d[6]_INST_0_i_2_n_0\,
      I1 => \shifted_d[9]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[8]_INST_0_i_1_n_0\,
      I4 => \shifted_d[10]_INST_0_i_1_n_0\,
      I5 => shift_i(1),
      O => \shifted_d[7]_INST_0_i_1_n_0\
    );
\shifted_d[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00AAAACCCC"
    )
        port map (
      I0 => \shifted_d[9]_INST_0_i_1_n_0\,
      I1 => \shifted_d[11]_INST_0_i_1_n_0\,
      I2 => \shifted_d[8]_INST_0_i_1_n_0\,
      I3 => \shifted_d[10]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => shift_i(0),
      O => \^shifted_d\(8)
    );
\shifted_d[8]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => delayed_s(1),
      I1 => shift_i(2),
      I2 => delayed_s(5),
      I3 => shift_i(3),
      O => \shifted_d[8]_INST_0_i_1_n_0\
    );
\shifted_d[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \shifted_d[9]_INST_0_i_1_n_0\,
      I1 => \shifted_d[11]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[10]_INST_0_i_1_n_0\,
      I4 => shift_i(1),
      I5 => \shifted_d[12]_INST_0_i_1_n_0\,
      O => \^shifted_d\(9)
    );
\shifted_d[9]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3022"
    )
        port map (
      I0 => delayed_s(6),
      I1 => shift_i(3),
      I2 => delayed_s(2),
      I3 => shift_i(2),
      O => \shifted_d[9]_INST_0_i_1_n_0\
    );
trigger_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => trigger_o_INST_0_i_1_n_0,
      I1 => trigger_o_INST_0_i_2_n_0,
      I2 => trigger_o_INST_0_i_3_n_0,
      I3 => trigger_o_INST_0_i_4_n_0,
      I4 => \^trunc_d\(11),
      I5 => \^trunc_d\(13),
      O => trigger_o
    );
trigger_o_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^shifted_d\(8),
      I1 => mask_i(8),
      I2 => mask_i(14),
      I3 => \^shifted_d\(14),
      I4 => mask_i(15),
      I5 => \^shifted_d\(15),
      O => trigger_o_INST_0_i_1_n_0
    );
trigger_o_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => \^trunc_d\(6),
      I1 => mask_i(7),
      I2 => \shifted_d[7]_INST_0_i_1_n_0\,
      I3 => \^trunc_d\(4),
      I4 => \^trunc_d\(5),
      O => trigger_o_INST_0_i_2_n_0
    );
trigger_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \^shifted_d\(12),
      I1 => mask_i(12),
      I2 => \^trunc_d\(3),
      I3 => \^trunc_d\(2),
      I4 => \^trunc_d\(1),
      I5 => \^trunc_d\(0),
      O => trigger_o_INST_0_i_3_n_0
    );
trigger_o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFF088CC880088"
    )
        port map (
      I0 => trigger_o_INST_0_i_5_n_0,
      I1 => mask_i(10),
      I2 => trigger_o_INST_0_i_6_n_0,
      I3 => shift_i(0),
      I4 => trigger_o_INST_0_i_7_n_0,
      I5 => mask_i(9),
      O => trigger_o_INST_0_i_4_n_0
    );
trigger_o_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shifted_d[11]_INST_0_i_1_n_0\,
      I1 => shift_i(1),
      I2 => \shifted_d[13]_INST_0_i_1_n_0\,
      O => trigger_o_INST_0_i_5_n_0
    );
trigger_o_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3022FFFF30220000"
    )
        port map (
      I0 => delayed_s(6),
      I1 => shift_i(3),
      I2 => delayed_s(2),
      I3 => shift_i(2),
      I4 => shift_i(1),
      I5 => \shifted_d[11]_INST_0_i_1_n_0\,
      O => trigger_o_INST_0_i_6_n_0
    );
trigger_o_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => delayed_s(3),
      I1 => shift_i(2),
      I2 => delayed_s(7),
      I3 => shift_i(3),
      I4 => shift_i(1),
      I5 => \shifted_d[12]_INST_0_i_1_n_0\,
      O => trigger_o_INST_0_i_7_n_0
    );
\trunc_d[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => mask_i(0),
      I1 => shift_i(1),
      I2 => shift_i(3),
      I3 => delayed_s(0),
      I4 => shift_i(2),
      I5 => shift_i(0),
      O => \^trunc_d\(0)
    );
\trunc_d[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(10),
      I1 => \^shifted_d\(10),
      O => \^trunc_d\(10)
    );
\trunc_d[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(11),
      I1 => \^shifted_d\(11),
      O => \^trunc_d\(11)
    );
\trunc_d[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(12),
      I1 => \^shifted_d\(12),
      O => \^trunc_d\(12)
    );
\trunc_d[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(13),
      I1 => \^shifted_d\(13),
      O => \^trunc_d\(13)
    );
\trunc_d[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(14),
      I1 => \^shifted_d\(14),
      O => \^trunc_d\(14)
    );
\trunc_d[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(15),
      I1 => \^shifted_d\(15),
      O => \^trunc_d\(15)
    );
\trunc_d[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mask_i(1),
      I1 => \trunc_d[1]_INST_0_i_1_n_0\,
      O => \^trunc_d\(1)
    );
\trunc_d[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFFFFFFFDFD"
    )
        port map (
      I0 => delayed_s(1),
      I1 => shift_i(1),
      I2 => shift_i(3),
      I3 => delayed_s(0),
      I4 => shift_i(2),
      I5 => shift_i(0),
      O => \trunc_d[1]_INST_0_i_1_n_0\
    );
\trunc_d[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => mask_i(2),
      I1 => \shifted_d[3]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \trunc_d[2]_INST_0_i_1_n_0\,
      O => \^trunc_d\(2)
    );
\trunc_d[2]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => shift_i(1),
      I1 => delayed_s(1),
      I2 => shift_i(3),
      I3 => shift_i(2),
      O => \trunc_d[2]_INST_0_i_1_n_0\
    );
\trunc_d[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => mask_i(3),
      I1 => \shifted_d[4]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[3]_INST_0_i_1_n_0\,
      O => \^trunc_d\(3)
    );
\trunc_d[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => mask_i(4),
      I1 => \shifted_d[5]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[4]_INST_0_i_1_n_0\,
      O => \^trunc_d\(4)
    );
\trunc_d[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => mask_i(5),
      I1 => \shifted_d[6]_INST_0_i_1_n_0\,
      I2 => shift_i(0),
      I3 => \shifted_d[5]_INST_0_i_1_n_0\,
      O => \^trunc_d\(5)
    );
\trunc_d[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008A8AAAA08A8"
    )
        port map (
      I0 => mask_i(6),
      I1 => \shifted_d[9]_INST_0_i_1_n_0\,
      I2 => shift_i(1),
      I3 => \shifted_d[6]_INST_0_i_2_n_0\,
      I4 => shift_i(0),
      I5 => \shifted_d[6]_INST_0_i_1_n_0\,
      O => \^trunc_d\(6)
    );
\trunc_d[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mask_i(7),
      I1 => \shifted_d[7]_INST_0_i_1_n_0\,
      O => \^trunc_d\(7)
    );
\trunc_d[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(8),
      I1 => \^shifted_d\(8),
      O => \^trunc_d\(8)
    );
\trunc_d[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mask_i(9),
      I1 => \^shifted_d\(9),
      O => \^trunc_d\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v1_1_0 is
  port (
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    delay_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mask_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shifted_d : out STD_LOGIC_VECTOR ( 15 downto 0 );
    trunc_d : out STD_LOGIC_VECTOR ( 15 downto 0 );
    trigger_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_sync_v1_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_sync_v1_1_0 : entity is "pwm_controller_sync_v1_1_0,sync_v1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_sync_v1_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_sync_v1_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_sync_v1_1_0 : entity is "sync_v1,Vivado 2022.2";
end pwm_controller_sync_v1_1_0;

architecture STRUCTURE of pwm_controller_sync_v1_1_0 is
begin
U0: entity work.pwm_controller_sync_v1_1_0_sync_v1
     port map (
      counter_i(15 downto 0) => counter_i(15 downto 0),
      delay_i(8 downto 0) => delay_i(8 downto 0),
      mask_i(15 downto 0) => mask_i(15 downto 0),
      shift_i(3 downto 0) => shift_i(3 downto 0),
      shifted_d(15 downto 0) => shifted_d(15 downto 0),
      trigger_o => trigger_o,
      trunc_d(15 downto 0) => trunc_d(15 downto 0)
    );
end STRUCTURE;
