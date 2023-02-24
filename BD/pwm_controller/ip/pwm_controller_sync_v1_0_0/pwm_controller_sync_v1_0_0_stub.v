// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Feb 23 12:48:13 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_sync_v1_0_0/pwm_controller_sync_v1_0_0_stub.v
// Design      : pwm_controller_sync_v1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sync_v1,Vivado 2022.2" *)
module pwm_controller_sync_v1_0_0(counter_i, delay_i, shift_i, mask_i, trigger_o)
/* synthesis syn_black_box black_box_pad_pin="counter_i[15:0],delay_i[7:0],shift_i[1:0],mask_i[15:0],trigger_o" */;
  input [15:0]counter_i;
  input [7:0]delay_i;
  input [1:0]shift_i;
  input [15:0]mask_i;
  output trigger_o;
endmodule
