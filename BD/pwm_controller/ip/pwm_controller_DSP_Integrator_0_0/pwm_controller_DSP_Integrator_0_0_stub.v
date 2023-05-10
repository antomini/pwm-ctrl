// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Mar 21 20:46:47 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top pwm_controller_DSP_Integrator_0_0 -prefix
//               pwm_controller_DSP_Integrator_0_0_ pwm_controller_DSP_Integrator_0_0_stub.v
// Design      : pwm_controller_DSP_Integrator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "DSP_Integrator,Vivado 2022.2" *)
module pwm_controller_DSP_Integrator_0_0(ki_in, ref_in, adc_in, loop_in, y_out, start_in, 
  clk_in)
/* synthesis syn_black_box black_box_pad_pin="ki_in[16:0],ref_in[16:0],adc_in[16:0],loop_in[33:0],y_out[33:0],start_in,clk_in" */;
  input [16:0]ki_in;
  input [16:0]ref_in;
  input [16:0]adc_in;
  input [33:0]loop_in;
  output [33:0]y_out;
  input start_in;
  input clk_in;
endmodule
