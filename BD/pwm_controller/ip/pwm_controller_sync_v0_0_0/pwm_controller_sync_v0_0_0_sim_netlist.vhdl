-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jan 26 10:25:42 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_sync_v0_0_0 -prefix
--               pwm_controller_sync_v0_0_0_ pwm_controller_sync_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_sync_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v0_0_0_sync_v0 is
  port (
    trigger_o : out STD_LOGIC;
    top_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    duty_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC
  );
end pwm_controller_sync_v0_0_0_sync_v0;

architecture STRUCTURE of pwm_controller_sync_v0_0_0_sync_v0 is
  signal compB_s : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal minusOp : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \minusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \minusOp_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp_carry__2_n_3\ : STD_LOGIC;
  signal minusOp_carry_i_1_n_0 : STD_LOGIC;
  signal minusOp_carry_i_2_n_0 : STD_LOGIC;
  signal minusOp_carry_i_3_n_0 : STD_LOGIC;
  signal minusOp_carry_i_4_n_0 : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal offTime_s0_out : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \offTime_s_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__0_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__0_n_1\ : STD_LOGIC;
  signal \offTime_s_carry__0_n_2\ : STD_LOGIC;
  signal \offTime_s_carry__0_n_3\ : STD_LOGIC;
  signal \offTime_s_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__1_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__1_n_1\ : STD_LOGIC;
  signal \offTime_s_carry__1_n_2\ : STD_LOGIC;
  signal \offTime_s_carry__1_n_3\ : STD_LOGIC;
  signal \offTime_s_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \offTime_s_carry__2_n_1\ : STD_LOGIC;
  signal \offTime_s_carry__2_n_2\ : STD_LOGIC;
  signal \offTime_s_carry__2_n_3\ : STD_LOGIC;
  signal offTime_s_carry_i_1_n_0 : STD_LOGIC;
  signal offTime_s_carry_i_2_n_0 : STD_LOGIC;
  signal offTime_s_carry_i_3_n_0 : STD_LOGIC;
  signal offTime_s_carry_i_4_n_0 : STD_LOGIC;
  signal offTime_s_carry_n_0 : STD_LOGIC;
  signal offTime_s_carry_n_1 : STD_LOGIC;
  signal offTime_s_carry_n_2 : STD_LOGIC;
  signal offTime_s_carry_n_3 : STD_LOGIC;
  signal trigger_o1 : STD_LOGIC;
  signal trigger_o10_out : STD_LOGIC;
  signal \trigger_o1__6_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry__0_n_3\ : STD_LOGIC;
  signal \trigger_o1__6_carry_i_1_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry_i_2_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry_i_3_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry_i_4_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry_n_0\ : STD_LOGIC;
  signal \trigger_o1__6_carry_n_1\ : STD_LOGIC;
  signal \trigger_o1__6_carry_n_2\ : STD_LOGIC;
  signal \trigger_o1__6_carry_n_3\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_3_n_1\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_3_n_2\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_3_n_3\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \trigger_o1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \trigger_o1_carry__0_n_3\ : STD_LOGIC;
  signal trigger_o1_carry_i_10_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_11_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_12_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_13_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_14_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_15_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_16_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_17_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_18_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_19_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_1_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_2_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_3_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_4_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_5_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_5_n_1 : STD_LOGIC;
  signal trigger_o1_carry_i_5_n_2 : STD_LOGIC;
  signal trigger_o1_carry_i_5_n_3 : STD_LOGIC;
  signal trigger_o1_carry_i_6_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_6_n_1 : STD_LOGIC;
  signal trigger_o1_carry_i_6_n_2 : STD_LOGIC;
  signal trigger_o1_carry_i_6_n_3 : STD_LOGIC;
  signal trigger_o1_carry_i_7_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_7_n_1 : STD_LOGIC;
  signal trigger_o1_carry_i_7_n_2 : STD_LOGIC;
  signal trigger_o1_carry_i_7_n_3 : STD_LOGIC;
  signal trigger_o1_carry_i_8_n_0 : STD_LOGIC;
  signal trigger_o1_carry_i_9_n_0 : STD_LOGIC;
  signal trigger_o1_carry_n_0 : STD_LOGIC;
  signal trigger_o1_carry_n_1 : STD_LOGIC;
  signal trigger_o1_carry_n_2 : STD_LOGIC;
  signal trigger_o1_carry_n_3 : STD_LOGIC;
  signal trigger_o_i_1_n_0 : STD_LOGIC;
  signal \NLW_minusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_offTime_s_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_offTime_s_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_trigger_o1__6_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trigger_o1__6_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_trigger_o1__6_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_trigger_o1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trigger_o1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_trigger_o1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_trigger_o1_carry__0_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of offTime_s_carry : label is 35;
  attribute ADDER_THRESHOLD of \offTime_s_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \offTime_s_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \offTime_s_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \trigger_o1_carry__0_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of trigger_o1_carry_i_5 : label is 35;
  attribute ADDER_THRESHOLD of trigger_o1_carry_i_6 : label is 35;
  attribute ADDER_THRESHOLD of trigger_o1_carry_i_7 : label is 35;
