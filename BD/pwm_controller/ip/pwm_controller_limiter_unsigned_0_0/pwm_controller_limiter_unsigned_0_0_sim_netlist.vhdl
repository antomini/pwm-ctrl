-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Jun 21 00:30:04 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_limiter_unsigned_0_0/pwm_controller_limiter_unsigned_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_limiter_unsigned_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_limiter_unsigned_0_0 is
  port (
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_limiter_unsigned_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_limiter_unsigned_0_0 : entity is "pwm_controller_limiter_unsigned_0_0,limiter_unsigned,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_limiter_unsigned_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_limiter_unsigned_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_limiter_unsigned_0_0 : entity is "limiter_unsigned,Vivado 2022.2";
end pwm_controller_limiter_unsigned_0_0;

architecture STRUCTURE of pwm_controller_limiter_unsigned_0_0 is
  signal \data_o[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \data_o[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \data_o[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \data_o[15]_INST_0_i_4_n_0\ : STD_LOGIC;
begin
\data_o[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(0),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(0)
    );
\data_o[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(10),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(10)
    );
\data_o[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(11),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(11)
    );
\data_o[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(12),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(12)
    );
\data_o[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(13),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(13)
    );
\data_o[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(14),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(14)
    );
\data_o[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(15),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(15)
    );
\data_o[15]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_i(25),
      I1 => data_i(24),
      I2 => data_i(27),
      I3 => data_i(26),
      O => \data_o[15]_INST_0_i_1_n_0\
    );
\data_o[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_i(29),
      I1 => data_i(28),
      I2 => data_i(31),
      I3 => data_i(30),
      O => \data_o[15]_INST_0_i_2_n_0\
    );
\data_o[15]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_i(17),
      I1 => data_i(16),
      I2 => data_i(19),
      I3 => data_i(18),
      O => \data_o[15]_INST_0_i_3_n_0\
    );
\data_o[15]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_i(21),
      I1 => data_i(20),
      I2 => data_i(23),
      I3 => data_i(22),
      O => \data_o[15]_INST_0_i_4_n_0\
    );
\data_o[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(1),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(1)
    );
\data_o[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(2),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(2)
    );
\data_o[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(3),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(3)
    );
\data_o[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(4),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(4)
    );
\data_o[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(5),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(5)
    );
\data_o[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(6),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(6)
    );
\data_o[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(7),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(7)
    );
\data_o[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(8),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(8)
    );
\data_o[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data_i(9),
      I1 => \data_o[15]_INST_0_i_1_n_0\,
      I2 => \data_o[15]_INST_0_i_2_n_0\,
      I3 => \data_o[15]_INST_0_i_3_n_0\,
      I4 => \data_o[15]_INST_0_i_4_n_0\,
      O => data_o(9)
    );
end STRUCTURE;
