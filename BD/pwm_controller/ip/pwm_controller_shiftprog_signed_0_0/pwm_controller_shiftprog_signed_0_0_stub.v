// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 02:14:14 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_shiftprog_signed_0_0/pwm_controller_shiftprog_signed_0_0_stub.v
// Design      : pwm_controller_shiftprog_signed_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shiftprog_signed,Vivado 2022.2" *)
module pwm_controller_shiftprog_signed_0_0(data_i, shift_i, data_o)
/* synthesis syn_black_box black_box_pad_pin="data_i[34:0],shift_i[3:0],data_o[34:0]" */;
  input [34:0]data_i;
  input [3:0]shift_i;
  output [34:0]data_o;
endmodule