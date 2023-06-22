// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 02:14:13 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_limiter_signed_0_0/pwm_controller_limiter_signed_0_0_sim_netlist.v
// Design      : pwm_controller_limiter_signed_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_limiter_signed_0_0,limiter_signed,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "limiter_signed,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_limiter_signed_0_0
   (data_i,
    data_o);
  input [34:0]data_i;
  output [34:0]data_o;

  wire \<const0> ;
  wire [34:0]data_i;
  wire [33:0]\^data_o ;

  assign data_o[34] = \<const0> ;
  assign data_o[33:0] = \^data_o [33:0];
  GND GND
       (.G(\<const0> ));
  pwm_controller_limiter_signed_0_0_limiter_signed U0
       (.data_i(data_i),
        .data_o(\^data_o ));
endmodule

(* ORIG_REF_NAME = "limiter_signed" *) 
module pwm_controller_limiter_signed_0_0_limiter_signed
   (data_o,
    data_i);
  output [33:0]data_o;
  input [34:0]data_i;

  wire [34:0]data_i;
  wire [33:0]data_o;
  wire data_o1;
  wire data_o1_carry__0_i_1_n_0;
  wire data_o1_carry__0_i_2_n_0;
  wire data_o1_carry__0_i_3_n_0;
  wire data_o1_carry__0_i_4_n_0;
  wire data_o1_carry__0_i_5_n_0;
  wire data_o1_carry__0_i_6_n_0;
  wire data_o1_carry__0_i_7_n_0;
  wire data_o1_carry__0_i_8_n_0;
  wire data_o1_carry__0_n_0;
  wire data_o1_carry__0_n_1;
  wire data_o1_carry__0_n_2;
  wire data_o1_carry__0_n_3;
  wire data_o1_carry__1_i_1_n_0;
  wire data_o1_carry__1_i_2_n_0;
  wire data_o1_carry__1_i_3_n_0;
  wire data_o1_carry__1_n_3;
  wire data_o1_carry_i_1_n_0;
  wire data_o1_carry_i_2_n_0;
  wire data_o1_carry_i_3_n_0;
  wire data_o1_carry_i_4_n_0;
  wire data_o1_carry_i_5_n_0;
  wire data_o1_carry_i_6_n_0;
  wire data_o1_carry_i_7_n_0;
  wire data_o1_carry_i_8_n_0;
  wire data_o1_carry_n_0;
  wire data_o1_carry_n_1;
  wire data_o1_carry_n_2;
  wire data_o1_carry_n_3;
  wire [3:0]NLW_data_o1_carry_O_UNCONNECTED;
  wire [3:0]NLW_data_o1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_data_o1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_data_o1_carry__1_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 data_o1_carry
       (.CI(1'b0),
        .CO({data_o1_carry_n_0,data_o1_carry_n_1,data_o1_carry_n_2,data_o1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({data_o1_carry_i_1_n_0,data_o1_carry_i_2_n_0,data_o1_carry_i_3_n_0,data_o1_carry_i_4_n_0}),
        .O(NLW_data_o1_carry_O_UNCONNECTED[3:0]),
        .S({data_o1_carry_i_5_n_0,data_o1_carry_i_6_n_0,data_o1_carry_i_7_n_0,data_o1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 data_o1_carry__0
       (.CI(data_o1_carry_n_0),
        .CO({data_o1_carry__0_n_0,data_o1_carry__0_n_1,data_o1_carry__0_n_2,data_o1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({data_o1_carry__0_i_1_n_0,data_o1_carry__0_i_2_n_0,data_o1_carry__0_i_3_n_0,data_o1_carry__0_i_4_n_0}),
        .O(NLW_data_o1_carry__0_O_UNCONNECTED[3:0]),
        .S({data_o1_carry__0_i_5_n_0,data_o1_carry__0_i_6_n_0,data_o1_carry__0_i_7_n_0,data_o1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry__0_i_1
       (.I0(data_i[30]),
        .I1(data_i[31]),
        .O(data_o1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry__0_i_2
       (.I0(data_i[28]),
        .I1(data_i[29]),
        .O(data_o1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry__0_i_3
       (.I0(data_i[26]),
        .I1(data_i[27]),
        .O(data_o1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry__0_i_4
       (.I0(data_i[24]),
        .I1(data_i[25]),
        .O(data_o1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry__0_i_5
       (.I0(data_i[30]),
        .I1(data_i[31]),
        .O(data_o1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry__0_i_6
       (.I0(data_i[28]),
        .I1(data_i[29]),
        .O(data_o1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry__0_i_7
       (.I0(data_i[26]),
        .I1(data_i[27]),
        .O(data_o1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry__0_i_8
       (.I0(data_i[24]),
        .I1(data_i[25]),
        .O(data_o1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 data_o1_carry__1
       (.CI(data_o1_carry__0_n_0),
        .CO({NLW_data_o1_carry__1_CO_UNCONNECTED[3:2],data_o1,data_o1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,data_o1_carry__1_i_1_n_0}),
        .O(NLW_data_o1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,data_o1_carry__1_i_2_n_0,data_o1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry__1_i_1
       (.I0(data_i[32]),
        .I1(data_i[33]),
        .O(data_o1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_o1_carry__1_i_2
       (.I0(data_i[34]),
        .O(data_o1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry__1_i_3
       (.I0(data_i[32]),
        .I1(data_i[33]),
        .O(data_o1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry_i_1
       (.I0(data_i[22]),
        .I1(data_i[23]),
        .O(data_o1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry_i_2
       (.I0(data_i[20]),
        .I1(data_i[21]),
        .O(data_o1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry_i_3
       (.I0(data_i[18]),
        .I1(data_i[19]),
        .O(data_o1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    data_o1_carry_i_4
       (.I0(data_i[16]),
        .I1(data_i[17]),
        .O(data_o1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry_i_5
       (.I0(data_i[22]),
        .I1(data_i[23]),
        .O(data_o1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry_i_6
       (.I0(data_i[20]),
        .I1(data_i[21]),
        .O(data_o1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry_i_7
       (.I0(data_i[18]),
        .I1(data_i[19]),
        .O(data_o1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_o1_carry_i_8
       (.I0(data_i[16]),
        .I1(data_i[17]),
        .O(data_o1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[0]_INST_0 
       (.I0(data_i[0]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[10]_INST_0 
       (.I0(data_i[10]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[11]_INST_0 
       (.I0(data_i[11]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[12]_INST_0 
       (.I0(data_i[12]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[13]_INST_0 
       (.I0(data_i[13]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[14]_INST_0 
       (.I0(data_i[14]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[15]_INST_0 
       (.I0(data_i[15]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[16]_INST_0 
       (.I0(data_o1),
        .I1(data_i[16]),
        .I2(data_i[34]),
        .O(data_o[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[17]_INST_0 
       (.I0(data_o1),
        .I1(data_i[17]),
        .I2(data_i[34]),
        .O(data_o[17]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[18]_INST_0 
       (.I0(data_o1),
        .I1(data_i[18]),
        .I2(data_i[34]),
        .O(data_o[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[19]_INST_0 
       (.I0(data_o1),
        .I1(data_i[19]),
        .I2(data_i[34]),
        .O(data_o[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[1]_INST_0 
       (.I0(data_i[1]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[20]_INST_0 
       (.I0(data_o1),
        .I1(data_i[20]),
        .I2(data_i[34]),
        .O(data_o[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[21]_INST_0 
       (.I0(data_o1),
        .I1(data_i[21]),
        .I2(data_i[34]),
        .O(data_o[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[22]_INST_0 
       (.I0(data_o1),
        .I1(data_i[22]),
        .I2(data_i[34]),
        .O(data_o[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[23]_INST_0 
       (.I0(data_o1),
        .I1(data_i[23]),
        .I2(data_i[34]),
        .O(data_o[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[24]_INST_0 
       (.I0(data_o1),
        .I1(data_i[24]),
        .I2(data_i[34]),
        .O(data_o[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[25]_INST_0 
       (.I0(data_o1),
        .I1(data_i[25]),
        .I2(data_i[34]),
        .O(data_o[25]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[26]_INST_0 
       (.I0(data_o1),
        .I1(data_i[26]),
        .I2(data_i[34]),
        .O(data_o[26]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[27]_INST_0 
       (.I0(data_o1),
        .I1(data_i[27]),
        .I2(data_i[34]),
        .O(data_o[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[28]_INST_0 
       (.I0(data_o1),
        .I1(data_i[28]),
        .I2(data_i[34]),
        .O(data_o[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[29]_INST_0 
       (.I0(data_o1),
        .I1(data_i[29]),
        .I2(data_i[34]),
        .O(data_o[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[2]_INST_0 
       (.I0(data_i[2]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[30]_INST_0 
       (.I0(data_o1),
        .I1(data_i[30]),
        .I2(data_i[34]),
        .O(data_o[30]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[31]_INST_0 
       (.I0(data_o1),
        .I1(data_i[31]),
        .I2(data_i[34]),
        .O(data_o[31]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[32]_INST_0 
       (.I0(data_o1),
        .I1(data_i[32]),
        .I2(data_i[34]),
        .O(data_o[32]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_o[33]_INST_0 
       (.I0(data_o1),
        .I1(data_i[33]),
        .I2(data_i[34]),
        .O(data_o[33]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[3]_INST_0 
       (.I0(data_i[3]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[4]_INST_0 
       (.I0(data_i[4]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[5]_INST_0 
       (.I0(data_i[5]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[6]_INST_0 
       (.I0(data_i[6]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[7]_INST_0 
       (.I0(data_i[7]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[8]_INST_0 
       (.I0(data_i[8]),
        .I1(data_o1),
        .I2(data_i[34]),
        .O(data_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \data_o[9]_INST_0 
       (.I0(data_i[9]),
        .I1(data_o1),
        .I2(data_i[34]),
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
