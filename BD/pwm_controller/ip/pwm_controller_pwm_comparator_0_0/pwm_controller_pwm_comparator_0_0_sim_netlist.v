// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 18:54:13 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_pwm_comparator_0_0/pwm_controller_pwm_comparator_0_0_sim_netlist.v
// Design      : pwm_controller_pwm_comparator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_pwm_comparator_0_0,pwm_comparator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pwm_comparator,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_pwm_comparator_0_0
   (cmp_o,
    half_o,
    pwm_o,
    cmp_i,
    counter_i,
    update_i,
    async_i,
    clk_i);
  output [15:0]cmp_o;
  output [15:0]half_o;
  output pwm_o;
  input [15:0]cmp_i;
  input [15:0]counter_i;
  input update_i;
  input async_i;
  input clk_i;

  wire \<const0> ;
  wire async_i;
  wire clk_i;
  wire [15:0]cmp_i;
  wire [0:0]\^cmp_o ;
  wire [15:0]counter_i;
  wire [14:0]\^half_o ;
  wire pwm_o;
  wire update_i;

  assign cmp_o[15:1] = \^half_o [14:0];
  assign cmp_o[0] = \^cmp_o [0];
  assign half_o[15] = \<const0> ;
  assign half_o[14:0] = \^half_o [14:0];
  GND GND
       (.G(\<const0> ));
  pwm_controller_pwm_comparator_0_0_pwm_comparator U0
       (.async_i(async_i),
        .clk_i(clk_i),
        .cmp_i(cmp_i),
        .cmp_o(\^cmp_o ),
        .counter_i(counter_i),
        .half_o(\^half_o ),
        .pwm_o(pwm_o),
        .update_i(update_i));
endmodule