begin
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => duty_i(1),
      DI(3 downto 0) => duty_i(5 downto 2),
      O(3 downto 0) => minusOp(4 downto 1),
      S(3) => minusOp_carry_i_1_n_0,
      S(2) => minusOp_carry_i_2_n_0,
      S(1) => minusOp_carry_i_3_n_0,
      S(0) => minusOp_carry_i_4_n_0
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => duty_i(9 downto 6),
      O(3 downto 0) => minusOp(8 downto 5),
      S(3) => \minusOp_carry__0_i_1_n_0\,
      S(2) => \minusOp_carry__0_i_2_n_0\,
      S(1) => \minusOp_carry__0_i_3_n_0\,
      S(0) => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(9),
      O => \minusOp_carry__0_i_1_n_0\
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(8),
      O => \minusOp_carry__0_i_2_n_0\
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(7),
      O => \minusOp_carry__0_i_3_n_0\
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(6),
      O => \minusOp_carry__0_i_4_n_0\
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3) => \minusOp_carry__1_n_0\,
      CO(2) => \minusOp_carry__1_n_1\,
      CO(1) => \minusOp_carry__1_n_2\,
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => duty_i(13 downto 10),
      O(3 downto 0) => minusOp(12 downto 9),
      S(3) => \minusOp_carry__1_i_1_n_0\,
      S(2) => \minusOp_carry__1_i_2_n_0\,
      S(1) => \minusOp_carry__1_i_3_n_0\,
      S(0) => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(13),
      O => \minusOp_carry__1_i_1_n_0\
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(12),
      O => \minusOp_carry__1_i_2_n_0\
    );
\minusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(11),
      O => \minusOp_carry__1_i_3_n_0\
    );
\minusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(10),
      O => \minusOp_carry__1_i_4_n_0\
    );
\minusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__1_n_0\,
      CO(3) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_carry__2_n_1\,
      CO(1) => \NLW_minusOp_carry__2_CO_UNCONNECTED\(1),
      CO(0) => \minusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => duty_i(15 downto 14),
      O(3 downto 2) => \NLW_minusOp_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => minusOp(14 downto 13),
      S(3 downto 2) => B"01",
      S(1) => \minusOp_carry__2_i_1_n_0\,
      S(0) => \minusOp_carry__2_i_2_n_0\
    );
\minusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(15),
      O => \minusOp_carry__2_i_1_n_0\
    );
\minusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(14),
      O => \minusOp_carry__2_i_2_n_0\
    );
minusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(5),
      O => minusOp_carry_i_1_n_0
    );
minusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(4),
      O => minusOp_carry_i_2_n_0
    );
minusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(3),
      O => minusOp_carry_i_3_n_0
    );
minusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => duty_i(2),
      O => minusOp_carry_i_4_n_0
    );
offTime_s_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => offTime_s_carry_n_0,
      CO(2) => offTime_s_carry_n_1,
      CO(1) => offTime_s_carry_n_2,
      CO(0) => offTime_s_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => top_i(3 downto 0),
      O(3 downto 1) => offTime_s0_out(3 downto 1),
      O(0) => NLW_offTime_s_carry_O_UNCONNECTED(0),
      S(3) => offTime_s_carry_i_1_n_0,
      S(2) => offTime_s_carry_i_2_n_0,
      S(1) => offTime_s_carry_i_3_n_0,
      S(0) => offTime_s_carry_i_4_n_0
    );
\offTime_s_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => offTime_s_carry_n_0,
      CO(3) => \offTime_s_carry__0_n_0\,
      CO(2) => \offTime_s_carry__0_n_1\,
      CO(1) => \offTime_s_carry__0_n_2\,
      CO(0) => \offTime_s_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => top_i(7 downto 4),
      O(3 downto 0) => offTime_s0_out(7 downto 4),
      S(3) => \offTime_s_carry__0_i_1_n_0\,
      S(2) => \offTime_s_carry__0_i_2_n_0\,
      S(1) => \offTime_s_carry__0_i_3_n_0\,
      S(0) => \offTime_s_carry__0_i_4_n_0\
    );
\offTime_s_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(7),
      I1 => duty_i(7),
      O => \offTime_s_carry__0_i_1_n_0\
    );
\offTime_s_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(6),
      I1 => duty_i(6),
      O => \offTime_s_carry__0_i_2_n_0\
    );
\offTime_s_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(5),
      I1 => duty_i(5),
      O => \offTime_s_carry__0_i_3_n_0\
    );
\offTime_s_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(4),
      I1 => duty_i(4),
      O => \offTime_s_carry__0_i_4_n_0\
    );
\offTime_s_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \offTime_s_carry__0_n_0\,
      CO(3) => \offTime_s_carry__1_n_0\,
      CO(2) => \offTime_s_carry__1_n_1\,
      CO(1) => \offTime_s_carry__1_n_2\,
      CO(0) => \offTime_s_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => top_i(11 downto 8),
      O(3 downto 0) => offTime_s0_out(11 downto 8),
      S(3) => \offTime_s_carry__1_i_1_n_0\,
      S(2) => \offTime_s_carry__1_i_2_n_0\,
      S(1) => \offTime_s_carry__1_i_3_n_0\,
      S(0) => \offTime_s_carry__1_i_4_n_0\
    );
\offTime_s_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(11),
      I1 => duty_i(11),
      O => \offTime_s_carry__1_i_1_n_0\
    );
\offTime_s_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(10),
      I1 => duty_i(10),
      O => \offTime_s_carry__1_i_2_n_0\
    );
\offTime_s_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(9),
      I1 => duty_i(9),
      O => \offTime_s_carry__1_i_3_n_0\
    );
\offTime_s_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(8),
      I1 => duty_i(8),
      O => \offTime_s_carry__1_i_4_n_0\
    );
\offTime_s_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \offTime_s_carry__1_n_0\,
      CO(3) => \NLW_offTime_s_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \offTime_s_carry__2_n_1\,
      CO(1) => \offTime_s_carry__2_n_2\,
      CO(0) => \offTime_s_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => top_i(14 downto 12),
      O(3 downto 0) => offTime_s0_out(15 downto 12),
      S(3) => \offTime_s_carry__2_i_1_n_0\,
      S(2) => \offTime_s_carry__2_i_2_n_0\,
      S(1) => \offTime_s_carry__2_i_3_n_0\,
      S(0) => \offTime_s_carry__2_i_4_n_0\
    );
\offTime_s_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(15),
      I1 => duty_i(15),
      O => \offTime_s_carry__2_i_1_n_0\
    );
