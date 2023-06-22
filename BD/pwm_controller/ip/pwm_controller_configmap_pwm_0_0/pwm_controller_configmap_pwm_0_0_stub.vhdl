-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Jun 22 02:14:14 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_configmap_pwm_0_0/pwm_controller_configmap_pwm_0_0_stub.vhdl
-- Design      : pwm_controller_configmap_pwm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_controller_configmap_pwm_0_0 is
  Port ( 
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

end pwm_controller_configmap_pwm_0_0;

architecture stub of pwm_controller_configmap_pwm_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "resetn_o,sawtri_o,async_o,upd_peak_o,upd_valley_o,acq_free_o,acq_max_o,acq_cmp_o,acq_half_o,acq_zero_o,en_snoop_o,dsp_start_o,dsp_bypass_o,data_i[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "configmap_pwm,Vivado 2022.2";
begin
end;
