// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 13:51:10 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_DSP_stdpipe_0_1 -prefix
//               pwm_controller_DSP_stdpipe_0_1_ pwm_controller_DSP_stdpipe_0_0_sim_netlist.v
// Design      : pwm_controller_DSP_stdpipe_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pwm_controller_DSP_stdpipe_0_1_DSP_stdpipe
   (acc_o,
    start_i,
    clk_i,
    coef_i,
    ref_i,
    add_i,
    alu_i,
    sub_i);
  output [34:0]acc_o;
  input start_i;
  input clk_i;
  input [16:0]coef_i;
  input [16:0]ref_i;
  input [16:0]add_i;
  input [34:0]alu_i;
  input sub_i;

  wire [34:0]acc_o;
  wire [16:0]add_i;
  wire [34:0]alu_i;
  wire clk_i;
  wire [16:0]coef_i;
  wire [16:0]ref_i;
  wire start_i;
  wire sub_i;
  wire NLW_p_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_CARRYOUT_UNCONNECTED;
  wire [47:35]NLW_p_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_PCOUT_UNCONNECTED;

  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("TRUE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg
       (.A({add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i[16],add_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({coef_i[16],coef_i}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_BCOUT_UNCONNECTED[17:0]),
        .C({alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i[34],alu_i}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(start_i),
        .CEAD(start_i),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(start_i),
        .CEC(start_i),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(start_i),
        .CEINMODE(1'b0),
        .CEM(start_i),
        .CEP(start_i),
        .CLK(clk_i),
        .D({ref_i[16],ref_i[16],ref_i[16],ref_i[16],ref_i[16],ref_i[16],ref_i[16],ref_i[16],ref_i}),
        .INMODE({1'b0,sub_i,1'b1,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_P_UNCONNECTED[47:35],acc_o}),
        .PATTERNBDETECT(NLW_p_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_reg_UNDERFLOW_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "pwm_controller_DSP_stdpipe_0_0,DSP_stdpipe,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DSP_stdpipe,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_DSP_stdpipe_0_1
   (acc_o,
    coef_i,
    ref_i,
    add_i,
    alu_i,
    start_i,
    sub_i,
    clk_i);
  output [34:0]acc_o;
  input [16:0]coef_i;
  input [16:0]ref_i;
  input [16:0]add_i;
  input [34:0]alu_i;
  input start_i;
  input sub_i;
  input clk_i;

  wire [34:0]acc_o;
  wire [16:0]add_i;
  wire [34:0]alu_i;
  wire clk_i;
  wire [16:0]coef_i;
  wire [16:0]ref_i;
  wire start_i;
  wire sub_i;

  pwm_controller_DSP_stdpipe_0_1_DSP_stdpipe U0
       (.acc_o(acc_o),
        .add_i(add_i),
        .alu_i(alu_i),
        .clk_i(clk_i),
        .coef_i(coef_i),
        .ref_i(ref_i),
        .start_i(start_i),
        .sub_i(sub_i));
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