\offTime_s_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(14),
      I1 => duty_i(14),
      O => \offTime_s_carry__2_i_2_n_0\
    );
\offTime_s_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(13),
      I1 => duty_i(13),
      O => \offTime_s_carry__2_i_3_n_0\
    );
\offTime_s_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(12),
      I1 => duty_i(12),
      O => \offTime_s_carry__2_i_4_n_0\
    );
offTime_s_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(3),
      I1 => duty_i(3),
      O => offTime_s_carry_i_1_n_0
    );
offTime_s_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(2),
      I1 => duty_i(2),
      O => offTime_s_carry_i_2_n_0
    );
offTime_s_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(1),
      I1 => duty_i(1),
      O => offTime_s_carry_i_3_n_0
    );
offTime_s_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => top_i(0),
      I1 => duty_i(0),
      O => offTime_s_carry_i_4_n_0
    );
\trigger_o1__6_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \trigger_o1__6_carry_n_0\,
      CO(2) => \trigger_o1__6_carry_n_1\,
      CO(1) => \trigger_o1__6_carry_n_2\,
      CO(0) => \trigger_o1__6_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_trigger_o1__6_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \trigger_o1__6_carry_i_1_n_0\,
      S(2) => \trigger_o1__6_carry_i_2_n_0\,
      S(1) => \trigger_o1__6_carry_i_3_n_0\,
      S(0) => \trigger_o1__6_carry_i_4_n_0\
    );
\trigger_o1__6_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \trigger_o1__6_carry_n_0\,
      CO(3 downto 2) => \NLW_trigger_o1__6_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => trigger_o10_out,
      CO(0) => \trigger_o1__6_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_trigger_o1__6_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \trigger_o1__6_carry__0_i_1_n_0\,
      S(0) => \trigger_o1__6_carry__0_i_2_n_0\
    );
\trigger_o1__6_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counter_i(15),
      I1 => \minusOp_carry__2_n_1\,
      O => \trigger_o1__6_carry__0_i_1_n_0\
    );
\trigger_o1__6_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => minusOp(12),
      I1 => counter_i(12),
      I2 => counter_i(14),
      I3 => minusOp(14),
      I4 => counter_i(13),
      I5 => minusOp(13),
      O => \trigger_o1__6_carry__0_i_2_n_0\
    );
\trigger_o1__6_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => minusOp(9),
      I1 => counter_i(9),
      I2 => counter_i(11),
      I3 => minusOp(11),
      I4 => counter_i(10),
      I5 => minusOp(10),
      O => \trigger_o1__6_carry_i_1_n_0\
    );
\trigger_o1__6_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => minusOp(6),
      I1 => counter_i(6),
      I2 => counter_i(8),
      I3 => minusOp(8),
      I4 => counter_i(7),
      I5 => minusOp(7),
      O => \trigger_o1__6_carry_i_2_n_0\
    );
\trigger_o1__6_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => minusOp(3),
      I1 => counter_i(3),
      I2 => counter_i(5),
      I3 => minusOp(5),
      I4 => counter_i(4),
      I5 => minusOp(4),
      O => \trigger_o1__6_carry_i_3_n_0\
    );
\trigger_o1__6_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => duty_i(1),
      I1 => counter_i(0),
      I2 => counter_i(2),
      I3 => minusOp(2),
      I4 => counter_i(1),
      I5 => minusOp(1),
      O => \trigger_o1__6_carry_i_4_n_0\
    );
trigger_o1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => trigger_o1_carry_n_0,
      CO(2) => trigger_o1_carry_n_1,
      CO(1) => trigger_o1_carry_n_2,
      CO(0) => trigger_o1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_trigger_o1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => trigger_o1_carry_i_1_n_0,
      S(2) => trigger_o1_carry_i_2_n_0,
      S(1) => trigger_o1_carry_i_3_n_0,
      S(0) => trigger_o1_carry_i_4_n_0
    );
