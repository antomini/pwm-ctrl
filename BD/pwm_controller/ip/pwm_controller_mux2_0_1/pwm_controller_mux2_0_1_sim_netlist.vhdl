-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 02:14:14 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_mux2_0_1/pwm_controller_mux2_0_1_sim_netlist.vhdl
-- Design      : pwm_controller_mux2_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_mux2_0_1_mux2 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sel_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_mux2_0_1_mux2 : entity is "mux2";
end pwm_controller_mux2_0_1_mux2;

architecture STRUCTURE of pwm_controller_mux2_0_1_mux2 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_o[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_o[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_o[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_o[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_o[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_o[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_o[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_o[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_o[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_o[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_o[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_o[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_o[9]_INST_0\ : label is "soft_lutpair4";
begin
\data_o[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(0),
      I1 => data1_i(0),
      I2 => sel_i,
      O => data_o(0)
    );
\data_o[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(10),
      I1 => data1_i(10),
      I2 => sel_i,
      O => data_o(10)
    );
\data_o[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(11),
      I1 => data1_i(11),
      I2 => sel_i,
      O => data_o(11)
    );
\data_o[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(12),
      I1 => data1_i(12),
      I2 => sel_i,
      O => data_o(12)
    );
\data_o[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(13),
      I1 => data1_i(13),
      I2 => sel_i,
      O => data_o(13)
    );
\data_o[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(14),
      I1 => data1_i(14),
      I2 => sel_i,
      O => data_o(14)
    );
\data_o[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(15),
      I1 => data1_i(15),
      I2 => sel_i,
      O => data_o(15)
    );
\data_o[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(1),
      I1 => data1_i(1),
      I2 => sel_i,
      O => data_o(1)
    );
\data_o[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(2),
      I1 => data1_i(2),
      I2 => sel_i,
      O => data_o(2)
    );
\data_o[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(3),
      I1 => data1_i(3),
      I2 => sel_i,
      O => data_o(3)
    );
\data_o[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(4),
      I1 => data1_i(4),
      I2 => sel_i,
      O => data_o(4)
    );
\data_o[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(5),
      I1 => data1_i(5),
      I2 => sel_i,
      O => data_o(5)
    );
\data_o[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(6),
      I1 => data1_i(6),
      I2 => sel_i,
      O => data_o(6)
    );
\data_o[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(7),
      I1 => data1_i(7),
      I2 => sel_i,
      O => data_o(7)
    );
\data_o[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(8),
      I1 => data1_i(8),
      I2 => sel_i,
      O => data_o(8)
    );
\data_o[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => data2_i(9),
      I1 => data1_i(9),
      I2 => sel_i,
      O => data_o(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_mux2_0_1 is
  port (
    sel_i : in STD_LOGIC;
    data1_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data2_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_mux2_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_mux2_0_1 : entity is "pwm_controller_mux2_0_1,mux2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_mux2_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_mux2_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_mux2_0_1 : entity is "mux2,Vivado 2022.2";
end pwm_controller_mux2_0_1;

architecture STRUCTURE of pwm_controller_mux2_0_1 is
begin
U0: entity work.pwm_controller_mux2_0_1_mux2
     port map (
      data1_i(15 downto 0) => data1_i(15 downto 0),
      data2_i(15 downto 0) => data2_i(15 downto 0),
      data_o(15 downto 0) => data_o(15 downto 0),
      sel_i => sel_i
    );
end STRUCTURE;
