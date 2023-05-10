// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Apr 11 09:59:24 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top pwm_controller_sync_v1_1_0 -prefix
//               pwm_controller_sync_v1_1_0_ pwm_controller_sync_v1_1_0_stub.v
// Design      : pwm_controller_sync_v1_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "sync_v1,Vivado 2022.2" *)
module pwm_controller_sync_v1_1_0(counter_i, delay_i, shift_i, mask_i, shifted_d, 
  trunc_d, trigger_o)
/* synthesis syn_black_box black_box_pad_pin="counter_i[15:0],delay_i[8:0],shift_i[3:0],mask_i[15:0],shifted_d[15:0],trunc_d[15:0],trigger_o" */;
  input [15:0]counter_i;
  input [8:0]delay_i;
  input [3:0]shift_i;
  input [15:0]mask_i;
  output [15:0]shifted_d;
  output [15:0]trunc_d;
  output trigger_o;
endmodule