\trigger_o1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => trigger_o1_carry_n_0,
      CO(3 downto 2) => \NLW_trigger_o1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => trigger_o1,
      CO(0) => \trigger_o1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_trigger_o1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \trigger_o1_carry__0_i_1_n_0\,
      S(0) => \trigger_o1_carry__0_i_2_n_0\
    );
\trigger_o1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counter_i(15),
      I1 => compB_s(15),
      O => \trigger_o1_carry__0_i_1_n_0\
    );
\trigger_o1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => compB_s(12),
      I1 => counter_i(12),
      I2 => counter_i(14),
      I3 => compB_s(14),
      I4 => counter_i(13),
      I5 => compB_s(13),
      O => \trigger_o1_carry__0_i_2_n_0\
    );
\trigger_o1_carry__0_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => trigger_o1_carry_i_5_n_0,
      CO(3) => \NLW_trigger_o1_carry__0_i_3_CO_UNCONNECTED\(3),
      CO(2) => \trigger_o1_carry__0_i_3_n_1\,
      CO(1) => \trigger_o1_carry__0_i_3_n_2\,
      CO(0) => \trigger_o1_carry__0_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => duty_i(14 downto 12),
      O(3 downto 0) => compB_s(15 downto 12),
      S(3) => duty_i(15),
      S(2) => \trigger_o1_carry__0_i_4_n_0\,
      S(1) => \trigger_o1_carry__0_i_5_n_0\,
      S(0) => \trigger_o1_carry__0_i_6_n_0\
    );
\trigger_o1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(14),
      I1 => offTime_s0_out(15),
      O => \trigger_o1_carry__0_i_4_n_0\
    );
\trigger_o1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(13),
      I1 => offTime_s0_out(14),
      O => \trigger_o1_carry__0_i_5_n_0\
    );
\trigger_o1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(12),
      I1 => offTime_s0_out(13),
      O => \trigger_o1_carry__0_i_6_n_0\
    );
trigger_o1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => compB_s(9),
      I1 => counter_i(9),
      I2 => counter_i(11),
      I3 => compB_s(11),
      I4 => counter_i(10),
      I5 => compB_s(10),
      O => trigger_o1_carry_i_1_n_0
    );
trigger_o1_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(9),
      I1 => offTime_s0_out(10),
      O => trigger_o1_carry_i_10_n_0
    );
trigger_o1_carry_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(8),
      I1 => offTime_s0_out(9),
      O => trigger_o1_carry_i_11_n_0
    );
trigger_o1_carry_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(7),
      I1 => offTime_s0_out(8),
      O => trigger_o1_carry_i_12_n_0
    );
trigger_o1_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(6),
      I1 => offTime_s0_out(7),
      O => trigger_o1_carry_i_13_n_0
    );
trigger_o1_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(5),
      I1 => offTime_s0_out(6),
      O => trigger_o1_carry_i_14_n_0
    );
trigger_o1_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(4),
      I1 => offTime_s0_out(5),
      O => trigger_o1_carry_i_15_n_0
    );
trigger_o1_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(3),
      I1 => offTime_s0_out(4),
      O => trigger_o1_carry_i_16_n_0
    );
trigger_o1_carry_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(2),
      I1 => offTime_s0_out(3),
      O => trigger_o1_carry_i_17_n_0
    );
trigger_o1_carry_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(1),
      I1 => offTime_s0_out(2),
      O => trigger_o1_carry_i_18_n_0
    );
trigger_o1_carry_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(0),
      I1 => offTime_s0_out(1),
      O => trigger_o1_carry_i_19_n_0
    );
trigger_o1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => compB_s(6),
      I1 => counter_i(6),
      I2 => counter_i(8),
      I3 => compB_s(8),
      I4 => counter_i(7),
      I5 => compB_s(7),
      O => trigger_o1_carry_i_2_n_0
    );
