-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 16:07:28 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_registerFDSE_0_0/pwm_controller_registerFDSE_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_registerFDSE_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_registerFDSE_0_0_registerFDSE is
  port (
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    en_i : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    clk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pwm_controller_registerFDSE_0_0_registerFDSE : entity is "registerFDSE";
end pwm_controller_registerFDSE_0_0_registerFDSE;

architecture STRUCTURE of pwm_controller_registerFDSE_0_0_registerFDSE is
begin
\data_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(0),
      Q => data_o(0),
      R => '0'
    );
\data_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(10),
      Q => data_o(10),
      R => '0'
    );
\data_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(11),
      Q => data_o(11),
      R => '0'
    );
\data_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(12),
      Q => data_o(12),
      R => '0'
    );
\data_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(13),
      Q => data_o(13),
      R => '0'
    );
\data_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(14),
      Q => data_o(14),
      R => '0'
    );
\data_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(15),
      Q => data_o(15),
      R => '0'
    );
\data_o_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(16),
      Q => data_o(16),
      R => '0'
    );
\data_o_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(17),
      Q => data_o(17),
      R => '0'
    );
\data_o_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(18),
      Q => data_o(18),
      R => '0'
    );
\data_o_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(19),
      Q => data_o(19),
      R => '0'
    );
\data_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(1),
      Q => data_o(1),
      R => '0'
    );
\data_o_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(20),
      Q => data_o(20),
      R => '0'
    );
\data_o_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(21),
      Q => data_o(21),
      R => '0'
    );
\data_o_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(22),
      Q => data_o(22),
      R => '0'
    );
\data_o_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(23),
      Q => data_o(23),
      R => '0'
    );
\data_o_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(24),
      Q => data_o(24),
      R => '0'
    );
\data_o_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(25),
      Q => data_o(25),
      R => '0'
    );
\data_o_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(26),
      Q => data_o(26),
      R => '0'
    );
\data_o_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(27),
      Q => data_o(27),
      R => '0'
    );
\data_o_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(28),
      Q => data_o(28),
      R => '0'
    );
\data_o_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(29),
      Q => data_o(29),
      R => '0'
    );
\data_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(2),
      Q => data_o(2),
      R => '0'
    );
\data_o_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(30),
      Q => data_o(30),
      R => '0'
    );
\data_o_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(31),
      Q => data_o(31),
      R => '0'
    );
\data_o_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(32),
      Q => data_o(32),
      R => '0'
    );
\data_o_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(33),
      Q => data_o(33),
      R => '0'
    );
\data_o_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(34),
      Q => data_o(34),
      R => '0'
    );
\data_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(3),
      Q => data_o(3),
      R => '0'
    );
\data_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(4),
      Q => data_o(4),
      R => '0'
    );
\data_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(5),
      Q => data_o(5),
      R => '0'
    );
\data_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(6),
      Q => data_o(6),
      R => '0'
    );
\data_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(7),
      Q => data_o(7),
      R => '0'
    );
\data_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(8),
      Q => data_o(8),
      R => '0'
    );
\data_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_i,
      CE => en_i,
      D => data_i(9),
      Q => data_o(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_registerFDSE_0_0 is
  port (
    data_o : out STD_LOGIC_VECTOR ( 34 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 34 downto 0 );
    en_i : in STD_LOGIC;
    clk_i : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_registerFDSE_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_registerFDSE_0_0 : entity is "pwm_controller_registerFDSE_0_0,registerFDSE,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_registerFDSE_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_registerFDSE_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_registerFDSE_0_0 : entity is "registerFDSE,Vivado 2022.2";
end pwm_controller_registerFDSE_0_0;

architecture STRUCTURE of pwm_controller_registerFDSE_0_0 is
begin
U0: entity work.pwm_controller_registerFDSE_0_0_registerFDSE
     port map (
      clk_i => clk_i,
      data_i(34 downto 0) => data_i(34 downto 0),
      data_o(34 downto 0) => data_o(34 downto 0),
      en_i => en_i
    );
end STRUCTURE;
