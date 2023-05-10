-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Thu Mar 30 10:47:41 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top pwm_controller_delayshift_v0_0_0 -prefix
--               pwm_controller_delayshift_v0_0_0_ pwm_controller_delayshift_v0_0_0_stub.vhdl
-- Design      : pwm_controller_delayshift_v0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_controller_delayshift_v0_0_0 is
  Port ( 
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dly_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rel_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    shift_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end pwm_controller_delayshift_v0_0_0;

architecture stub of pwm_controller_delayshift_v0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in[31:0],dly_out[7:0],rel_out[8:0],shift_out[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "delayshift_v0,Vivado 2022.2";
begin
end;
