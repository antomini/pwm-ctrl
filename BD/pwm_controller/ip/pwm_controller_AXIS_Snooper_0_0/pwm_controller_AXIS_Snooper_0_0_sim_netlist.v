// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 18:54:13 2023
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
   (adcA_o,
    adcB_o,
    idA_o,
    idB_o,
    en_out_i,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tid);
  output [15:0]adcA_o;
  output [15:0]adcB_o;
  output [4:0]idA_o;
  output [4:0]idB_o;
  input en_out_i;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axis_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aclk, ASSOCIATED_BUSIF s_axis, ASSOCIATED_RESET s_axis_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axis_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axis_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axis_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 5, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN pwm_controller_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [15:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TID" *) input [4:0]s_axis_tid;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]adcA_o;
  wire [15:0]adcB_o;
  wire en_out_i;
  wire s_axis_aclk;
  wire [15:0]s_axis_tdata;
  wire [4:0]s_axis_tid;
  wire s_axis_tvalid;

  assign idA_o[4] = \<const1> ;
  assign idA_o[3] = \<const0> ;
  assign idA_o[2] = \<const1> ;
  assign idA_o[1] = \<const0> ;
  assign idA_o[0] = \<const1> ;
  assign idB_o[4] = \<const1> ;
  assign idB_o[3] = \<const1> ;
  assign idB_o[2] = \<const1> ;
  assign idB_o[1] = \<const0> ;
  assign idB_o[0] = \<const1> ;
  assign s_axis_tready = s_axis_tvalid;
  GND GND
       (.G(\<const0> ));
  pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper U0
       (.adcA_o(adcA_o),
        .adcB_o(adcB_o),
        .en_out_i(en_out_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "AXIS_Snooper" *) 
module pwm_controller_AXIS_Snooper_0_0_AXIS_Snooper
   (adcA_o,
    adcB_o,
    en_out_i,
    s_axis_tdata,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tid);
  output [15:0]adcA_o;
  output [15:0]adcB_o;
  input en_out_i;
  input [15:0]s_axis_tdata;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [4:0]s_axis_tid;

  wire [15:0]adcA_o;
  wire [15:0]adcB_o;
  wire [15:0]dataA_r;
  wire dataA_r0__0;
  wire [15:0]dataB_r;
  wire dataB_r0__0;
  wire en_out_i;
  wire s_axis_aclk;
  wire [15:0]s_axis_tdata;
  wire [4:0]s_axis_tid;
  wire s_axis_tvalid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[0]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[0]),
        .O(adcA_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[10]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[10]),
        .O(adcA_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[11]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[11]),
        .O(adcA_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[12]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[12]),
        .O(adcA_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[13]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[13]),
        .O(adcA_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[14]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[14]),
        .O(adcA_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[15]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[15]),
        .O(adcA_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[1]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[1]),
        .O(adcA_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[2]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[2]),
        .O(adcA_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[3]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[3]),
        .O(adcA_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[4]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[4]),
        .O(adcA_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[5]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[5]),
        .O(adcA_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[6]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[6]),
        .O(adcA_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[7]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[7]),
        .O(adcA_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[8]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[8]),
        .O(adcA_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcA_o[9]_INST_0 
       (.I0(en_out_i),
        .I1(dataA_r[9]),
        .O(adcA_o[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[0]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[0]),
        .O(adcB_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[10]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[10]),
        .O(adcB_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[11]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[11]),
        .O(adcB_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[12]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[12]),
        .O(adcB_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[13]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[13]),
        .O(adcB_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[14]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[14]),
        .O(adcB_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[15]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[15]),
        .O(adcB_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[1]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[1]),
        .O(adcB_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[2]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[2]),
        .O(adcB_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[3]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[3]),
        .O(adcB_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[4]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[4]),
        .O(adcB_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[5]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[5]),
        .O(adcB_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[6]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[6]),
        .O(adcB_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[7]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[7]),
        .O(adcB_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[8]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[8]),
        .O(adcB_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \adcB_o[9]_INST_0 
       (.I0(en_out_i),
        .I1(dataB_r[9]),
        .O(adcB_o[9]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    dataA_r0
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[4]),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[2]),
        .I5(s_axis_tid[3]),
        .O(dataA_r0__0));
  FDRE \dataA_r_reg[0] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[0]),
        .Q(dataA_r[0]),
        .R(1'b0));
  FDRE \dataA_r_reg[10] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[10]),
        .Q(dataA_r[10]),
        .R(1'b0));
  FDRE \dataA_r_reg[11] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[11]),
        .Q(dataA_r[11]),
        .R(1'b0));
  FDRE \dataA_r_reg[12] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[12]),
        .Q(dataA_r[12]),
        .R(1'b0));
  FDRE \dataA_r_reg[13] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[13]),
        .Q(dataA_r[13]),
        .R(1'b0));
  FDRE \dataA_r_reg[14] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[14]),
        .Q(dataA_r[14]),
        .R(1'b0));
  FDRE \dataA_r_reg[15] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[15]),
        .Q(dataA_r[15]),
        .R(1'b0));
  FDRE \dataA_r_reg[1] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[1]),
        .Q(dataA_r[1]),
        .R(1'b0));
  FDRE \dataA_r_reg[2] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[2]),
        .Q(dataA_r[2]),
        .R(1'b0));
  FDRE \dataA_r_reg[3] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[3]),
        .Q(dataA_r[3]),
        .R(1'b0));
  FDRE \dataA_r_reg[4] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[4]),
        .Q(dataA_r[4]),
        .R(1'b0));
  FDRE \dataA_r_reg[5] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[5]),
        .Q(dataA_r[5]),
        .R(1'b0));
  FDRE \dataA_r_reg[6] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[6]),
        .Q(dataA_r[6]),
        .R(1'b0));
  FDRE \dataA_r_reg[7] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[7]),
        .Q(dataA_r[7]),
        .R(1'b0));
  FDRE \dataA_r_reg[8] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[8]),
        .Q(dataA_r[8]),
        .R(1'b0));
  FDRE \dataA_r_reg[9] 
       (.C(s_axis_aclk),
        .CE(dataA_r0__0),
        .D(s_axis_tdata[9]),
        .Q(dataA_r[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    dataB_r0
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[3]),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[4]),
        .I5(s_axis_tid[1]),
        .O(dataB_r0__0));
  FDRE \dataB_r_reg[0] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[0]),
        .Q(dataB_r[0]),
        .R(1'b0));
  FDRE \dataB_r_reg[10] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[10]),
        .Q(dataB_r[10]),
        .R(1'b0));
  FDRE \dataB_r_reg[11] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[11]),
        .Q(dataB_r[11]),
        .R(1'b0));
  FDRE \dataB_r_reg[12] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[12]),
        .Q(dataB_r[12]),
        .R(1'b0));
  FDRE \dataB_r_reg[13] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[13]),
        .Q(dataB_r[13]),
        .R(1'b0));
  FDRE \dataB_r_reg[14] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[14]),
        .Q(dataB_r[14]),
        .R(1'b0));
  FDRE \dataB_r_reg[15] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[15]),
        .Q(dataB_r[15]),
        .R(1'b0));
  FDRE \dataB_r_reg[1] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[1]),
        .Q(dataB_r[1]),
        .R(1'b0));
  FDRE \dataB_r_reg[2] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[2]),
        .Q(dataB_r[2]),
        .R(1'b0));
  FDRE \dataB_r_reg[3] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[3]),
        .Q(dataB_r[3]),
        .R(1'b0));
  FDRE \dataB_r_reg[4] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[4]),
        .Q(dataB_r[4]),
        .R(1'b0));
  FDRE \dataB_r_reg[5] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[5]),
        .Q(dataB_r[5]),
        .R(1'b0));
  FDRE \dataB_r_reg[6] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[6]),
        .Q(dataB_r[6]),
        .R(1'b0));
  FDRE \dataB_r_reg[7] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[7]),
        .Q(dataB_r[7]),
        .R(1'b0));
  FDRE \dataB_r_reg[8] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[8]),
        .Q(dataB_r[8]),
        .R(1'b0));
  FDRE \dataB_r_reg[9] 
       (.C(s_axis_aclk),
        .CE(dataB_r0__0),
        .D(s_axis_tdata[9]),
        .Q(dataB_r[9]),
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
