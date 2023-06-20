-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:12 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_acquisition_0_0/pwm_controller_trigger_acquisition_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_trigger_acquisition_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_trigger_acquisition_0_0_trigger_acquisition is
  port (
    acq_o : out STD_LOGIC;
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    half_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    free_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_max_i : in STD_LOGIC;
    acq_o_0 : in STD_LOGIC;
    acq_o_1 : in STD_LOGIC;
    en_cmp_i : in STD_LOGIC;
    en_half_i : in STD_LOGIC;
    en_free_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_trigger_acquisition_0_0_trigger_acquisition : entity is "trigger_acquisition";
end pwm_controller_trigger_acquisition_0_0_trigger_acquisition;

architecture STRUCTURE of pwm_controller_trigger_acquisition_0_0_trigger_acquisition is
  signal acq_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal \cmp_acq_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cmp_acq_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cmp_acq_s0_carry__0_n_3\ : STD_LOGIC;
  signal cmp_acq_s0_carry_i_1_n_0 : STD_LOGIC;
  signal cmp_acq_s0_carry_i_2_n_0 : STD_LOGIC;
  signal cmp_acq_s0_carry_i_3_n_0 : STD_LOGIC;
  signal cmp_acq_s0_carry_i_4_n_0 : STD_LOGIC;
  signal cmp_acq_s0_carry_n_0 : STD_LOGIC;
  signal cmp_acq_s0_carry_n_1 : STD_LOGIC;
  signal cmp_acq_s0_carry_n_2 : STD_LOGIC;
  signal cmp_acq_s0_carry_n_3 : STD_LOGIC;
  signal cmp_trig_s : STD_LOGIC;
  signal \free_acq_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \free_acq_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \free_acq_s0_carry__0_n_3\ : STD_LOGIC;
  signal free_acq_s0_carry_i_1_n_0 : STD_LOGIC;
  signal free_acq_s0_carry_i_2_n_0 : STD_LOGIC;
  signal free_acq_s0_carry_i_3_n_0 : STD_LOGIC;
  signal free_acq_s0_carry_i_4_n_0 : STD_LOGIC;
  signal free_acq_s0_carry_n_0 : STD_LOGIC;
  signal free_acq_s0_carry_n_1 : STD_LOGIC;
  signal free_acq_s0_carry_n_2 : STD_LOGIC;
  signal free_acq_s0_carry_n_3 : STD_LOGIC;
  signal free_trig_s : STD_LOGIC;
  signal \half_acq_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \half_acq_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \half_acq_s0_carry__0_n_3\ : STD_LOGIC;
  signal half_acq_s0_carry_i_1_n_0 : STD_LOGIC;
  signal half_acq_s0_carry_i_2_n_0 : STD_LOGIC;
  signal half_acq_s0_carry_i_3_n_0 : STD_LOGIC;
  signal half_acq_s0_carry_i_4_n_0 : STD_LOGIC;
  signal half_acq_s0_carry_n_0 : STD_LOGIC;
  signal half_acq_s0_carry_n_1 : STD_LOGIC;
  signal half_acq_s0_carry_n_2 : STD_LOGIC;
  signal half_acq_s0_carry_n_3 : STD_LOGIC;
  signal half_trig_s : STD_LOGIC;
  signal \max_acq_s0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \max_acq_s0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \max_acq_s0_carry__0_n_3\ : STD_LOGIC;
  signal max_acq_s0_carry_i_1_n_0 : STD_LOGIC;
  signal max_acq_s0_carry_i_2_n_0 : STD_LOGIC;
  signal max_acq_s0_carry_i_3_n_0 : STD_LOGIC;
  signal max_acq_s0_carry_i_4_n_0 : STD_LOGIC;
  signal max_acq_s0_carry_n_0 : STD_LOGIC;
  signal max_acq_s0_carry_n_1 : STD_LOGIC;
  signal max_acq_s0_carry_n_2 : STD_LOGIC;
  signal max_acq_s0_carry_n_3 : STD_LOGIC;
  signal max_trig_s : STD_LOGIC;
  signal NLW_cmp_acq_s0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cmp_acq_s0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cmp_acq_s0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_free_acq_s0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_free_acq_s0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_free_acq_s0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_half_acq_s0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_half_acq_s0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_half_acq_s0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max_acq_s0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_acq_s0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_max_acq_s0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
acq_o_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => acq_o_INST_0_i_1_n_0,
      I1 => max_trig_s,
      I2 => en_max_i,
      I3 => acq_o_0,
      I4 => acq_o_1,
      O => acq_o
    );
