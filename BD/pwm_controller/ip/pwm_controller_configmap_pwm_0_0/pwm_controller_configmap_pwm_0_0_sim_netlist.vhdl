-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 02:14:14 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_configmap_pwm_0_0/pwm_controller_configmap_pwm_0_0_sim_netlist.vhdl
-- Design      : pwm_controller_configmap_pwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pwm_controller_configmap_pwm_0_0 is
  port (
    resetn_o : out STD_LOGIC;
    sawtri_o : out STD_LOGIC;
    async_o : out STD_LOGIC;
    upd_peak_o : out STD_LOGIC;
    upd_valley_o : out STD_LOGIC;
    acq_free_o : out STD_LOGIC;
    acq_max_o : out STD_LOGIC;
    acq_cmp_o : out STD_LOGIC;
    acq_half_o : out STD_LOGIC;
    acq_zero_o : out STD_LOGIC;
    en_snoop_o : out STD_LOGIC;
    dsp_start_o : out STD_LOGIC;
    dsp_bypass_o : out STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pwm_controller_configmap_pwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pwm_controller_configmap_pwm_0_0 : entity is "pwm_controller_configmap_pwm_0_0,configmap_pwm,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pwm_controller_configmap_pwm_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of pwm_controller_configmap_pwm_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of pwm_controller_configmap_pwm_0_0 : entity is "configmap_pwm,Vivado 2022.2";
end pwm_controller_configmap_pwm_0_0;

architecture STRUCTURE of pwm_controller_configmap_pwm_0_0 is
  signal \^data_i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^data_i\(12 downto 0) <= data_i(12 downto 0);
  acq_cmp_o <= \^data_i\(7);
  acq_free_o <= \^data_i\(5);
  acq_half_o <= \^data_i\(8);
  acq_max_o <= \^data_i\(6);
  acq_zero_o <= \^data_i\(9);
  async_o <= \^data_i\(2);
  dsp_bypass_o <= \^data_i\(12);
  dsp_start_o <= \^data_i\(11);
  en_snoop_o <= \^data_i\(10);
  resetn_o <= \^data_i\(0);
  sawtri_o <= \^data_i\(1);
  upd_peak_o <= \^data_i\(3);
  upd_valley_o <= \^data_i\(4);
end STRUCTURE;
