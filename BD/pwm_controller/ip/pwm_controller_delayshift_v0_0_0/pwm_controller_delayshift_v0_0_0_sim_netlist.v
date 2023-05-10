// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Mar 30 10:47:41 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_delayshift_v0_0_0 -prefix
//               pwm_controller_delayshift_v0_0_0_ pwm_controller_delayshift_v0_0_0_sim_netlist.v
// Design      : pwm_controller_delayshift_v0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pwm_controller_delayshift_v0_0_0_delayshift_v0
   (rel_out,
    data_in);
  output [5:0]rel_out;
  input [6:0]data_in;

  wire [6:0]data_in;
  wire [5:0]rel_out;
  wire \rel_out[8]_INST_0_i_1_n_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \rel_out[1]_INST_0 
       (.I0(data_in[0]),
        .O(rel_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \rel_out[3]_INST_0 
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(data_in[2]),
        .O(rel_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1115EEEA)) 
    \rel_out[5]_INST_0 
       (.I0(data_in[3]),
        .I1(data_in[2]),
        .I2(data_in[1]),
        .I3(data_in[0]),
        .I4(data_in[4]),
        .O(rel_out[2]));
  LUT6 #(
    .INIT(64'h001FFFFFFFE00000)) 
    \rel_out[6]_INST_0 
       (.I0(data_in[0]),
        .I1(data_in[1]),
        .I2(data_in[2]),
        .I3(data_in[3]),
        .I4(data_in[4]),
        .I5(data_in[5]),
        .O(rel_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rel_out[7]_INST_0 
       (.I0(\rel_out[8]_INST_0_i_1_n_0 ),
        .I1(data_in[6]),
        .O(rel_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rel_out[8]_INST_0 
       (.I0(\rel_out[8]_INST_0_i_1_n_0 ),
        .I1(data_in[6]),
        .O(rel_out[5]));
  LUT6 #(
    .INIT(64'hAAAAA80000000000)) 
    \rel_out[8]_INST_0_i_1 
       (.I0(data_in[5]),
        .I1(data_in[0]),
        .I2(data_in[1]),
        .I3(data_in[2]),
        .I4(data_in[3]),
        .I5(data_in[4]),
        .O(\rel_out[8]_INST_0_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "pwm_controller_delayshift_v0_0_0,delayshift_v0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "delayshift_v0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_delayshift_v0_0_0
   (data_in,
    dly_out,
    rel_out,
    shift_out);
  input [31:0]data_in;
  output [7:0]dly_out;
  output [8:0]rel_out;
  output [3:0]shift_out;

  wire [31:0]data_in;
  wire [8:1]\^rel_out ;

  assign dly_out[7:0] = data_in[7:0];
  assign rel_out[8:1] = \^rel_out [8:1];
  assign rel_out[0] = data_in[0];
  assign shift_out[3:0] = data_in[11:8];
  pwm_controller_delayshift_v0_0_0_delayshift_v0 U0
       (.data_in(data_in[7:1]),
        .rel_out({\^rel_out [8:5],\^rel_out [3],\^rel_out [1]}));
  LUT2 #(
    .INIT(4'h9)) 
    \rel_out[2]_INST_0 
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .O(\^rel_out [2]));
  LUT4 #(
    .INIT(16'hE01F)) 
    \rel_out[4]_INST_0 
       (.I0(data_in[1]),
        .I1(data_in[2]),
        .I2(data_in[3]),
        .I3(data_in[4]),
        .O(\^rel_out [4]));
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
