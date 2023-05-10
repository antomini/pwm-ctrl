-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Mar 30 10:47:41 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_delayshift_v0_0_0 -prefix
--               pwm_controller_delayshift_v0_0_0_ pwm_controller_delayshift_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_delayshift_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_delayshift_v0_0_0_delayshift_v0 is
  port (
    rel_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end pwm_controller_delayshift_v0_0_0_delayshift_v0;

architecture STRUCTURE of pwm_controller_delayshift_v0_0_0_delayshift_v0 is
  signal \rel_out[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rel_out[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rel_out[5]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rel_out[7]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rel_out[8]_INST_0\ : label is "soft_lutpair1";
begin
\rel_out[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in(0),
      O => rel_out(0)
    );
\rel_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(0),
      I2 => data_in(2),
      O => rel_out(1)
    );
\rel_out[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1115EEEA"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(2),
      I2 => data_in(1),
      I3 => data_in(0),
      I4 => data_in(4),
      O => rel_out(2)
    );
\rel_out[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFE00000"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in(1),
      I2 => data_in(2),
      I3 => data_in(3),
      I4 => data_in(4),
      I5 => data_in(5),
      O => rel_out(3)
    );
\rel_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \rel_out[8]_INST_0_i_1_n_0\,
      I1 => data_in(6),
      O => rel_out(4)
    );
\rel_out[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \rel_out[8]_INST_0_i_1_n_0\,
      I1 => data_in(6),
      O => rel_out(5)
    );
\rel_out[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA80000000000"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(0),
      I2 => data_in(1),
      I3 => data_in(2),
      I4 => data_in(3),
      I5 => data_in(4),
      O => \rel_out[8]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_delayshift_v0_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dly_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rel_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    shift_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_delayshift_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_delayshift_v0_0_0 : entity is "pwm_controller_delayshift_v0_0_0,delayshift_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_delayshift_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_delayshift_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_delayshift_v0_0_0 : entity is "delayshift_v0,Vivado 2022.2";
end pwm_controller_delayshift_v0_0_0;

architecture STRUCTURE of pwm_controller_delayshift_v0_0_0 is
  signal \^data_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rel_out\ : STD_LOGIC_VECTOR ( 8 downto 1 );
begin
  \^data_in\(11 downto 0) <= data_in(11 downto 0);
  dly_out(7 downto 0) <= \^data_in\(7 downto 0);
  rel_out(8 downto 1) <= \^rel_out\(8 downto 1);
  rel_out(0) <= \^data_in\(0);
  shift_out(3 downto 0) <= \^data_in\(11 downto 8);
U0: entity work.pwm_controller_delayshift_v0_0_0_delayshift_v0
     port map (
      data_in(6 downto 0) => \^data_in\(7 downto 1),
      rel_out(5 downto 2) => \^rel_out\(8 downto 5),
      rel_out(1) => \^rel_out\(3),
      rel_out(0) => \^rel_out\(1)
    );
\rel_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_in\(1),
      I1 => \^data_in\(2),
      O => \^rel_out\(2)
    );
\rel_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E01F"
    )
        port map (
      I0 => \^data_in\(1),
      I1 => \^data_in\(2),
      I2 => \^data_in\(3),
      I3 => \^data_in\(4),
      O => \^rel_out\(4)
    );
end STRUCTURE;
