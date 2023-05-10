// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Apr 12 18:26:45 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_saturator_v0_0_0/pwm_controller_saturator_v0_0_0_sim_netlist.v
// Design      : pwm_controller_saturator_v0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_saturator_v0_0_0,saturator_v0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "saturator_v0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_saturator_v0_0_0
   (data_in,
    sat_out);
  input [33:0]data_in;
  output [15:0]sat_out;

  wire [33:0]data_in;
  wire [15:0]sat_out;

  pwm_controller_saturator_v0_0_0_saturator_v0 U0
       (.data_in(data_in),
        .sat_out(sat_out));
endmodule

(* ORIG_REF_NAME = "saturator_v0" *) 
module pwm_controller_saturator_v0_0_0_saturator_v0
   (sat_out,
    data_in);
  output [15:0]sat_out;
  input [33:0]data_in;

  wire [33:0]data_in;
  wire sat1;
  wire sat1_carry__0_i_1_n_0;
  wire sat1_carry__0_i_2_n_0;
  wire sat1_carry__0_i_3_n_0;
  wire sat1_carry__0_i_4_n_0;
  wire sat1_carry__0_i_5_n_0;
  wire sat1_carry__0_i_6_n_0;
  wire sat1_carry__0_i_7_n_0;
  wire sat1_carry__0_i_8_n_0;
  wire sat1_carry__0_n_0;
  wire sat1_carry__0_n_1;
  wire sat1_carry__0_n_2;
  wire sat1_carry__0_n_3;
  wire sat1_carry__1_i_1_n_0;
  wire sat1_carry__1_i_2_n_0;
  wire sat1_carry_i_1_n_0;
  wire sat1_carry_i_2_n_0;
  wire sat1_carry_i_3_n_0;
  wire sat1_carry_i_4_n_0;
  wire sat1_carry_i_5_n_0;
  wire sat1_carry_i_6_n_0;
  wire sat1_carry_i_7_n_0;
  wire sat1_carry_i_8_n_0;
  wire sat1_carry_n_0;
  wire sat1_carry_n_1;
  wire sat1_carry_n_2;
  wire sat1_carry_n_3;
  wire [15:0]sat_out;
  wire [3:0]NLW_sat1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sat1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_sat1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sat1_carry__1_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sat1_carry
       (.CI(1'b0),
        .CO({sat1_carry_n_0,sat1_carry_n_1,sat1_carry_n_2,sat1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({sat1_carry_i_1_n_0,sat1_carry_i_2_n_0,sat1_carry_i_3_n_0,sat1_carry_i_4_n_0}),
        .O(NLW_sat1_carry_O_UNCONNECTED[3:0]),
        .S({sat1_carry_i_5_n_0,sat1_carry_i_6_n_0,sat1_carry_i_7_n_0,sat1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sat1_carry__0
       (.CI(sat1_carry_n_0),
        .CO({sat1_carry__0_n_0,sat1_carry__0_n_1,sat1_carry__0_n_2,sat1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sat1_carry__0_i_1_n_0,sat1_carry__0_i_2_n_0,sat1_carry__0_i_3_n_0,sat1_carry__0_i_4_n_0}),
        .O(NLW_sat1_carry__0_O_UNCONNECTED[3:0]),
        .S({sat1_carry__0_i_5_n_0,sat1_carry__0_i_6_n_0,sat1_carry__0_i_7_n_0,sat1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry__0_i_1
       (.I0(data_in[30]),
        .I1(data_in[31]),
        .O(sat1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry__0_i_2
       (.I0(data_in[28]),
        .I1(data_in[29]),
        .O(sat1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry__0_i_3
       (.I0(data_in[26]),
        .I1(data_in[27]),
        .O(sat1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry__0_i_4
       (.I0(data_in[24]),
        .I1(data_in[25]),
        .O(sat1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry__0_i_5
       (.I0(data_in[30]),
        .I1(data_in[31]),
        .O(sat1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry__0_i_6
       (.I0(data_in[28]),
        .I1(data_in[29]),
        .O(sat1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry__0_i_7
       (.I0(data_in[26]),
        .I1(data_in[27]),
        .O(sat1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry__0_i_8
       (.I0(data_in[24]),
        .I1(data_in[25]),
        .O(sat1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 sat1_carry__1
       (.CI(sat1_carry__0_n_0),
        .CO({NLW_sat1_carry__1_CO_UNCONNECTED[3:1],sat1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,sat1_carry__1_i_1_n_0}),
        .O(NLW_sat1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,sat1_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sat1_carry__1_i_1
       (.I0(data_in[32]),
        .I1(data_in[33]),
        .O(sat1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry__1_i_2
       (.I0(data_in[32]),
        .I1(data_in[33]),
        .O(sat1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry_i_1
       (.I0(data_in[22]),
        .I1(data_in[23]),
        .O(sat1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry_i_2
       (.I0(data_in[20]),
        .I1(data_in[21]),
        .O(sat1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry_i_3
       (.I0(data_in[18]),
        .I1(data_in[19]),
        .O(sat1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat1_carry_i_4
       (.I0(data_in[16]),
        .I1(data_in[17]),
        .O(sat1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry_i_5
       (.I0(data_in[22]),
        .I1(data_in[23]),
        .O(sat1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry_i_6
       (.I0(data_in[20]),
        .I1(data_in[21]),
        .O(sat1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry_i_7
       (.I0(data_in[18]),
        .I1(data_in[19]),
        .O(sat1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat1_carry_i_8
       (.I0(data_in[16]),
        .I1(data_in[17]),
        .O(sat1_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[0]_INST_0 
       (.I0(data_in[0]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[10]_INST_0 
       (.I0(data_in[10]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[11]_INST_0 
       (.I0(data_in[11]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[12]_INST_0 
       (.I0(data_in[12]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[13]_INST_0 
       (.I0(data_in[13]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[14]_INST_0 
       (.I0(data_in[14]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[15]_INST_0 
       (.I0(data_in[15]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[1]_INST_0 
       (.I0(data_in[1]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[2]_INST_0 
       (.I0(data_in[2]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[3]_INST_0 
       (.I0(data_in[3]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[4]_INST_0 
       (.I0(data_in[4]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[5]_INST_0 
       (.I0(data_in[5]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[6]_INST_0 
       (.I0(data_in[6]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[7]_INST_0 
       (.I0(data_in[7]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[8]_INST_0 
       (.I0(data_in[8]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \sat_out[9]_INST_0 
       (.I0(data_in[9]),
        .I1(sat1),
        .I2(data_in[33]),
        .O(sat_out[9]));
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
