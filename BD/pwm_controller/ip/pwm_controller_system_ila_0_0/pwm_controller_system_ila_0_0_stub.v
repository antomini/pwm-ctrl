// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 19:04:01 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_system_ila_0_0/pwm_controller_system_ila_0_0_stub.v
// Design      : pwm_controller_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_0def,Vivado 2022.2" *)
module pwm_controller_system_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[15:0],probe2[15:0],probe3[15:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[0:0],probe8[0:0],probe9[0:0],probe10[0:0],probe11[0:0],probe12[0:0],probe13[15:0],probe14[15:0]" */;
  input clk;
  input [31:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
  input [15:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [15:0]probe13;
  input [15:0]probe14;
endmodule
