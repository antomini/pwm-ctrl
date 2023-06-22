// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 02:14:14 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_mux2_0_1/pwm_controller_mux2_0_1_sim_netlist.v
// Design      : pwm_controller_mux2_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_mux2_0_1,mux2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mux2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_mux2_0_1
   (sel_i,
    data1_i,
    data2_i,
    data_o);
  input sel_i;
  input [15:0]data1_i;
  input [15:0]data2_i;
  output [15:0]data_o;

  wire [15:0]data1_i;
  wire [15:0]data2_i;
  wire [15:0]data_o;
  wire sel_i;

  pwm_controller_mux2_0_1_mux2 U0
       (.data1_i(data1_i),
        .data2_i(data2_i),
        .data_o(data_o),
        .sel_i(sel_i));
endmodule

(* ORIG_REF_NAME = "mux2" *) 
module pwm_controller_mux2_0_1_mux2
   (data_o,
    data2_i,
    data1_i,
    sel_i);
  output [15:0]data_o;
  input [15:0]data2_i;
  input [15:0]data1_i;
  input sel_i;

  wire [15:0]data1_i;
  wire [15:0]data2_i;
  wire [15:0]data_o;
  wire sel_i;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[0]_INST_0 
       (.I0(data2_i[0]),
        .I1(data1_i[0]),
        .I2(sel_i),
        .O(data_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[10]_INST_0 
       (.I0(data2_i[10]),
        .I1(data1_i[10]),
        .I2(sel_i),
        .O(data_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[11]_INST_0 
       (.I0(data2_i[11]),
        .I1(data1_i[11]),
        .I2(sel_i),
        .O(data_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[12]_INST_0 
       (.I0(data2_i[12]),
        .I1(data1_i[12]),
        .I2(sel_i),
        .O(data_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[13]_INST_0 
       (.I0(data2_i[13]),
        .I1(data1_i[13]),
        .I2(sel_i),
        .O(data_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[14]_INST_0 
       (.I0(data2_i[14]),
        .I1(data1_i[14]),
        .I2(sel_i),
        .O(data_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[15]_INST_0 
       (.I0(data2_i[15]),
        .I1(data1_i[15]),
        .I2(sel_i),
        .O(data_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[1]_INST_0 
       (.I0(data2_i[1]),
        .I1(data1_i[1]),
        .I2(sel_i),
        .O(data_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[2]_INST_0 
       (.I0(data2_i[2]),
        .I1(data1_i[2]),
        .I2(sel_i),
        .O(data_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[3]_INST_0 
       (.I0(data2_i[3]),
        .I1(data1_i[3]),
        .I2(sel_i),
        .O(data_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[4]_INST_0 
       (.I0(data2_i[4]),
        .I1(data1_i[4]),
        .I2(sel_i),
        .O(data_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[5]_INST_0 
       (.I0(data2_i[5]),
        .I1(data1_i[5]),
        .I2(sel_i),
        .O(data_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[6]_INST_0 
       (.I0(data2_i[6]),
        .I1(data1_i[6]),
        .I2(sel_i),
        .O(data_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[7]_INST_0 
       (.I0(data2_i[7]),
        .I1(data1_i[7]),
        .I2(sel_i),
        .O(data_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[8]_INST_0 
       (.I0(data2_i[8]),
        .I1(data1_i[8]),
        .I2(sel_i),
        .O(data_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_o[9]_INST_0 
       (.I0(data2_i[9]),
        .I1(data1_i[9]),
        .I2(sel_i),
        .O(data_o[9]));
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
