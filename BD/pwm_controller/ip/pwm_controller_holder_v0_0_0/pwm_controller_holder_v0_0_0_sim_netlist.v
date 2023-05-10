// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Mar 21 16:54:07 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_holder_v0_0_0 -prefix
//               pwm_controller_holder_v0_0_0_ pwm_controller_holder_v0_0_0_sim_netlist.v
// Design      : pwm_controller_holder_v0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pwm_controller_holder_v0_0_0_holder_v0
   (data_out,
    en_in,
    data_in,
    clk_in);
  output [33:0]data_out;
  input en_in;
  input [33:0]data_in;
  input clk_in;

  wire clk_in;
  wire [33:0]data_in;
  wire [33:0]data_out;
  wire en_in;

  FDRE \data_reg_reg[0] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[0]),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_reg_reg[10] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[10]),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_reg_reg[11] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[11]),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_reg_reg[12] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[12]),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_reg_reg[13] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[13]),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_reg_reg[14] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[14]),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_reg_reg[15] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[15]),
        .Q(data_out[15]),
        .R(1'b0));
  FDRE \data_reg_reg[16] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[16]),
        .Q(data_out[16]),
        .R(1'b0));
  FDRE \data_reg_reg[17] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[17]),
        .Q(data_out[17]),
        .R(1'b0));
  FDRE \data_reg_reg[18] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[18]),
        .Q(data_out[18]),
        .R(1'b0));
  FDRE \data_reg_reg[19] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[19]),
        .Q(data_out[19]),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[1]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_reg_reg[20] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[20]),
        .Q(data_out[20]),
        .R(1'b0));
  FDRE \data_reg_reg[21] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[21]),
        .Q(data_out[21]),
        .R(1'b0));
  FDRE \data_reg_reg[22] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[22]),
        .Q(data_out[22]),
        .R(1'b0));
  FDRE \data_reg_reg[23] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[23]),
        .Q(data_out[23]),
        .R(1'b0));
  FDRE \data_reg_reg[24] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[24]),
        .Q(data_out[24]),
        .R(1'b0));
  FDRE \data_reg_reg[25] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[25]),
        .Q(data_out[25]),
        .R(1'b0));
  FDRE \data_reg_reg[26] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[26]),
        .Q(data_out[26]),
        .R(1'b0));
  FDRE \data_reg_reg[27] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[27]),
        .Q(data_out[27]),
        .R(1'b0));
  FDRE \data_reg_reg[28] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[28]),
        .Q(data_out[28]),
        .R(1'b0));
  FDRE \data_reg_reg[29] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[29]),
        .Q(data_out[29]),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[2]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_reg_reg[30] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[30]),
        .Q(data_out[30]),
        .R(1'b0));
  FDRE \data_reg_reg[31] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[31]),
        .Q(data_out[31]),
        .R(1'b0));
  FDRE \data_reg_reg[32] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[32]),
        .Q(data_out[32]),
        .R(1'b0));
  FDRE \data_reg_reg[33] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[33]),
        .Q(data_out[33]),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[3]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_reg_reg[4] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[4]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_reg_reg[5] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[5]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_reg_reg[6] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[6]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_reg_reg[7] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[7]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE \data_reg_reg[8] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[8]),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_reg_reg[9] 
       (.C(clk_in),
        .CE(en_in),
        .D(data_in[9]),
        .Q(data_out[9]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "pwm_controller_holder_v0_0_0,holder_v0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "holder_v0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_holder_v0_0_0
   (data_in,
    data_out,
    clk_in,
    en_in);
  input [33:0]data_in;
  output [33:0]data_out;
  input clk_in;
  input en_in;

  wire clk_in;
  wire [33:0]data_in;
  wire [33:0]data_out;
  wire en_in;

  pwm_controller_holder_v0_0_0_holder_v0 U0
       (.clk_in(clk_in),
        .data_in(data_in),
        .data_out(data_out),
        .en_in(en_in));
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