acq_o_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => cmp_trig_s,
      I1 => en_cmp_i,
      I2 => half_trig_s,
      I3 => en_half_i,
      I4 => en_free_i,
      I5 => free_trig_s,
      O => acq_o_INST_0_i_1_n_0
    );
cmp_acq_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cmp_acq_s0_carry_n_0,
      CO(2) => cmp_acq_s0_carry_n_1,
      CO(1) => cmp_acq_s0_carry_n_2,
      CO(0) => cmp_acq_s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_cmp_acq_s0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cmp_acq_s0_carry_i_1_n_0,
      S(2) => cmp_acq_s0_carry_i_2_n_0,
      S(1) => cmp_acq_s0_carry_i_3_n_0,
      S(0) => cmp_acq_s0_carry_i_4_n_0
    );
\cmp_acq_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cmp_acq_s0_carry_n_0,
      CO(3 downto 2) => \NLW_cmp_acq_s0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => cmp_trig_s,
      CO(0) => \cmp_acq_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cmp_acq_s0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \cmp_acq_s0_carry__0_i_1_n_0\,
      S(0) => \cmp_acq_s0_carry__0_i_2_n_0\
    );
\cmp_acq_s0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cmp_i(15),
      I1 => counter_i(15),
      O => \cmp_acq_s0_carry__0_i_1_n_0\
    );
\cmp_acq_s0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmp_i(14),
      I1 => counter_i(14),
      I2 => cmp_i(13),
      I3 => counter_i(13),
      I4 => counter_i(12),
      I5 => cmp_i(12),
      O => \cmp_acq_s0_carry__0_i_2_n_0\
    );
cmp_acq_s0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmp_i(11),
      I1 => counter_i(11),
      I2 => cmp_i(10),
      I3 => counter_i(10),
      I4 => counter_i(9),
      I5 => cmp_i(9),
      O => cmp_acq_s0_carry_i_1_n_0
    );
cmp_acq_s0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmp_i(8),
      I1 => counter_i(8),
      I2 => cmp_i(7),
      I3 => counter_i(7),
      I4 => counter_i(6),
      I5 => cmp_i(6),
      O => cmp_acq_s0_carry_i_2_n_0
    );
cmp_acq_s0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmp_i(5),
      I1 => counter_i(5),
      I2 => cmp_i(4),
      I3 => counter_i(4),
      I4 => counter_i(3),
      I5 => cmp_i(3),
      O => cmp_acq_s0_carry_i_3_n_0
    );
cmp_acq_s0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => cmp_i(2),
      I1 => counter_i(2),
      I2 => cmp_i(1),
      I3 => counter_i(1),
      I4 => counter_i(0),
      I5 => cmp_i(0),
      O => cmp_acq_s0_carry_i_4_n_0
    );
free_acq_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => free_acq_s0_carry_n_0,
      CO(2) => free_acq_s0_carry_n_1,
      CO(1) => free_acq_s0_carry_n_2,
      CO(0) => free_acq_s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_free_acq_s0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => free_acq_s0_carry_i_1_n_0,
      S(2) => free_acq_s0_carry_i_2_n_0,
      S(1) => free_acq_s0_carry_i_3_n_0,
      S(0) => free_acq_s0_carry_i_4_n_0
    );
\free_acq_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => free_acq_s0_carry_n_0,
      CO(3 downto 2) => \NLW_free_acq_s0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => free_trig_s,
      CO(0) => \free_acq_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_free_acq_s0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \free_acq_s0_carry__0_i_1_n_0\,
      S(0) => \free_acq_s0_carry__0_i_2_n_0\
    );
\free_acq_s0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => free_i(15),
      I1 => counter_i(15),
      O => \free_acq_s0_carry__0_i_1_n_0\
    );
