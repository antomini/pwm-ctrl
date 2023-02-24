-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Feb 23 12:48:13 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_sync_v1_0_0/pwm_controller_sync_v1_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_sync_v1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v1_0_0_sync_v1 is
  port (
    trigger_o : out STD_LOGIC;
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    delay_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mask_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_sync_v1_0_0_sync_v1 : entity is "sync_v1";
end pwm_controller_sync_v1_0_0_sync_v1;

architecture STRUCTURE of pwm_controller_sync_v1_0_0_sync_v1 is
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
  signal trigger_o_INST_0_i_10_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_11_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_12_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_13_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_14_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_15_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_16_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_17_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_18_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_19_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_20_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_21_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_22_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_23_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_4_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_5_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_6_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_7_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_8_n_0 : STD_LOGIC;
  signal trigger_o_INST_0_i_9_n_0 : STD_LOGIC;
  signal \NLW_delayed_s_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of delayed_s_carry : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delayed_s_carry__2\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_17 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_19 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_20 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_21 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_22 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of trigger_o_INST_0_i_23 : label is "soft_lutpair2";
begin
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
\delayed_s_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_i(8),
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
trigger_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => trigger_o_INST_0_i_1_n_0,
      I1 => trigger_o_INST_0_i_2_n_0,
      I2 => mask_i(4),
      I3 => trigger_o_INST_0_i_3_n_0,
      I4 => trigger_o_INST_0_i_4_n_0,
      I5 => trigger_o_INST_0_i_5_n_0,
      O => trigger_o
    );
trigger_o_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => trigger_o_INST_0_i_6_n_0,
      I1 => mask_i(8),
      I2 => trigger_o_INST_0_i_7_n_0,
      I3 => mask_i(11),
      I4 => trigger_o_INST_0_i_8_n_0,
      O => trigger_o_INST_0_i_1_n_0
    );
trigger_o_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0707077777770777"
    )
        port map (
      I0 => trigger_o_INST_0_i_17_n_0,
      I1 => mask_i(5),
      I2 => mask_i(15),
      I3 => delayed_s(15),
      I4 => shift_i(1),
      I5 => delayed_s(13),
      O => trigger_o_INST_0_i_10_n_0
    );
trigger_o_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(7),
      I1 => delayed_s(9),
      I2 => shift_i(0),
      I3 => delayed_s(8),
      I4 => shift_i(1),
      I5 => delayed_s(10),
      O => trigger_o_INST_0_i_11_n_0
    );
trigger_o_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000047FF47FF47FF"
    )
        port map (
      I0 => delayed_s(2),
      I1 => shift_i(1),
      I2 => delayed_s(4),
      I3 => mask_i(5),
      I4 => trigger_o_INST_0_i_20_n_0,
      I5 => mask_i(14),
      O => trigger_o_INST_0_i_12_n_0
    );
trigger_o_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8080808A808"
    )
        port map (
      I0 => mask_i(3),
      I1 => trigger_o_INST_0_i_21_n_0,
      I2 => shift_i(0),
      I3 => delayed_s(2),
      I4 => shift_i(1),
      I5 => delayed_s(0),
      O => trigger_o_INST_0_i_13_n_0
    );
trigger_o_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFACCF0F0AA0000"
    )
        port map (
      I0 => mask_i(0),
      I1 => mask_i(2),
      I2 => mask_i(1),
      I3 => shift_i(0),
      I4 => delayed_s(0),
      I5 => delayed_s(1),
      O => trigger_o_INST_0_i_14_n_0
    );
trigger_o_INST_0_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(6),
      I1 => delayed_s(8),
      I2 => shift_i(0),
      I3 => delayed_s(7),
      I4 => shift_i(1),
      I5 => delayed_s(9),
      O => trigger_o_INST_0_i_15_n_0
    );
trigger_o_INST_0_i_16: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8C088C088C0"
    )
        port map (
      I0 => trigger_o_INST_0_i_22_n_0,
      I1 => mask_i(12),
      I2 => trigger_o_INST_0_i_23_n_0,
      I3 => shift_i(0),
      I4 => trigger_o_INST_0_i_20_n_0,
      I5 => mask_i(13),
      O => trigger_o_INST_0_i_16_n_0
    );
trigger_o_INST_0_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(3),
      I1 => shift_i(1),
      I2 => delayed_s(5),
      O => trigger_o_INST_0_i_17_n_0
    );
trigger_o_INST_0_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(4),
      I1 => shift_i(1),
      I2 => delayed_s(6),
      O => trigger_o_INST_0_i_18_n_0
    );
