// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Apr 12 18:26:44 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_coefficients_v0_0_0/pwm_controller_coefficients_v0_0_0_stub.v
// Design      : pwm_controller_coefficients_v0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "coefficients_v0,Vivado 2022.2" *)
module pwm_controller_coefficients_v0_0_0(kp_in, ki_in, kp_out, ki_out)
/* synthesis syn_black_box black_box_pad_pin="kp_in[31:0],ki_in[31:0],kp_out[16:0],ki_out[16:0]" */;
  input [31:0]kp_in;
  input [31:0]ki_in;
  output [16:0]kp_out;
  output [16:0]ki_out;
endmodule
