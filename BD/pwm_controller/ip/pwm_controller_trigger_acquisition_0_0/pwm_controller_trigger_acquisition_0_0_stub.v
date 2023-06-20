// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 18:54:12 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_acquisition_0_0/pwm_controller_trigger_acquisition_0_0_stub.v
// Design      : pwm_controller_trigger_acquisition_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "trigger_acquisition,Vivado 2022.2" *)
module pwm_controller_trigger_acquisition_0_0(acq_o, free_i, max_i, cmp_i, half_i, counter_i, 
  en_free_i, en_max_i, en_cmp_i, en_half_i, en_zero_i)
/* synthesis syn_black_box black_box_pad_pin="acq_o,free_i[15:0],max_i[15:0],cmp_i[15:0],half_i[15:0],counter_i[15:0],en_free_i,en_max_i,en_cmp_i,en_half_i,en_zero_i" */;
  output acq_o;
  input [15:0]free_i;
  input [15:0]max_i;
  input [15:0]cmp_i;
  input [15:0]half_i;
  input [15:0]counter_i;
  input en_free_i;
  input en_max_i;
  input en_cmp_i;
  input en_half_i;
  input en_zero_i;
endmodule
