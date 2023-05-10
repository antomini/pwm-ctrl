// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Apr 11 10:13:32 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_AXIS_Snooper_0_0/pwm_controller_AXIS_Snooper_0_0_stub.v
// Design      : pwm_controller_AXIS_Snooper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXIS_Snooper,Vivado 2022.2" *)
module pwm_controller_AXIS_Snooper_0_0(adc_out, id_out, s_axis_aclk, s_axis_aresetn, 
  s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tid)
/* synthesis syn_black_box black_box_pad_pin="adc_out[15:0],id_out[4:0],s_axis_aclk,s_axis_aresetn,s_axis_tvalid,s_axis_tready,s_axis_tdata[15:0],s_axis_tid[4:0]" */;
  output [15:0]adc_out;
  output [4:0]id_out;
  input s_axis_aclk;
  input s_axis_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [4:0]s_axis_tid;
endmodule
