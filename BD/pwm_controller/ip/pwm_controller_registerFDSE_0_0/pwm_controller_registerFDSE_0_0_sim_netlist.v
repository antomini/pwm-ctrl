// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 16:07:28 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_registerFDSE_0_0/pwm_controller_registerFDSE_0_0_sim_netlist.v
// Design      : pwm_controller_registerFDSE_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_registerFDSE_0_0,registerFDSE,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "registerFDSE,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_registerFDSE_0_0
   (data_o,
    data_i,
    en_i,
    clk_i);
  output [34:0]data_o;
  input [34:0]data_i;
  input en_i;
  input clk_i;

  wire clk_i;
  wire [34:0]data_i;
  wire [34:0]data_o;
  wire en_i;

  pwm_controller_registerFDSE_0_0_registerFDSE U0
       (.clk_i(clk_i),
        .data_i(data_i),
        .data_o(data_o),
        .en_i(en_i));
endmodule

(* ORIG_REF_NAME = "registerFDSE" *) 
module pwm_controller_registerFDSE_0_0_registerFDSE
   (data_o,
    en_i,
    data_i,
    clk_i);
  output [34:0]data_o;
  input en_i;
  input [34:0]data_i;
  input clk_i;

  wire clk_i;
  wire [34:0]data_i;
  wire [34:0]data_o;
  wire en_i;

  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[0]),
        .Q(data_o[0]),
        .R(1'b0));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[10]),
        .Q(data_o[10]),
        .R(1'b0));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[11]),
        .Q(data_o[11]),
        .R(1'b0));
  FDRE \data_o_reg[12] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[12]),
        .Q(data_o[12]),
        .R(1'b0));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[13]),
        .Q(data_o[13]),
        .R(1'b0));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[14]),
        .Q(data_o[14]),
        .R(1'b0));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[15]),
        .Q(data_o[15]),
        .R(1'b0));
  FDRE \data_o_reg[16] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[16]),
        .Q(data_o[16]),
        .R(1'b0));
  FDRE \data_o_reg[17] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[17]),
        .Q(data_o[17]),
        .R(1'b0));
  FDRE \data_o_reg[18] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[18]),
        .Q(data_o[18]),
        .R(1'b0));
  FDRE \data_o_reg[19] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[19]),
        .Q(data_o[19]),
        .R(1'b0));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[1]),
        .Q(data_o[1]),
        .R(1'b0));
  FDRE \data_o_reg[20] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[20]),
        .Q(data_o[20]),
        .R(1'b0));
  FDRE \data_o_reg[21] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[21]),
        .Q(data_o[21]),
        .R(1'b0));
  FDRE \data_o_reg[22] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[22]),
        .Q(data_o[22]),
        .R(1'b0));
  FDRE \data_o_reg[23] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[23]),
        .Q(data_o[23]),
        .R(1'b0));
  FDRE \data_o_reg[24] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[24]),
        .Q(data_o[24]),
        .R(1'b0));
  FDRE \data_o_reg[25] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[25]),
        .Q(data_o[25]),
        .R(1'b0));
  FDRE \data_o_reg[26] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[26]),
        .Q(data_o[26]),
        .R(1'b0));
  FDRE \data_o_reg[27] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[27]),
        .Q(data_o[27]),
        .R(1'b0));
  FDRE \data_o_reg[28] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[28]),
        .Q(data_o[28]),
        .R(1'b0));
  FDRE \data_o_reg[29] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[29]),
        .Q(data_o[29]),
        .R(1'b0));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[2]),
        .Q(data_o[2]),
        .R(1'b0));
  FDRE \data_o_reg[30] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[30]),
        .Q(data_o[30]),
        .R(1'b0));
  FDRE \data_o_reg[31] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[31]),
        .Q(data_o[31]),
        .R(1'b0));
  FDRE \data_o_reg[32] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[32]),
        .Q(data_o[32]),
        .R(1'b0));
  FDRE \data_o_reg[33] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[33]),
        .Q(data_o[33]),
        .R(1'b0));
  FDRE \data_o_reg[34] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[34]),
        .Q(data_o[34]),
        .R(1'b0));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[3]),
        .Q(data_o[3]),
        .R(1'b0));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[4]),
        .Q(data_o[4]),
        .R(1'b0));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[5]),
        .Q(data_o[5]),
        .R(1'b0));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[6]),
        .Q(data_o[6]),
        .R(1'b0));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[7]),
        .Q(data_o[7]),
        .R(1'b0));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[8]),
        .Q(data_o[8]),
        .R(1'b0));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(en_i),
        .D(data_i[9]),
        .Q(data_o[9]),
        .R(1'b0));
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
