// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 09:21:24 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_update_0_0/pwm_controller_trigger_update_0_0_sim_netlist.v
// Design      : pwm_controller_trigger_update_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_trigger_update_0_0,trigger_update,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "trigger_update,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_trigger_update_0_0
   (update_o,
    max_i,
    counter_i,
    peak_i,
    valley_i,
    sawtri_i);
  output update_o;
  input [15:0]max_i;
  input [15:0]counter_i;
  input peak_i;
  input valley_i;
  input sawtri_i;

  wire [15:0]counter_i;
  wire [15:0]max_i;
  wire peak_i;
  wire sawtri_i;
  wire update_o;
  wire update_o_INST_0_i_1_n_0;
  wire update_o_INST_0_i_2_n_0;
  wire update_o_INST_0_i_3_n_0;
  wire valley_i;

  pwm_controller_trigger_update_0_0_trigger_update U0
       (.counter_i(counter_i),
        .max_i(max_i),
        .peak_i(peak_i),
        .sawtri_i(sawtri_i),
        .update_o(update_o),
        .update_o_0(update_o_INST_0_i_1_n_0),
        .update_o_1(update_o_INST_0_i_2_n_0),
        .update_o_2(update_o_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    update_o_INST_0_i_1
       (.I0(counter_i[6]),
        .I1(counter_i[7]),
        .I2(counter_i[4]),
        .I3(counter_i[5]),
        .I4(counter_i[9]),
        .I5(counter_i[8]),
        .O(update_o_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    update_o_INST_0_i_2
       (.I0(counter_i[12]),
        .I1(counter_i[13]),
        .I2(counter_i[10]),
        .I3(counter_i[11]),
        .I4(counter_i[15]),
        .I5(counter_i[14]),
        .O(update_o_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    update_o_INST_0_i_3
       (.I0(counter_i[1]),
        .I1(counter_i[2]),
        .I2(valley_i),
        .I3(counter_i[0]),
        .I4(counter_i[3]),
        .I5(sawtri_i),
        .O(update_o_INST_0_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "trigger_update" *) 
module pwm_controller_trigger_update_0_0_trigger_update
   (update_o,
    update_o_0,
    update_o_1,
    update_o_2,
    sawtri_i,
    peak_i,
    max_i,
    counter_i);
  output update_o;
  input update_o_0;
  input update_o_1;
  input update_o_2;
  input sawtri_i;
  input peak_i;
  input [15:0]max_i;
  input [15:0]counter_i;

  wire [15:0]counter_i;
  wire [15:0]max_i;
  wire peak_i;
  wire sawtri_i;
  wire sawtrig_s;
  wire update_o;
  wire update_o0_carry__0_i_1_n_0;
  wire update_o0_carry__0_i_2_n_0;
  wire update_o0_carry__0_n_3;
  wire update_o0_carry_i_1_n_0;
  wire update_o0_carry_i_2_n_0;
  wire update_o0_carry_i_3_n_0;
  wire update_o0_carry_i_4_n_0;
  wire update_o0_carry_n_0;
  wire update_o0_carry_n_1;
  wire update_o0_carry_n_2;
  wire update_o0_carry_n_3;
  wire update_o_0;
  wire update_o_1;
  wire update_o_2;
  wire [3:0]NLW_update_o0_carry_O_UNCONNECTED;
  wire [3:2]NLW_update_o0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_update_o0_carry__0_O_UNCONNECTED;

  CARRY4 update_o0_carry
       (.CI(1'b0),
        .CO({update_o0_carry_n_0,update_o0_carry_n_1,update_o0_carry_n_2,update_o0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_update_o0_carry_O_UNCONNECTED[3:0]),
        .S({update_o0_carry_i_1_n_0,update_o0_carry_i_2_n_0,update_o0_carry_i_3_n_0,update_o0_carry_i_4_n_0}));
  CARRY4 update_o0_carry__0
       (.CI(update_o0_carry_n_0),
        .CO({NLW_update_o0_carry__0_CO_UNCONNECTED[3:2],sawtrig_s,update_o0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_update_o0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,update_o0_carry__0_i_1_n_0,update_o0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    update_o0_carry__0_i_1
       (.I0(max_i[15]),
        .I1(counter_i[15]),
        .O(update_o0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    update_o0_carry__0_i_2
       (.I0(max_i[14]),
        .I1(counter_i[14]),
        .I2(max_i[13]),
        .I3(counter_i[13]),
        .I4(counter_i[12]),
        .I5(max_i[12]),
        .O(update_o0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    update_o0_carry_i_1
       (.I0(max_i[11]),
        .I1(counter_i[11]),
        .I2(max_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[9]),
        .I5(max_i[9]),
        .O(update_o0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    update_o0_carry_i_2
       (.I0(max_i[8]),
        .I1(counter_i[8]),
        .I2(max_i[7]),
        .I3(counter_i[7]),
        .I4(counter_i[6]),
        .I5(max_i[6]),
        .O(update_o0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    update_o0_carry_i_3
       (.I0(max_i[5]),
        .I1(counter_i[5]),
        .I2(max_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[3]),
        .I5(max_i[3]),
        .O(update_o0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    update_o0_carry_i_4
       (.I0(max_i[2]),
        .I1(counter_i[2]),
        .I2(max_i[1]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(max_i[0]),
        .O(update_o0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF808080FF8080)) 
    update_o_INST_0
       (.I0(update_o_0),
        .I1(update_o_1),
        .I2(update_o_2),
        .I3(sawtri_i),
        .I4(sawtrig_s),
        .I5(peak_i),
        .O(update_o));
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
