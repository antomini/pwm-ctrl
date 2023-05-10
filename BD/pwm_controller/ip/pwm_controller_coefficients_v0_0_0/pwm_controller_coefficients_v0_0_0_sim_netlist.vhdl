-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Apr 12 18:26:45 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_coefficients_v0_0_0/pwm_controller_coefficients_v0_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_coefficients_v0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_coefficients_v0_0_0 is
  port (
    kp_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ki_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kp_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    ki_out : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_coefficients_v0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_coefficients_v0_0_0 : entity is "pwm_controller_coefficients_v0_0_0,coefficients_v0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_coefficients_v0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_coefficients_v0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_coefficients_v0_0_0 : entity is "coefficients_v0,Vivado 2022.2";
end pwm_controller_coefficients_v0_0_0;

architecture STRUCTURE of pwm_controller_coefficients_v0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ki_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^kp_in\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^ki_in\(15 downto 0) <= ki_in(15 downto 0);
  \^kp_in\(15 downto 0) <= kp_in(15 downto 0);
  ki_out(16) <= \<const0>\;
  ki_out(15 downto 0) <= \^ki_in\(15 downto 0);
  kp_out(16) <= \<const0>\;
  kp_out(15 downto 0) <= \^kp_in\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
