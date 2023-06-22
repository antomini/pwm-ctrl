// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 13:51:10 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top pwm_controller_DSP_stdpipe_0_1 -prefix
//               pwm_controller_DSP_stdpipe_0_1_ pwm_controller_DSP_stdpipe_0_0_stub.v
// Design      : pwm_controller_DSP_stdpipe_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DSP_stdpipe,Vivado 2022.2" *)
module pwm_controller_DSP_stdpipe_0_1(acc_o, coef_i, ref_i, add_i, alu_i, start_i, sub_i, 
  clk_i)
/* synthesis syn_black_box black_box_pad_pin="acc_o[34:0],coef_i[16:0],ref_i[16:0],add_i[16:0],alu_i[34:0],start_i,sub_i,clk_i" */;
  output [34:0]acc_o;
  input [16:0]coef_i;
  input [16:0]ref_i;
  input [16:0]add_i;
  input [34:0]alu_i;
  input start_i;
  input sub_i;
  input clk_i;
endmodule
