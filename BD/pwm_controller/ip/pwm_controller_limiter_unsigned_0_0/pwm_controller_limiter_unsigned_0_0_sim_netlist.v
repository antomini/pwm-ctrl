// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 00:30:03 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_limiter_unsigned_0_0/pwm_controller_limiter_unsigned_0_0_sim_netlist.v
// Design      : pwm_controller_limiter_unsigned_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_limiter_unsigned_0_0,limiter_unsigned,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "limiter_unsigned,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_limiter_unsigned_0_0
   (data_i,
    data_o);
  input [31:0]data_i;
  output [15:0]data_o;

  wire [31:0]data_i;
  wire [15:0]data_o;
  wire \data_o[15]_INST_0_i_1_n_0 ;
  wire \data_o[15]_INST_0_i_2_n_0 ;
  wire \data_o[15]_INST_0_i_3_n_0 ;
  wire \data_o[15]_INST_0_i_4_n_0 ;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[0]_INST_0 
       (.I0(data_i[0]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[0]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[10]_INST_0 
       (.I0(data_i[10]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[10]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[11]_INST_0 
       (.I0(data_i[11]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[11]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[12]_INST_0 
       (.I0(data_i[12]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[12]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[13]_INST_0 
       (.I0(data_i[13]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[13]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[14]_INST_0 
       (.I0(data_i[14]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[14]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[15]_INST_0 
       (.I0(data_i[15]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_o[15]_INST_0_i_1 
       (.I0(data_i[25]),
        .I1(data_i[24]),
        .I2(data_i[27]),
        .I3(data_i[26]),
        .O(\data_o[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_o[15]_INST_0_i_2 
       (.I0(data_i[29]),
        .I1(data_i[28]),
        .I2(data_i[31]),
        .I3(data_i[30]),
        .O(\data_o[15]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_o[15]_INST_0_i_3 
       (.I0(data_i[17]),
        .I1(data_i[16]),
        .I2(data_i[19]),
        .I3(data_i[18]),
        .O(\data_o[15]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_o[15]_INST_0_i_4 
       (.I0(data_i[21]),
        .I1(data_i[20]),
        .I2(data_i[23]),
        .I3(data_i[22]),
        .O(\data_o[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[1]_INST_0 
       (.I0(data_i[1]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[2]_INST_0 
       (.I0(data_i[2]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[3]_INST_0 
       (.I0(data_i[3]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[3]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[4]_INST_0 
       (.I0(data_i[4]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[5]_INST_0 
       (.I0(data_i[5]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[5]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[6]_INST_0 
       (.I0(data_i[6]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[7]_INST_0 
       (.I0(data_i[7]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[8]_INST_0 
       (.I0(data_i[8]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
        .O(data_o[8]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[9]_INST_0 
       (.I0(data_i[9]),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(\data_o[15]_INST_0_i_2_n_0 ),
        .I3(\data_o[15]_INST_0_i_3_n_0 ),
        .I4(\data_o[15]_INST_0_i_4_n_0 ),
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
