// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 02:14:14 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_configmap_pwm_0_0/pwm_controller_configmap_pwm_0_0_stub.v
// Design      : pwm_controller_configmap_pwm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "configmap_pwm,Vivado 2022.2" *)
module pwm_controller_configmap_pwm_0_0(resetn_o, sawtri_o, async_o, upd_peak_o, 
  upd_valley_o, acq_free_o, acq_max_o, acq_cmp_o, acq_half_o, acq_zero_o, en_snoop_o, 
  dsp_start_o, dsp_bypass_o, data_i)
/* synthesis syn_black_box black_box_pad_pin="resetn_o,sawtri_o,async_o,upd_peak_o,upd_valley_o,acq_free_o,acq_max_o,acq_cmp_o,acq_half_o,acq_zero_o,en_snoop_o,dsp_start_o,dsp_bypass_o,data_i[31:0]" */;
  output resetn_o;
  output sawtri_o;
  output async_o;
  output upd_peak_o;
  output upd_valley_o;
  output acq_free_o;
  output acq_max_o;
  output acq_cmp_o;
  output acq_half_o;
  output acq_zero_o;
  output en_snoop_o;
  output dsp_start_o;
  output dsp_bypass_o;
  input [31:0]data_i;
endmodule
