-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Jun 16 18:54:12 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_acquisition_0_0/pwm_controller_trigger_acquisition_0_0_stub.vhdl
-- Design      : pwm_controller_trigger_acquisition_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_controller_trigger_acquisition_0_0 is
  Port ( 
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

end pwm_controller_trigger_acquisition_0_0;

architecture stub of pwm_controller_trigger_acquisition_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "acq_o,free_i[15:0],max_i[15:0],cmp_i[15:0],half_i[15:0],counter_i[15:0],en_free_i,en_max_i,en_cmp_i,en_half_i,en_zero_i";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "trigger_acquisition,Vivado 2022.2";
begin
end;