trigger_o1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => compB_s(3),
      I1 => counter_i(3),
      I2 => counter_i(5),
      I3 => compB_s(5),
      I4 => counter_i(4),
      I5 => compB_s(4),
      O => trigger_o1_carry_i_3_n_0
    );
trigger_o1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => compB_s(0),
      I1 => counter_i(0),
      I2 => counter_i(2),
      I3 => compB_s(2),
      I4 => counter_i(1),
      I5 => compB_s(1),
      O => trigger_o1_carry_i_4_n_0
    );
trigger_o1_carry_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => trigger_o1_carry_i_6_n_0,
      CO(3) => trigger_o1_carry_i_5_n_0,
      CO(2) => trigger_o1_carry_i_5_n_1,
      CO(1) => trigger_o1_carry_i_5_n_2,
      CO(0) => trigger_o1_carry_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 0) => duty_i(11 downto 8),
      O(3 downto 0) => compB_s(11 downto 8),
      S(3) => trigger_o1_carry_i_8_n_0,
      S(2) => trigger_o1_carry_i_9_n_0,
      S(1) => trigger_o1_carry_i_10_n_0,
      S(0) => trigger_o1_carry_i_11_n_0
    );
trigger_o1_carry_i_6: unisim.vcomponents.CARRY4
     port map (
      CI => trigger_o1_carry_i_7_n_0,
      CO(3) => trigger_o1_carry_i_6_n_0,
      CO(2) => trigger_o1_carry_i_6_n_1,
      CO(1) => trigger_o1_carry_i_6_n_2,
      CO(0) => trigger_o1_carry_i_6_n_3,
      CYINIT => '0',
      DI(3 downto 0) => duty_i(7 downto 4),
      O(3 downto 0) => compB_s(7 downto 4),
      S(3) => trigger_o1_carry_i_12_n_0,
      S(2) => trigger_o1_carry_i_13_n_0,
      S(1) => trigger_o1_carry_i_14_n_0,
      S(0) => trigger_o1_carry_i_15_n_0
    );
trigger_o1_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => trigger_o1_carry_i_7_n_0,
      CO(2) => trigger_o1_carry_i_7_n_1,
      CO(1) => trigger_o1_carry_i_7_n_2,
      CO(0) => trigger_o1_carry_i_7_n_3,
      CYINIT => '0',
      DI(3 downto 0) => duty_i(3 downto 0),
      O(3 downto 0) => compB_s(3 downto 0),
      S(3) => trigger_o1_carry_i_16_n_0,
      S(2) => trigger_o1_carry_i_17_n_0,
      S(1) => trigger_o1_carry_i_18_n_0,
      S(0) => trigger_o1_carry_i_19_n_0
    );
trigger_o1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(11),
      I1 => offTime_s0_out(12),
      O => trigger_o1_carry_i_8_n_0
    );
trigger_o1_carry_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => duty_i(10),
      I1 => offTime_s0_out(11),
      O => trigger_o1_carry_i_9_n_0
    );
trigger_o_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => trigger_o10_out,
      I1 => trigger_o1,
      O => trigger_o_i_1_n_0
    );
trigger_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => '1',
      D => trigger_o_i_1_n_0,
      Q => trigger_o,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_sync_v0_0_0 is
  port (
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_i : in STD_LOGIC;
    duty_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    top_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    trigger_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_sync_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_sync_v0_0_0 : entity is "pwm_controller_sync_v0_0_0,sync_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_sync_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_sync_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_sync_v0_0_0 : entity is "sync_v0,Vivado 2022.2";
end pwm_controller_sync_v0_0_0;

architecture STRUCTURE of pwm_controller_sync_v0_0_0 is
begin
U0: entity work.pwm_controller_sync_v0_0_0_sync_v0
     port map (
      clk_i => clk_i,
      counter_i(15 downto 0) => counter_i(15 downto 0),
      duty_i(15 downto 0) => duty_i(15 downto 0),
      top_i(15 downto 0) => top_i(15 downto 0),
      trigger_o => trigger_o
    );
end STRUCTURE;
