// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 18:43:00 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_zeropad_left_1_0/pwm_controller_zeropad_left_1_0_stub.v
// Design      : pwm_controller_zeropad_left_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "zeropad_left,Vivado 2022.2" *)
module pwm_controller_zeropad_left_1_0(data_o, data_i)
/* synthesis syn_black_box black_box_pad_pin="data_o[16:0],data_i[15:0]" */;
  output [16:0]data_o;
  input [15:0]data_i;
endmodule