(* ORIG_REF_NAME = "pwm_comparator" *) 
module pwm_controller_pwm_comparator_0_0_pwm_comparator
   (half_o,
    cmp_o,
    pwm_o,
    update_i,
    cmp_i,
    clk_i,
    async_i,
    counter_i);
  output [14:0]half_o;
  output [0:0]cmp_o;
  output pwm_o;
  input update_i;
  input [15:0]cmp_i;
  input clk_i;
  input async_i;
  input [15:0]counter_i;

  wire async_i;
  wire clk_i;
  wire [15:0]cmp_i;
  wire [0:0]cmp_o;
  wire [15:0]cmp_r;
  wire [15:0]counter_i;
  wire [14:0]half_o;
  wire pwm_o;
  wire pwm_o0_carry__0_i_1_n_0;
  wire pwm_o0_carry__0_i_2_n_0;
  wire pwm_o0_carry__0_i_3_n_0;
  wire pwm_o0_carry__0_i_4_n_0;
  wire pwm_o0_carry__0_i_5_n_0;
  wire pwm_o0_carry__0_i_6_n_0;
  wire pwm_o0_carry__0_i_7_n_0;
  wire pwm_o0_carry__0_i_8_n_0;
  wire pwm_o0_carry__0_n_1;
  wire pwm_o0_carry__0_n_2;
  wire pwm_o0_carry__0_n_3;
  wire pwm_o0_carry_i_1_n_0;
  wire pwm_o0_carry_i_2_n_0;
  wire pwm_o0_carry_i_3_n_0;
  wire pwm_o0_carry_i_4_n_0;
  wire pwm_o0_carry_i_5_n_0;
  wire pwm_o0_carry_i_6_n_0;
  wire pwm_o0_carry_i_7_n_0;
  wire pwm_o0_carry_i_8_n_0;
  wire pwm_o0_carry_n_0;
  wire pwm_o0_carry_n_1;
  wire pwm_o0_carry_n_2;
  wire pwm_o0_carry_n_3;
  wire update_i;
  wire [3:0]NLW_pwm_o0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_o0_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \cmp_o[0]_INST_0 
       (.I0(cmp_i[0]),
        .I1(cmp_r[0]),
        .I2(async_i),
        .O(cmp_o));
  FDRE \cmp_r_reg[0] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[0]),
        .Q(cmp_r[0]),
        .R(1'b0));
  FDRE \cmp_r_reg[10] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[10]),
        .Q(cmp_r[10]),
        .R(1'b0));
  FDRE \cmp_r_reg[11] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[11]),
        .Q(cmp_r[11]),
        .R(1'b0));
  FDRE \cmp_r_reg[12] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[12]),
        .Q(cmp_r[12]),
        .R(1'b0));
  FDRE \cmp_r_reg[13] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[13]),
        .Q(cmp_r[13]),
        .R(1'b0));
  FDRE \cmp_r_reg[14] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[14]),
        .Q(cmp_r[14]),
        .R(1'b0));
  FDRE \cmp_r_reg[15] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[15]),
        .Q(cmp_r[15]),
        .R(1'b0));
  FDRE \cmp_r_reg[1] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[1]),
        .Q(cmp_r[1]),
        .R(1'b0));
  FDRE \cmp_r_reg[2] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[2]),
        .Q(cmp_r[2]),
        .R(1'b0));
  FDRE \cmp_r_reg[3] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[3]),
        .Q(cmp_r[3]),
        .R(1'b0));
  FDRE \cmp_r_reg[4] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[4]),
        .Q(cmp_r[4]),
        .R(1'b0));
  FDRE \cmp_r_reg[5] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[5]),
        .Q(cmp_r[5]),
        .R(1'b0));
  FDRE \cmp_r_reg[6] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[6]),
        .Q(cmp_r[6]),
        .R(1'b0));
  FDRE \cmp_r_reg[7] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[7]),
        .Q(cmp_r[7]),
        .R(1'b0));
  FDRE \cmp_r_reg[8] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[8]),
        .Q(cmp_r[8]),
        .R(1'b0));
  FDRE \cmp_r_reg[9] 
       (.C(clk_i),
        .CE(update_i),
        .D(cmp_i[9]),
        .Q(cmp_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[0]_INST_0 
       (.I0(cmp_i[1]),
        .I1(cmp_r[1]),
        .I2(async_i),
        .O(half_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[10]_INST_0 
       (.I0(cmp_i[11]),
        .I1(cmp_r[11]),
        .I2(async_i),
        .O(half_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[11]_INST_0 
       (.I0(cmp_i[12]),
        .I1(cmp_r[12]),
        .I2(async_i),
        .O(half_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[12]_INST_0 
       (.I0(cmp_i[13]),
        .I1(cmp_r[13]),
        .I2(async_i),
        .O(half_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[13]_INST_0 
       (.I0(cmp_i[14]),
        .I1(cmp_r[14]),
        .I2(async_i),
        .O(half_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[14]_INST_0 
       (.I0(cmp_i[15]),
        .I1(cmp_r[15]),
        .I2(async_i),
        .O(half_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[1]_INST_0 
       (.I0(cmp_i[2]),
        .I1(cmp_r[2]),
        .I2(async_i),
        .O(half_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[2]_INST_0 
       (.I0(cmp_i[3]),
        .I1(cmp_r[3]),
        .I2(async_i),
        .O(half_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[3]_INST_0 
       (.I0(cmp_i[4]),
        .I1(cmp_r[4]),
        .I2(async_i),
        .O(half_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[4]_INST_0 
       (.I0(cmp_i[5]),
        .I1(cmp_r[5]),
        .I2(async_i),
        .O(half_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[5]_INST_0 
       (.I0(cmp_i[6]),
        .I1(cmp_r[6]),
        .I2(async_i),
        .O(half_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[6]_INST_0 
       (.I0(cmp_i[7]),
        .I1(cmp_r[7]),
        .I2(async_i),
        .O(half_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[7]_INST_0 
       (.I0(cmp_i[8]),
        .I1(cmp_r[8]),
        .I2(async_i),
        .O(half_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[8]_INST_0 
       (.I0(cmp_i[9]),
        .I1(cmp_r[9]),
        .I2(async_i),
        .O(half_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \half_o[9]_INST_0 
       (.I0(cmp_i[10]),
        .I1(cmp_r[10]),
        .I2(async_i),
        .O(half_o[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_o0_carry
       (.CI(1'b0),
        .CO({pwm_o0_carry_n_0,pwm_o0_carry_n_1,pwm_o0_carry_n_2,pwm_o0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_o0_carry_i_1_n_0,pwm_o0_carry_i_2_n_0,pwm_o0_carry_i_3_n_0,pwm_o0_carry_i_4_n_0}),
        .O(NLW_pwm_o0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_o0_carry_i_5_n_0,pwm_o0_carry_i_6_n_0,pwm_o0_carry_i_7_n_0,pwm_o0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 pwm_o0_carry__0
       (.CI(pwm_o0_carry_n_0),
        .CO({pwm_o,pwm_o0_carry__0_n_1,pwm_o0_carry__0_n_2,pwm_o0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_o0_carry__0_i_1_n_0,pwm_o0_carry__0_i_2_n_0,pwm_o0_carry__0_i_3_n_0,pwm_o0_carry__0_i_4_n_0}),
        .O(NLW_pwm_o0_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_o0_carry__0_i_5_n_0,pwm_o0_carry__0_i_6_n_0,pwm_o0_carry__0_i_7_n_0,pwm_o0_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry__0_i_1
       (.I0(async_i),
        .I1(cmp_r[14]),
        .I2(cmp_i[14]),
        .I3(counter_i[14]),
        .I4(counter_i[15]),
        .I5(half_o[14]),
        .O(pwm_o0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry__0_i_2
       (.I0(async_i),
        .I1(cmp_r[12]),
        .I2(cmp_i[12]),
        .I3(counter_i[12]),
        .I4(counter_i[13]),
        .I5(half_o[12]),
        .O(pwm_o0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry__0_i_3
       (.I0(async_i),
        .I1(cmp_r[10]),
        .I2(cmp_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[11]),
        .I5(half_o[10]),
        .O(pwm_o0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry__0_i_4
       (.I0(async_i),
        .I1(cmp_r[8]),
        .I2(cmp_i[8]),
        .I3(counter_i[8]),
        .I4(counter_i[9]),
        .I5(half_o[8]),
        .O(pwm_o0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry__0_i_5
       (.I0(cmp_i[14]),
        .I1(cmp_r[14]),
        .I2(async_i),
        .I3(counter_i[14]),
        .I4(half_o[14]),
        .I5(counter_i[15]),
        .O(pwm_o0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry__0_i_6
       (.I0(cmp_i[12]),
        .I1(cmp_r[12]),
        .I2(async_i),
        .I3(counter_i[12]),
        .I4(half_o[12]),
        .I5(counter_i[13]),
        .O(pwm_o0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry__0_i_7
       (.I0(cmp_i[10]),
        .I1(cmp_r[10]),
        .I2(async_i),
        .I3(counter_i[10]),
        .I4(half_o[10]),
        .I5(counter_i[11]),
        .O(pwm_o0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry__0_i_8
       (.I0(cmp_i[8]),
        .I1(cmp_r[8]),
        .I2(async_i),
        .I3(counter_i[8]),
        .I4(half_o[8]),
        .I5(counter_i[9]),
        .O(pwm_o0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry_i_1
       (.I0(async_i),
        .I1(cmp_r[6]),
        .I2(cmp_i[6]),
        .I3(counter_i[6]),
        .I4(counter_i[7]),
        .I5(half_o[6]),
        .O(pwm_o0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry_i_2
       (.I0(async_i),
        .I1(cmp_r[4]),
        .I2(cmp_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[5]),
        .I5(half_o[4]),
        .O(pwm_o0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry_i_3
       (.I0(async_i),
        .I1(cmp_r[2]),
        .I2(cmp_i[2]),
        .I3(counter_i[2]),
        .I4(counter_i[3]),
        .I5(half_o[2]),
        .O(pwm_o0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h00E4FFFF000000E4)) 
    pwm_o0_carry_i_4
       (.I0(async_i),
        .I1(cmp_r[0]),
        .I2(cmp_i[0]),
        .I3(counter_i[0]),
        .I4(counter_i[1]),
        .I5(half_o[0]),
        .O(pwm_o0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry_i_5
       (.I0(cmp_i[6]),
        .I1(cmp_r[6]),
        .I2(async_i),
        .I3(counter_i[6]),
        .I4(half_o[6]),
        .I5(counter_i[7]),
        .O(pwm_o0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry_i_6
       (.I0(cmp_i[4]),
        .I1(cmp_r[4]),
        .I2(async_i),
        .I3(counter_i[4]),
        .I4(half_o[4]),
        .I5(counter_i[5]),
        .O(pwm_o0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry_i_7
       (.I0(cmp_i[2]),
        .I1(cmp_r[2]),
        .I2(async_i),
        .I3(counter_i[2]),
        .I4(half_o[2]),
        .I5(counter_i[3]),
        .O(pwm_o0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAC5300000000AC53)) 
    pwm_o0_carry_i_8
       (.I0(cmp_i[0]),
        .I1(cmp_r[0]),
        .I2(async_i),
        .I3(counter_i[0]),
        .I4(half_o[0]),
        .I5(counter_i[1]),
        .O(pwm_o0_carry_i_8_n_0));
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