\free_acq_s0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => free_i(14),
      I1 => counter_i(14),
      I2 => free_i(13),
      I3 => counter_i(13),
      I4 => counter_i(12),
      I5 => free_i(12),
      O => \free_acq_s0_carry__0_i_2_n_0\
    );
free_acq_s0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => free_i(11),
      I1 => counter_i(11),
      I2 => free_i(10),
      I3 => counter_i(10),
      I4 => counter_i(9),
      I5 => free_i(9),
      O => free_acq_s0_carry_i_1_n_0
    );
free_acq_s0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => free_i(8),
      I1 => counter_i(8),
      I2 => free_i(7),
      I3 => counter_i(7),
      I4 => counter_i(6),
      I5 => free_i(6),
      O => free_acq_s0_carry_i_2_n_0
    );
free_acq_s0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => free_i(5),
      I1 => counter_i(5),
      I2 => free_i(4),
      I3 => counter_i(4),
      I4 => counter_i(3),
      I5 => free_i(3),
      O => free_acq_s0_carry_i_3_n_0
    );
free_acq_s0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => free_i(2),
      I1 => counter_i(2),
      I2 => free_i(1),
      I3 => counter_i(1),
      I4 => counter_i(0),
      I5 => free_i(0),
      O => free_acq_s0_carry_i_4_n_0
    );
half_acq_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => half_acq_s0_carry_n_0,
      CO(2) => half_acq_s0_carry_n_1,
      CO(1) => half_acq_s0_carry_n_2,
      CO(0) => half_acq_s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_half_acq_s0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => half_acq_s0_carry_i_1_n_0,
      S(2) => half_acq_s0_carry_i_2_n_0,
      S(1) => half_acq_s0_carry_i_3_n_0,
      S(0) => half_acq_s0_carry_i_4_n_0
    );
\half_acq_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => half_acq_s0_carry_n_0,
      CO(3 downto 2) => \NLW_half_acq_s0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => half_trig_s,
      CO(0) => \half_acq_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_half_acq_s0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \half_acq_s0_carry__0_i_1_n_0\,
      S(0) => \half_acq_s0_carry__0_i_2_n_0\
    );
\half_acq_s0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => half_i(15),
      I1 => counter_i(15),
      O => \half_acq_s0_carry__0_i_1_n_0\
    );
\half_acq_s0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => half_i(14),
      I1 => counter_i(14),
      I2 => half_i(13),
      I3 => counter_i(13),
      I4 => counter_i(12),
      I5 => half_i(12),
      O => \half_acq_s0_carry__0_i_2_n_0\
    );
half_acq_s0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => half_i(11),
      I1 => counter_i(11),
      I2 => half_i(10),
      I3 => counter_i(10),
      I4 => counter_i(9),
      I5 => half_i(9),
      O => half_acq_s0_carry_i_1_n_0
    );
half_acq_s0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => half_i(8),
      I1 => counter_i(8),
      I2 => half_i(7),
      I3 => counter_i(7),
      I4 => counter_i(6),
      I5 => half_i(6),
      O => half_acq_s0_carry_i_2_n_0
    );
half_acq_s0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => half_i(5),
      I1 => counter_i(5),
      I2 => half_i(4),
      I3 => counter_i(4),
      I4 => counter_i(3),
      I5 => half_i(3),
      O => half_acq_s0_carry_i_3_n_0
    );
half_acq_s0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => half_i(2),
      I1 => counter_i(2),
      I2 => half_i(1),
      I3 => counter_i(1),
      I4 => counter_i(0),
      I5 => half_i(0),
      O => half_acq_s0_carry_i_4_n_0
    );
max_acq_s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => max_acq_s0_carry_n_0,
      CO(2) => max_acq_s0_carry_n_1,
      CO(1) => max_acq_s0_carry_n_2,
      CO(0) => max_acq_s0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_max_acq_s0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => max_acq_s0_carry_i_1_n_0,
      S(2) => max_acq_s0_carry_i_2_n_0,
      S(1) => max_acq_s0_carry_i_3_n_0,
      S(0) => max_acq_s0_carry_i_4_n_0
    );
