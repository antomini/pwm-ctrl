// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 09:21:23 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_pwm_comparator_0_0/pwm_controller_pwm_comparator_0_0_stub.v
// Design      : pwm_controller_pwm_comparator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_comparator,Vivado 2022.2" *)
module pwm_controller_pwm_comparator_0_0(cmp_o, half_o, pwm_o, cmp_i, counter_i, update_i, 
  async_i, clk_i)
/* synthesis syn_black_box black_box_pad_pin="cmp_o[15:0],half_o[15:0],pwm_o,cmp_i[15:0],counter_i[15:0],update_i,async_i,clk_i" */;
  output [15:0]cmp_o;
  output [15:0]half_o;
  output pwm_o;
  input [15:0]cmp_i;
  input [15:0]counter_i;
  input update_i;
  input async_i;
  input clk_i;
endmodule
