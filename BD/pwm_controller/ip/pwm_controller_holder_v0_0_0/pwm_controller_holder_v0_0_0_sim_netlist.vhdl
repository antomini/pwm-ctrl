-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Tue Mar 21 16:54:07 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top pwm_controller_holder_v0_0_0 -prefix
--               pwm_controller_holder_v0_0_0_ pwm_controller_holder_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_holder_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_holder_v0_0_0_holder_v0 is
  port (
    data_out : out STD_LOGIC_VECTOR ( 33 downto 0 );
    en_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_in : in STD_LOGIC
  );
end pwm_controller_holder_v0_0_0_holder_v0;

architecture STRUCTURE of pwm_controller_holder_v0_0_0_holder_v0 is
begin
\data_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(0),
      Q => data_out(0),
      R => '0'
    );
\data_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(10),
      Q => data_out(10),
      R => '0'
    );
\data_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(11),
      Q => data_out(11),
      R => '0'
    );
\data_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(12),
      Q => data_out(12),
      R => '0'
    );
\data_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(13),
      Q => data_out(13),
      R => '0'
    );
\data_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(14),
      Q => data_out(14),
      R => '0'
    );
\data_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(15),
      Q => data_out(15),
      R => '0'
    );
\data_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(16),
      Q => data_out(16),
      R => '0'
    );
\data_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(17),
      Q => data_out(17),
      R => '0'
    );
\data_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(18),
      Q => data_out(18),
      R => '0'
    );
\data_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(19),
      Q => data_out(19),
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(1),
      Q => data_out(1),
      R => '0'
    );
\data_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(20),
      Q => data_out(20),
      R => '0'
    );
\data_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(21),
      Q => data_out(21),
      R => '0'
    );
\data_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(22),
      Q => data_out(22),
      R => '0'
    );
\data_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(23),
      Q => data_out(23),
      R => '0'
    );
\data_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(24),
      Q => data_out(24),
      R => '0'
    );
\data_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(25),
      Q => data_out(25),
      R => '0'
    );
\data_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(26),
      Q => data_out(26),
      R => '0'
    );
\data_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(27),
      Q => data_out(27),
      R => '0'
    );
\data_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(28),
      Q => data_out(28),
      R => '0'
    );
\data_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(29),
      Q => data_out(29),
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(2),
      Q => data_out(2),
      R => '0'
    );
\data_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(30),
      Q => data_out(30),
      R => '0'
    );
\data_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(31),
      Q => data_out(31),
      R => '0'
    );
\data_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(32),
      Q => data_out(32),
      R => '0'
    );
\data_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(33),
      Q => data_out(33),
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(3),
      Q => data_out(3),
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(4),
      Q => data_out(4),
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(5),
      Q => data_out(5),
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(6),
      Q => data_out(6),
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(7),
      Q => data_out(7),
      R => '0'
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(8),
      Q => data_out(8),
      R => '0'
    );
\data_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_in,
      CE => en_in,
      D => data_in(9),
      Q => data_out(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_holder_v0_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 33 downto 0 );
    clk_in : in STD_LOGIC;
    en_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_holder_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_holder_v0_0_0 : entity is "pwm_controller_holder_v0_0_0,holder_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_holder_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_holder_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_holder_v0_0_0 : entity is "holder_v0,Vivado 2022.2";
end pwm_controller_holder_v0_0_0;

architecture STRUCTURE of pwm_controller_holder_v0_0_0 is
begin
U0: entity work.pwm_controller_holder_v0_0_0_holder_v0
     port map (
      clk_in => clk_in,
      data_in(33 downto 0) => data_in(33 downto 0),
      data_out(33 downto 0) => data_out(33 downto 0),
      en_in => en_in
    );
end STRUCTURE;
