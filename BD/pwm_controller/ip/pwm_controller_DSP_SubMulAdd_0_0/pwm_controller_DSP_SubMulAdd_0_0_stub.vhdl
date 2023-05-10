-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Wed Mar 22 12:51:03 2023
-- Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top pwm_controller_DSP_SubMulAdd_0_0 -prefix
--               pwm_controller_DSP_SubMulAdd_0_0_ pwm_controller_DSP_SubMulAdd_0_0_stub.vhdl
-- Design      : pwm_controller_DSP_SubMulAdd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pwm_controller_DSP_SubMulAdd_0_0 is
  Port ( 
    kp_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    ref_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    adc_in : in STD_LOGIC_VECTOR ( 16 downto 0 );
    add_in : in STD_LOGIC_VECTOR ( 33 downto 0 );
    y_out : out STD_LOGIC_VECTOR ( 33 downto 0 );
    start_in : in STD_LOGIC;
    clk_in : in STD_LOGIC
  );

end pwm_controller_DSP_SubMulAdd_0_0;

architecture stub of pwm_controller_DSP_SubMulAdd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "kp_in[16:0],ref_in[16:0],adc_in[16:0],add_in[33:0],y_out[33:0],start_in,clk_in";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "DSP_SubMulAdd,Vivado 2022.2";
begin
end;