\max_acq_s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => max_acq_s0_carry_n_0,
      CO(3 downto 2) => \NLW_max_acq_s0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => max_trig_s,
      CO(0) => \max_acq_s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_max_acq_s0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \max_acq_s0_carry__0_i_1_n_0\,
      S(0) => \max_acq_s0_carry__0_i_2_n_0\
    );
\max_acq_s0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => max_i(15),
      I1 => counter_i(15),
      O => \max_acq_s0_carry__0_i_1_n_0\
    );
\max_acq_s0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_i(14),
      I1 => counter_i(14),
      I2 => max_i(13),
      I3 => counter_i(13),
      I4 => counter_i(12),
      I5 => max_i(12),
      O => \max_acq_s0_carry__0_i_2_n_0\
    );
max_acq_s0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_i(11),
      I1 => counter_i(11),
      I2 => max_i(10),
      I3 => counter_i(10),
      I4 => counter_i(9),
      I5 => max_i(9),
      O => max_acq_s0_carry_i_1_n_0
    );
max_acq_s0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_i(8),
      I1 => counter_i(8),
      I2 => max_i(7),
      I3 => counter_i(7),
      I4 => counter_i(6),
      I5 => max_i(6),
      O => max_acq_s0_carry_i_2_n_0
    );
max_acq_s0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_i(5),
      I1 => counter_i(5),
      I2 => max_i(4),
      I3 => counter_i(4),
      I4 => counter_i(3),
      I5 => max_i(3),
      O => max_acq_s0_carry_i_3_n_0
    );
max_acq_s0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => max_i(2),
      I1 => counter_i(2),
      I2 => max_i(1),
      I3 => counter_i(1),
      I4 => counter_i(0),
      I5 => max_i(0),
      O => max_acq_s0_carry_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_trigger_acquisition_0_0 is
  port (
    acq_o : out STD_LOGIC;
    free_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cmp_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    half_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    en_free_i : in STD_LOGIC;
    en_max_i : in STD_LOGIC;
    en_cmp_i : in STD_LOGIC;
    en_half_i : in STD_LOGIC;
    en_zero_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_trigger_acquisition_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_trigger_acquisition_0_0 : entity is "pwm_controller_trigger_acquisition_0_0,trigger_acquisition,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_trigger_acquisition_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_trigger_acquisition_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_trigger_acquisition_0_0 : entity is "trigger_acquisition,Vivado 2022.2";
end pwm_controller_trigger_acquisition_0_0;

architecture STRUCTURE of pwm_controller_trigger_acquisition_0_0 is
  signal acq_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal acq_o_INST_0_i_3_n_0 : STD_LOGIC;
  signal acq_o_INST_0_i_4_n_0 : STD_LOGIC;
begin
U0: entity work.pwm_controller_trigger_acquisition_0_0_trigger_acquisition
     port map (
      acq_o => acq_o,
      acq_o_0 => acq_o_INST_0_i_2_n_0,
      acq_o_1 => acq_o_INST_0_i_3_n_0,
      cmp_i(15 downto 0) => cmp_i(15 downto 0),
      counter_i(15 downto 0) => counter_i(15 downto 0),
      en_cmp_i => en_cmp_i,
      en_free_i => en_free_i,
      en_half_i => en_half_i,
      en_max_i => en_max_i,
      free_i(15 downto 0) => free_i(15 downto 0),
      half_i(15 downto 0) => half_i(15 downto 0),
      max_i(15 downto 0) => max_i(15 downto 0)
    );
acq_o_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => counter_i(13),
      I1 => counter_i(14),
      I2 => counter_i(11),
      I3 => counter_i(12),
      I4 => counter_i(15),
      I5 => en_zero_i,
      O => acq_o_INST_0_i_2_n_0
    );
acq_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => counter_i(3),
      I1 => counter_i(4),
      I2 => counter_i(2),
      I3 => counter_i(1),
      I4 => counter_i(0),
      I5 => acq_o_INST_0_i_4_n_0,
      O => acq_o_INST_0_i_3_n_0
    );
acq_o_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_i(7),
      I1 => counter_i(8),
      I2 => counter_i(5),
      I3 => counter_i(6),
      I4 => counter_i(10),
      I5 => counter_i(9),
      O => acq_o_INST_0_i_4_n_0
    );
end STRUCTURE;
