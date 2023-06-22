-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Jun 21 18:43:00 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_zeropad_left_0_2/pwm_controller_zeropad_left_0_2_stub.vhdl
-- Design      : pwm_controller_zeropad_left_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_controller_zeropad_left_0_2 is
  Port ( 
    data_o : out STD_LOGIC_VECTOR ( 16 downto 0 );
    data_i : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end pwm_controller_zeropad_left_0_2;

architecture stub of pwm_controller_zeropad_left_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_o[16:0],data_i[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "zeropad_left,Vivado 2022.2";
begin
end;
