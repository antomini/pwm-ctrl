// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Apr 11 10:13:33 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_AXIS_Snooper_0_0/pwm_controller_AXIS_Snooper_0_0_sim_netlist.v
// Design      : pwm_controller_AXIS_Snooper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_AXIS_Snooper_0_0,AXIS_Snooper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "AXIS_Snooper,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_AXIS_Snooper_0_0
   (adc_out,
    id_out,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tid);
  output [15:0]adc_out;
  output [4:0]id_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 1e+08, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 5, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1e+08, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [4:0]s_axis_tid;

  wire [15:0]adc_out;
  wire [4:0]id_out;
  wire s_axis_aclk;
  wire [15:0]s_axis_tdata;
  wire [4:0]s_axis_tid;
  wire s_axis_tvalid;

  assign s_axis_tready = s_axis_tvalid;
  pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper U0
       (.adc_out(adc_out),
        .id_out(id_out),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "AXIS_Snooper" *) 
module pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper
   (adc_out,
    id_out,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tdata,
    s_axis_aclk);
  output [15:0]adc_out;
  output [4:0]id_out;
  input s_axis_tvalid;
  input [4:0]s_axis_tid;
  input [15:0]s_axis_tdata;
  input s_axis_aclk;

  wire [15:0]adc_out;
  wire data_reg0_n_0;
  wire [4:0]id_out;
  wire s_axis_aclk;
  wire [15:0]s_axis_tdata;
  wire [4:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT6 #(
    .INIT(64'h0000000008000000)) 
    data_reg0
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[3]),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[4]),
        .I5(s_axis_tid[2]),
        .O(data_reg0_n_0));
  FDRE \data_reg_reg[0] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[0]),
        .Q(adc_out[0]),
        .R(1'b0));
  FDRE \data_reg_reg[10] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[10]),
        .Q(adc_out[10]),
        .R(1'b0));
  FDRE \data_reg_reg[11] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[11]),
        .Q(adc_out[11]),
        .R(1'b0));
  FDRE \data_reg_reg[12] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[12]),
        .Q(adc_out[12]),
        .R(1'b0));
  FDRE \data_reg_reg[13] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[13]),
        .Q(adc_out[13]),
        .R(1'b0));
  FDRE \data_reg_reg[14] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[14]),
        .Q(adc_out[14]),
        .R(1'b0));
  FDRE \data_reg_reg[15] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[15]),
        .Q(adc_out[15]),
        .R(1'b0));
  FDRE \data_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[1]),
        .Q(adc_out[1]),
        .R(1'b0));
  FDRE \data_reg_reg[2] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[2]),
        .Q(adc_out[2]),
        .R(1'b0));
  FDRE \data_reg_reg[3] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[3]),
        .Q(adc_out[3]),
        .R(1'b0));
  FDRE \data_reg_reg[4] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[4]),
        .Q(adc_out[4]),
        .R(1'b0));
  FDRE \data_reg_reg[5] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[5]),
        .Q(adc_out[5]),
        .R(1'b0));
  FDRE \data_reg_reg[6] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[6]),
        .Q(adc_out[6]),
        .R(1'b0));
  FDRE \data_reg_reg[7] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[7]),
        .Q(adc_out[7]),
        .R(1'b0));
  FDRE \data_reg_reg[8] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[8]),
        .Q(adc_out[8]),
        .R(1'b0));
  FDRE \data_reg_reg[9] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tdata[9]),
        .Q(adc_out[9]),
        .R(1'b0));
  FDRE \id_reg_reg[0] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tid[0]),
        .Q(id_out[0]),
        .R(1'b0));
  FDRE \id_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tid[1]),
        .Q(id_out[1]),
        .R(1'b0));
  FDRE \id_reg_reg[2] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tid[2]),
        .Q(id_out[2]),
        .R(1'b0));
  FDRE \id_reg_reg[3] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tid[3]),
        .Q(id_out[3]),
        .R(1'b0));
  FDRE \id_reg_reg[4] 
       (.C(s_axis_aclk),
        .CE(data_reg0_n_0),
        .D(s_axis_tid[4]),
        .Q(id_out[4]),
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