trigger_o_INST_0_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(5),
      I1 => shift_i(1),
      I2 => delayed_s(7),
      O => trigger_o_INST_0_i_19_n_0
    );
trigger_o_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(1),
      I1 => delayed_s(3),
      I2 => shift_i(0),
      I3 => delayed_s(2),
      I4 => shift_i(1),
      I5 => delayed_s(4),
      O => trigger_o_INST_0_i_2_n_0
    );
trigger_o_INST_0_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(11),
      I1 => shift_i(1),
      I2 => delayed_s(13),
      O => trigger_o_INST_0_i_20_n_0
    );
trigger_o_INST_0_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(1),
      I1 => shift_i(1),
      I2 => delayed_s(3),
      O => trigger_o_INST_0_i_21_n_0
    );
trigger_o_INST_0_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(9),
      I1 => shift_i(1),
      I2 => delayed_s(11),
      O => trigger_o_INST_0_i_22_n_0
    );
trigger_o_INST_0_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => delayed_s(10),
      I1 => shift_i(1),
      I2 => delayed_s(12),
      O => trigger_o_INST_0_i_23_n_0
    );
trigger_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40444000"
    )
        port map (
      I0 => shift_i(0),
      I1 => mask_i(2),
      I2 => delayed_s(0),
      I3 => shift_i(1),
      I4 => delayed_s(2),
      I5 => trigger_o_INST_0_i_9_n_0,
      O => trigger_o_INST_0_i_3_n_0
    );
trigger_o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFC0D5FFD5"
    )
        port map (
      I0 => trigger_o_INST_0_i_10_n_0,
      I1 => mask_i(10),
      I2 => trigger_o_INST_0_i_11_n_0,
      I3 => shift_i(0),
      I4 => trigger_o_INST_0_i_12_n_0,
      I5 => trigger_o_INST_0_i_13_n_0,
      O => trigger_o_INST_0_i_4_n_0
    );
trigger_o_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF222"
    )
        port map (
      I0 => trigger_o_INST_0_i_14_n_0,
      I1 => shift_i(1),
      I2 => mask_i(9),
      I3 => trigger_o_INST_0_i_15_n_0,
      I4 => trigger_o_INST_0_i_16_n_0,
      O => trigger_o_INST_0_i_5_n_0
    );
trigger_o_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFF8C088C088C0"
    )
        port map (
      I0 => trigger_o_INST_0_i_17_n_0,
      I1 => mask_i(6),
      I2 => trigger_o_INST_0_i_18_n_0,
      I3 => shift_i(0),
      I4 => trigger_o_INST_0_i_19_n_0,
      I5 => mask_i(7),
      O => trigger_o_INST_0_i_6_n_0
    );
trigger_o_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(5),
      I1 => delayed_s(7),
      I2 => shift_i(0),
      I3 => delayed_s(6),
      I4 => shift_i(1),
      I5 => delayed_s(8),
      O => trigger_o_INST_0_i_7_n_0
    );
trigger_o_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => delayed_s(8),
      I1 => delayed_s(10),
      I2 => shift_i(0),
      I3 => delayed_s(9),
      I4 => shift_i(1),
      I5 => delayed_s(11),
      O => trigger_o_INST_0_i_8_n_0
    );
trigger_o_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2000000E200"
    )
        port map (
      I0 => delayed_s(14),
      I1 => shift_i(1),
      I2 => delayed_s(12),
      I3 => mask_i(14),
      I4 => shift_i(0),
      I5 => mask_i(15),
      O => trigger_o_INST_0_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v1_0_0 is
  port (
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    delay_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    shift_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mask_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    trigger_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_sync_v1_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_sync_v1_0_0 : entity is "pwm_controller_sync_v1_0_0,sync_v1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_sync_v1_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_sync_v1_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_sync_v1_0_0 : entity is "sync_v1,Vivado 2022.2";
end pwm_controller_sync_v1_0_0;

architecture STRUCTURE of pwm_controller_sync_v1_0_0 is
begin
U0: entity work.pwm_controller_sync_v1_0_0_sync_v1
     port map (
      counter_i(15 downto 0) => counter_i(15 downto 0),
      delay_i(7 downto 0) => delay_i(7 downto 0),
      mask_i(15 downto 0) => mask_i(15 downto 0),
      shift_i(1 downto 0) => shift_i(1 downto 0),
      trigger_o => trigger_o
    );
end STRUCTURE;
