// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Mar 21 20:46:47 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_DSP_Integrator_0_0 -prefix
//               pwm_controller_DSP_Integrator_0_0_ pwm_controller_DSP_Integrator_0_0_sim_netlist.v
// Design      : pwm_controller_DSP_Integrator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pwm_controller_DSP_Integrator_0_0_DSP_Integrator
   (y_out,
    start_in,
    adc_in,
    clk_in,
    ref_in,
    ki_in,
    loop_in);
  output [33:0]y_out;
  input start_in;
  input [16:0]adc_in;
  input clk_in;
  input [16:0]ref_in;
  input [16:0]ki_in;
  input [33:0]loop_in;

  wire [16:0]A;
  wire [16:0]a;
  wire [16:0]adc_in;
  wire clk_in;
  wire [16:0]d;
  wire [16:0]ki_in;
  wire [33:0]loop_in;
  wire [16:0]ref_in;
  wire start_in;
  wire sub0_carry__0_i_1_n_0;
  wire sub0_carry__0_i_2_n_0;
  wire sub0_carry__0_i_3_n_0;
  wire sub0_carry__0_i_4_n_0;
  wire sub0_carry__0_n_0;
  wire sub0_carry__0_n_1;
  wire sub0_carry__0_n_2;
  wire sub0_carry__0_n_3;
  wire sub0_carry__1_i_1_n_0;
  wire sub0_carry__1_i_2_n_0;
  wire sub0_carry__1_i_3_n_0;
  wire sub0_carry__1_i_4_n_0;
  wire sub0_carry__1_n_0;
  wire sub0_carry__1_n_1;
  wire sub0_carry__1_n_2;
  wire sub0_carry__1_n_3;
  wire sub0_carry__2_i_1_n_0;
  wire sub0_carry__2_i_2_n_0;
  wire sub0_carry__2_i_3_n_0;
  wire sub0_carry__2_i_4_n_0;
  wire sub0_carry__2_n_0;
  wire sub0_carry__2_n_1;
  wire sub0_carry__2_n_2;
  wire sub0_carry__2_n_3;
  wire sub0_carry__3_i_1_n_0;
  wire sub0_carry_i_1_n_0;
  wire sub0_carry_i_2_n_0;
  wire sub0_carry_i_3_n_0;
  wire sub0_carry_i_4_n_0;
  wire sub0_carry_n_0;
  wire sub0_carry_n_1;
  wire sub0_carry_n_2;
  wire sub0_carry_n_3;
  wire [33:0]y_out;
  wire NLW_p_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_reg_OVERFLOW_UNCONNECTED;
  wire NLW_p_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_reg_CARRYOUT_UNCONNECTED;
  wire [47:34]NLW_p_reg_P_UNCONNECTED;
  wire [47:0]NLW_p_reg_PCOUT_UNCONNECTED;
  wire [3:0]NLW_sub0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_sub0_carry__3_O_UNCONNECTED;

  FDRE \a_reg[0] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[0]),
        .Q(a[0]),
        .R(1'b0));
  FDRE \a_reg[10] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[10]),
        .Q(a[10]),
        .R(1'b0));
  FDRE \a_reg[11] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[11]),
        .Q(a[11]),
        .R(1'b0));
  FDRE \a_reg[12] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[12]),
        .Q(a[12]),
        .R(1'b0));
  FDRE \a_reg[13] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[13]),
        .Q(a[13]),
        .R(1'b0));
  FDRE \a_reg[14] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[14]),
        .Q(a[14]),
        .R(1'b0));
  FDRE \a_reg[15] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[15]),
        .Q(a[15]),
        .R(1'b0));
  FDRE \a_reg[16] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[16]),
        .Q(a[16]),
        .R(1'b0));
  FDRE \a_reg[1] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[1]),
        .Q(a[1]),
        .R(1'b0));
  FDRE \a_reg[2] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[2]),
        .Q(a[2]),
        .R(1'b0));
  FDRE \a_reg[3] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[3]),
        .Q(a[3]),
        .R(1'b0));
  FDRE \a_reg[4] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[4]),
        .Q(a[4]),
        .R(1'b0));
  FDRE \a_reg[5] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[5]),
        .Q(a[5]),
        .R(1'b0));
  FDRE \a_reg[6] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[6]),
        .Q(a[6]),
        .R(1'b0));
  FDRE \a_reg[7] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[7]),
        .Q(a[7]),
        .R(1'b0));
  FDRE \a_reg[8] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[8]),
        .Q(a[8]),
        .R(1'b0));
  FDRE \a_reg[9] 
       (.C(clk_in),
        .CE(start_in),
        .D(ref_in[9]),
        .Q(a[9]),
        .R(1'b0));
  FDRE \d_reg[0] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[0]),
        .Q(d[0]),
        .R(1'b0));
  FDRE \d_reg[10] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[10]),
        .Q(d[10]),
        .R(1'b0));
  FDRE \d_reg[11] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[11]),
        .Q(d[11]),
        .R(1'b0));
  FDRE \d_reg[12] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[12]),
        .Q(d[12]),
        .R(1'b0));
  FDRE \d_reg[13] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[13]),
        .Q(d[13]),
        .R(1'b0));
  FDRE \d_reg[14] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[14]),
        .Q(d[14]),
        .R(1'b0));
  FDRE \d_reg[15] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[15]),
        .Q(d[15]),
        .R(1'b0));
  FDRE \d_reg[16] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[16]),
        .Q(d[16]),
        .R(1'b0));
  FDRE \d_reg[1] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[1]),
        .Q(d[1]),
        .R(1'b0));
  FDRE \d_reg[2] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[2]),
        .Q(d[2]),
        .R(1'b0));
  FDRE \d_reg[3] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[3]),
        .Q(d[3]),
        .R(1'b0));
  FDRE \d_reg[4] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[4]),
        .Q(d[4]),
        .R(1'b0));
  FDRE \d_reg[5] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[5]),
        .Q(d[5]),
        .R(1'b0));
  FDRE \d_reg[6] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[6]),
        .Q(d[6]),
        .R(1'b0));
  FDRE \d_reg[7] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[7]),
        .Q(d[7]),
        .R(1'b0));
  FDRE \d_reg[8] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[8]),
        .Q(d[8]),
        .R(1'b0));
  FDRE \d_reg[9] 
       (.C(clk_in),
        .CE(start_in),
        .D(adc_in[9]),
        .Q(d[9]),
        .R(1'b0));
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
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_reg
       (.A({A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A[16],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({ki_in[16],ki_in}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_reg_BCOUT_UNCONNECTED[17:0]),
        .C({loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in[33],loop_in}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(start_in),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(start_in),
        .CEC(start_in),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(start_in),
        .CEP(start_in),
        .CLK(clk_in),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_p_reg_P_UNCONNECTED[47:34],y_out}),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub0_carry
       (.CI(1'b0),
        .CO({sub0_carry_n_0,sub0_carry_n_1,sub0_carry_n_2,sub0_carry_n_3}),
        .CYINIT(1'b1),
        .DI(a[3:0]),
        .O(A[3:0]),
        .S({sub0_carry_i_1_n_0,sub0_carry_i_2_n_0,sub0_carry_i_3_n_0,sub0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub0_carry__0
       (.CI(sub0_carry_n_0),
        .CO({sub0_carry__0_n_0,sub0_carry__0_n_1,sub0_carry__0_n_2,sub0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(a[7:4]),
        .O(A[7:4]),
        .S({sub0_carry__0_i_1_n_0,sub0_carry__0_i_2_n_0,sub0_carry__0_i_3_n_0,sub0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__0_i_1
       (.I0(a[7]),
        .I1(d[7]),
        .O(sub0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__0_i_2
       (.I0(a[6]),
        .I1(d[6]),
        .O(sub0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__0_i_3
       (.I0(a[5]),
        .I1(d[5]),
        .O(sub0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__0_i_4
       (.I0(a[4]),
        .I1(d[4]),
        .O(sub0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub0_carry__1
       (.CI(sub0_carry__0_n_0),
        .CO({sub0_carry__1_n_0,sub0_carry__1_n_1,sub0_carry__1_n_2,sub0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(a[11:8]),
        .O(A[11:8]),
        .S({sub0_carry__1_i_1_n_0,sub0_carry__1_i_2_n_0,sub0_carry__1_i_3_n_0,sub0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__1_i_1
       (.I0(a[11]),
        .I1(d[11]),
        .O(sub0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__1_i_2
       (.I0(a[10]),
        .I1(d[10]),
        .O(sub0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__1_i_3
       (.I0(a[9]),
        .I1(d[9]),
        .O(sub0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__1_i_4
       (.I0(a[8]),
        .I1(d[8]),
        .O(sub0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub0_carry__2
       (.CI(sub0_carry__1_n_0),
        .CO({sub0_carry__2_n_0,sub0_carry__2_n_1,sub0_carry__2_n_2,sub0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(a[15:12]),
        .O(A[15:12]),
        .S({sub0_carry__2_i_1_n_0,sub0_carry__2_i_2_n_0,sub0_carry__2_i_3_n_0,sub0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__2_i_1
       (.I0(a[15]),
        .I1(d[15]),
        .O(sub0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__2_i_2
       (.I0(a[14]),
        .I1(d[14]),
        .O(sub0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__2_i_3
       (.I0(a[13]),
        .I1(d[13]),
        .O(sub0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__2_i_4
       (.I0(a[12]),
        .I1(d[12]),
        .O(sub0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sub0_carry__3
       (.CI(sub0_carry__2_n_0),
        .CO(NLW_sub0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sub0_carry__3_O_UNCONNECTED[3:1],A[16]}),
        .S({1'b0,1'b0,1'b0,sub0_carry__3_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry__3_i_1
       (.I0(a[16]),
        .I1(d[16]),
        .O(sub0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry_i_1
       (.I0(a[3]),
        .I1(d[3]),
        .O(sub0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry_i_2
       (.I0(a[2]),
        .I1(d[2]),
        .O(sub0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry_i_3
       (.I0(a[1]),
        .I1(d[1]),
        .O(sub0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sub0_carry_i_4
       (.I0(a[0]),
        .I1(d[0]),
        .O(sub0_carry_i_4_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "pwm_controller_DSP_Integrator_0_0,DSP_Integrator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "DSP_Integrator,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_DSP_Integrator_0_0
   (ki_in,
    ref_in,
    adc_in,
    loop_in,
    y_out,
    start_in,
    clk_in);
  input [16:0]ki_in;
  input [16:0]ref_in;
  input [16:0]adc_in;
  input [33:0]loop_in;
  output [33:0]y_out;
  input start_in;
  input clk_in;

  wire [16:0]adc_in;
  wire clk_in;
  wire [16:0]ki_in;
  wire [33:0]loop_in;
  wire [16:0]ref_in;
  wire start_in;
  wire [33:0]y_out;

  pwm_controller_DSP_Integrator_0_0_DSP_Integrator U0
       (.adc_in(adc_in),
        .clk_in(clk_in),
        .ki_in(ki_in),
        .loop_in(loop_in),
        .ref_in(ref_in),
        .start_in(start_in),
        .y_out(y_out));
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
