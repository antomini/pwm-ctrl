// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jan 26 10:25:41 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top pwm_controller_pwm_v0_0_0 -prefix
//               pwm_controller_pwm_v0_0_0_ pwm_controller_pwm_v0_0_0_stub.v
// Design      : pwm_controller_pwm_v0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pwm_v0,Vivado 2022.2" *)
module pwm_controller_pwm_v0_0_0(clk_i, duty_i, top_i, pwm_o, counter_o)
/* synthesis syn_black_box black_box_pad_pin="clk_i,duty_i[15:0],top_i[15:0],pwm_o,counter_o[15:0]" */;
  input clk_i;
  input [15:0]duty_i;
  input [15:0]top_i;
  output pwm_o;
  output [15:0]counter_o;
endmodule
