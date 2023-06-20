// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 18:54:12 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_configmap_pwm_0_0/pwm_controller_configmap_pwm_0_0_sim_netlist.v
// Design      : pwm_controller_configmap_pwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_configmap_pwm_0_0,configmap_pwm,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "configmap_pwm,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_configmap_pwm_0_0
   (resetn_o,
    sawtri_o,
    async_o,
    upd_peak_o,
    upd_valley_o,
    acq_free_o,
    acq_max_o,
    acq_cmp_o,
    acq_half_o,
    acq_zero_o,
    en_snoop_o,
    data_i);
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
  input [31:0]data_i;

  wire [31:0]data_i;

  assign acq_cmp_o = data_i[7];
  assign acq_free_o = data_i[5];
  assign acq_half_o = data_i[8];
  assign acq_max_o = data_i[6];
  assign acq_zero_o = data_i[9];
  assign async_o = data_i[2];
  assign en_snoop_o = data_i[10];
  assign resetn_o = data_i[0];
  assign sawtri_o = data_i[1];
  assign upd_peak_o = data_i[3];
  assign upd_valley_o = data_i[4];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
