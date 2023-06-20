-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:12 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_update_0_0/pwm_controller_trigger_update_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_trigger_update_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_trigger_update_0_0_trigger_update is
  port (
    update_o : out STD_LOGIC;
    update_o_0 : in STD_LOGIC;
    update_o_1 : in STD_LOGIC;
    update_o_2 : in STD_LOGIC;
    sawtri_i : in STD_LOGIC;
    peak_i : in STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_trigger_update_0_0_trigger_update : entity is "trigger_update";
end pwm_controller_trigger_update_0_0_trigger_update;

architecture STRUCTURE of pwm_controller_trigger_update_0_0_trigger_update is
  signal sawtrig_s : STD_LOGIC;
  signal \update_o0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \update_o0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \update_o0_carry__0_n_3\ : STD_LOGIC;
  signal update_o0_carry_i_1_n_0 : STD_LOGIC;
  signal update_o0_carry_i_2_n_0 : STD_LOGIC;
  signal update_o0_carry_i_3_n_0 : STD_LOGIC;
  signal update_o0_carry_i_4_n_0 : STD_LOGIC;
  signal update_o0_carry_n_0 : STD_LOGIC;
  signal update_o0_carry_n_1 : STD_LOGIC;
  signal update_o0_carry_n_2 : STD_LOGIC;
  signal update_o0_carry_n_3 : STD_LOGIC;
  signal NLW_update_o0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_update_o0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_update_o0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
update_o0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => update_o0_carry_n_0,
      CO(2) => update_o0_carry_n_1,
      CO(1) => update_o0_carry_n_2,
      CO(0) => update_o0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_update_o0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => update_o0_carry_i_1_n_0,
      S(2) => update_o0_carry_i_2_n_0,
      S(1) => update_o0_carry_i_3_n_0,
      S(0) => update_o0_carry_i_4_n_0
    );
\update_o0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => update_o0_carry_n_0,
      CO(3 downto 2) => \NLW_update_o0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sawtrig_s,
      CO(0) => \update_o0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_update_o0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \update_o0_carry__0_i_1_n_0\,
      S(0) => \update_o0_carry__0_i_2_n_0\
    );
\update_o0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => max_i(15),
      I1 => counter_i(15),
      O => \update_o0_carry__0_i_1_n_0\
    );
\update_o0_carry__0_i_2\: unisim.vcomponents.LUT6
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
      O => \update_o0_carry__0_i_2_n_0\
    );
update_o0_carry_i_1: unisim.vcomponents.LUT6
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
      O => update_o0_carry_i_1_n_0
    );
update_o0_carry_i_2: unisim.vcomponents.LUT6
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
      O => update_o0_carry_i_2_n_0
    );
update_o0_carry_i_3: unisim.vcomponents.LUT6
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
      O => update_o0_carry_i_3_n_0
    );
update_o0_carry_i_4: unisim.vcomponents.LUT6
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
      O => update_o0_carry_i_4_n_0
    );
update_o_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF808080FF8080"
    )
        port map (
      I0 => update_o_0,
      I1 => update_o_1,
      I2 => update_o_2,
      I3 => sawtri_i,
      I4 => sawtrig_s,
      I5 => peak_i,
      O => update_o
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_trigger_update_0_0 is
  port (
    update_o : out STD_LOGIC;
    max_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    counter_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    peak_i : in STD_LOGIC;
    valley_i : in STD_LOGIC;
    sawtri_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_trigger_update_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_trigger_update_0_0 : entity is "pwm_controller_trigger_update_0_0,trigger_update,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_trigger_update_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_trigger_update_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_trigger_update_0_0 : entity is "trigger_update,Vivado 2022.2";
end pwm_controller_trigger_update_0_0;

architecture STRUCTURE of pwm_controller_trigger_update_0_0 is
  signal update_o_INST_0_i_1_n_0 : STD_LOGIC;
  signal update_o_INST_0_i_2_n_0 : STD_LOGIC;
  signal update_o_INST_0_i_3_n_0 : STD_LOGIC;
begin
U0: entity work.pwm_controller_trigger_update_0_0_trigger_update
     port map (
      counter_i(15 downto 0) => counter_i(15 downto 0),
      max_i(15 downto 0) => max_i(15 downto 0),
      peak_i => peak_i,
      sawtri_i => sawtri_i,
      update_o => update_o,
      update_o_0 => update_o_INST_0_i_1_n_0,
      update_o_1 => update_o_INST_0_i_2_n_0,
      update_o_2 => update_o_INST_0_i_3_n_0
    );
update_o_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_i(6),
      I1 => counter_i(7),
      I2 => counter_i(4),
      I3 => counter_i(5),
      I4 => counter_i(9),
      I5 => counter_i(8),
      O => update_o_INST_0_i_1_n_0
    );
update_o_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => counter_i(12),
      I1 => counter_i(13),
      I2 => counter_i(10),
      I3 => counter_i(11),
      I4 => counter_i(15),
      I5 => counter_i(14),
      O => update_o_INST_0_i_2_n_0
    );
update_o_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => counter_i(1),
      I1 => counter_i(2),
      I2 => valley_i,
      I3 => counter_i(0),
      I4 => counter_i(3),
      I5 => sawtri_i,
      O => update_o_INST_0_i_3_n_0
    );
end STRUCTURE;
