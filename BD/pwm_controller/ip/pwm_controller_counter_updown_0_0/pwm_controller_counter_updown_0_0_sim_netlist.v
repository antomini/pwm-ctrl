// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Wed Jun 21 09:21:24 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_counter_updown_0_0/pwm_controller_counter_updown_0_0_sim_netlist.v
// Design      : pwm_controller_counter_updown_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_counter_updown_0_0,counter_updown,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "counter_updown,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_counter_updown_0_0
   (counter_o,
    updown_o,
    over_o,
    under_o,
    max_i,
    sawtri_i,
    resetn_i,
    clk_i);
  output [15:0]counter_o;
  output updown_o;
  output over_o;
  output under_o;
  input [15:0]max_i;
  input sawtri_i;
  input resetn_i;
  input clk_i;

  wire clk_i;
  wire [15:0]counter_o;
  wire [15:0]max_i;
  wire over_o;
  wire resetn_i;
  wire sawtri_i;
  wire under_o;
  wire updown_o;

  pwm_controller_counter_updown_0_0_counter_updown U0
       (.clk_i(clk_i),
        .counter_o(counter_o),
        .\counter_r_reg[0]_0 (under_o),
        .max_i(max_i),
        .range_s(over_o),
        .resetn_i(resetn_i),
        .sawtri_i(sawtri_i),
        .updown_o(updown_o));
endmodule

(* ORIG_REF_NAME = "counter_updown" *) 
module pwm_controller_counter_updown_0_0_counter_updown
   (\counter_r_reg[0]_0 ,
    range_s,
    counter_o,
    updown_o,
    sawtri_i,
    clk_i,
    resetn_i,
    max_i);
  output \counter_r_reg[0]_0 ;
  output [0:0]range_s;
  output [15:0]counter_o;
  output updown_o;
  input sawtri_i;
  input clk_i;
  input resetn_i;
  input [15:0]max_i;

  wire clk_i;
  wire [15:0]counter_o;
  wire \counter_r[11]_i_2_n_0 ;
  wire \counter_r[11]_i_3_n_0 ;
  wire \counter_r[11]_i_4_n_0 ;
  wire \counter_r[11]_i_5_n_0 ;
  wire \counter_r[15]_i_1_n_0 ;
  wire \counter_r[15]_i_3_n_0 ;
  wire \counter_r[15]_i_4_n_0 ;
  wire \counter_r[15]_i_5_n_0 ;
  wire \counter_r[15]_i_6_n_0 ;
  wire \counter_r[3]_i_2_n_0 ;
  wire \counter_r[3]_i_3_n_0 ;
  wire \counter_r[3]_i_4_n_0 ;
  wire \counter_r[3]_i_5_n_0 ;
  wire \counter_r[3]_i_6_n_0 ;
  wire \counter_r[7]_i_2_n_0 ;
  wire \counter_r[7]_i_3_n_0 ;
  wire \counter_r[7]_i_4_n_0 ;
  wire \counter_r[7]_i_5_n_0 ;
  wire \counter_r_reg[0]_0 ;
  wire \counter_r_reg[11]_i_1_n_0 ;
  wire \counter_r_reg[11]_i_1_n_1 ;
  wire \counter_r_reg[11]_i_1_n_2 ;
  wire \counter_r_reg[11]_i_1_n_3 ;
  wire \counter_r_reg[11]_i_1_n_4 ;
  wire \counter_r_reg[11]_i_1_n_5 ;
  wire \counter_r_reg[11]_i_1_n_6 ;
  wire \counter_r_reg[11]_i_1_n_7 ;
  wire \counter_r_reg[15]_i_2_n_1 ;
  wire \counter_r_reg[15]_i_2_n_2 ;
  wire \counter_r_reg[15]_i_2_n_3 ;
  wire \counter_r_reg[15]_i_2_n_4 ;
  wire \counter_r_reg[15]_i_2_n_5 ;
  wire \counter_r_reg[15]_i_2_n_6 ;
  wire \counter_r_reg[15]_i_2_n_7 ;
  wire \counter_r_reg[3]_i_1_n_0 ;
  wire \counter_r_reg[3]_i_1_n_1 ;
  wire \counter_r_reg[3]_i_1_n_2 ;
  wire \counter_r_reg[3]_i_1_n_3 ;
  wire \counter_r_reg[3]_i_1_n_4 ;
  wire \counter_r_reg[3]_i_1_n_5 ;
  wire \counter_r_reg[3]_i_1_n_6 ;
  wire \counter_r_reg[3]_i_1_n_7 ;
  wire \counter_r_reg[7]_i_1_n_0 ;
  wire \counter_r_reg[7]_i_1_n_1 ;
  wire \counter_r_reg[7]_i_1_n_2 ;
  wire \counter_r_reg[7]_i_1_n_3 ;
  wire \counter_r_reg[7]_i_1_n_4 ;
  wire \counter_r_reg[7]_i_1_n_5 ;
  wire \counter_r_reg[7]_i_1_n_6 ;
  wire \counter_r_reg[7]_i_1_n_7 ;
  wire [15:0]max_i;
  wire [0:0]range_s;
  wire range_s0_carry__0_i_1_n_0;
  wire range_s0_carry__0_i_2_n_0;
  wire range_s0_carry__0_i_3_n_0;
  wire range_s0_carry__0_i_4_n_0;
  wire range_s0_carry__0_i_5_n_0;
  wire range_s0_carry__0_i_6_n_0;
  wire range_s0_carry__0_i_7_n_0;
  wire range_s0_carry__0_i_8_n_0;
  wire range_s0_carry__0_n_1;
  wire range_s0_carry__0_n_2;
  wire range_s0_carry__0_n_3;
  wire range_s0_carry_i_1_n_0;
  wire range_s0_carry_i_2_n_0;
  wire range_s0_carry_i_3_n_0;
  wire range_s0_carry_i_4_n_0;
  wire range_s0_carry_i_5_n_0;
  wire range_s0_carry_i_6_n_0;
  wire range_s0_carry_i_7_n_0;
  wire range_s0_carry_i_8_n_0;
  wire range_s0_carry_n_0;
  wire range_s0_carry_n_1;
  wire range_s0_carry_n_2;
  wire range_s0_carry_n_3;
  wire resetn_i;
  wire sawtri_i;
  wire under_o_INST_0_i_1_n_0;
  wire under_o_INST_0_i_2_n_0;
  wire under_o_INST_0_i_3_n_0;
  wire under_o_INST_0_i_4_n_0;
  wire updown_o;
  wire updown_r;
  wire [3:3]\NLW_counter_r_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]NLW_range_s0_carry_O_UNCONNECTED;
  wire [3:0]NLW_range_s0_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[11]_i_2 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[11]),
        .O(\counter_r[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[11]_i_3 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[10]),
        .O(\counter_r[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[11]_i_4 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[9]),
        .O(\counter_r[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[11]_i_5 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[8]),
        .O(\counter_r[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA2FF)) 
    \counter_r[15]_i_1 
       (.I0(range_s),
        .I1(sawtri_i),
        .I2(\counter_r_reg[0]_0 ),
        .I3(resetn_i),
        .O(\counter_r[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[15]_i_3 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[15]),
        .O(\counter_r[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[15]_i_4 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[14]),
        .O(\counter_r[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[15]_i_5 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[13]),
        .O(\counter_r[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[15]_i_6 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[12]),
        .O(\counter_r[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2A02)) 
    \counter_r[3]_i_2 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .O(\counter_r[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[3]_i_3 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[3]),
        .O(\counter_r[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[3]_i_4 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[2]),
        .O(\counter_r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[3]_i_5 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[1]),
        .O(\counter_r[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h2A02D5FD)) 
    \counter_r[3]_i_6 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[0]),
        .O(\counter_r[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[7]_i_2 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[7]),
        .O(\counter_r[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[7]_i_3 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[6]),
        .O(\counter_r[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[7]_i_4 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[5]),
        .O(\counter_r[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD5FD2A02)) 
    \counter_r[7]_i_5 
       (.I0(sawtri_i),
        .I1(\counter_r_reg[0]_0 ),
        .I2(updown_r),
        .I3(range_s),
        .I4(counter_o[4]),
        .O(\counter_r[7]_i_5_n_0 ));
  FDRE \counter_r_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[3]_i_1_n_7 ),
        .Q(counter_o[0]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[11]_i_1_n_5 ),
        .Q(counter_o[10]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[11]_i_1_n_4 ),
        .Q(counter_o[11]),
        .R(\counter_r[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_r_reg[11]_i_1 
       (.CI(\counter_r_reg[7]_i_1_n_0 ),
        .CO({\counter_r_reg[11]_i_1_n_0 ,\counter_r_reg[11]_i_1_n_1 ,\counter_r_reg[11]_i_1_n_2 ,\counter_r_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_o[11:8]),
        .O({\counter_r_reg[11]_i_1_n_4 ,\counter_r_reg[11]_i_1_n_5 ,\counter_r_reg[11]_i_1_n_6 ,\counter_r_reg[11]_i_1_n_7 }),
        .S({\counter_r[11]_i_2_n_0 ,\counter_r[11]_i_3_n_0 ,\counter_r[11]_i_4_n_0 ,\counter_r[11]_i_5_n_0 }));
  FDRE \counter_r_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[15]_i_2_n_7 ),
        .Q(counter_o[12]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[15]_i_2_n_6 ),
        .Q(counter_o[13]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[15]_i_2_n_5 ),
        .Q(counter_o[14]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[15]_i_2_n_4 ),
        .Q(counter_o[15]),
        .R(\counter_r[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_r_reg[15]_i_2 
       (.CI(\counter_r_reg[11]_i_1_n_0 ),
        .CO({\NLW_counter_r_reg[15]_i_2_CO_UNCONNECTED [3],\counter_r_reg[15]_i_2_n_1 ,\counter_r_reg[15]_i_2_n_2 ,\counter_r_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,counter_o[14:12]}),
        .O({\counter_r_reg[15]_i_2_n_4 ,\counter_r_reg[15]_i_2_n_5 ,\counter_r_reg[15]_i_2_n_6 ,\counter_r_reg[15]_i_2_n_7 }),
        .S({\counter_r[15]_i_3_n_0 ,\counter_r[15]_i_4_n_0 ,\counter_r[15]_i_5_n_0 ,\counter_r[15]_i_6_n_0 }));
  FDRE \counter_r_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[3]_i_1_n_6 ),
        .Q(counter_o[1]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[3]_i_1_n_5 ),
        .Q(counter_o[2]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[3]_i_1_n_4 ),
        .Q(counter_o[3]),
        .R(\counter_r[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_r_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\counter_r_reg[3]_i_1_n_0 ,\counter_r_reg[3]_i_1_n_1 ,\counter_r_reg[3]_i_1_n_2 ,\counter_r_reg[3]_i_1_n_3 }),
        .CYINIT(\counter_r[3]_i_2_n_0 ),
        .DI(counter_o[3:0]),
        .O({\counter_r_reg[3]_i_1_n_4 ,\counter_r_reg[3]_i_1_n_5 ,\counter_r_reg[3]_i_1_n_6 ,\counter_r_reg[3]_i_1_n_7 }),
        .S({\counter_r[3]_i_3_n_0 ,\counter_r[3]_i_4_n_0 ,\counter_r[3]_i_5_n_0 ,\counter_r[3]_i_6_n_0 }));
  FDRE \counter_r_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[7]_i_1_n_7 ),
        .Q(counter_o[4]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[7]_i_1_n_6 ),
        .Q(counter_o[5]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[7]_i_1_n_5 ),
        .Q(counter_o[6]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[7]_i_1_n_4 ),
        .Q(counter_o[7]),
        .R(\counter_r[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_r_reg[7]_i_1 
       (.CI(\counter_r_reg[3]_i_1_n_0 ),
        .CO({\counter_r_reg[7]_i_1_n_0 ,\counter_r_reg[7]_i_1_n_1 ,\counter_r_reg[7]_i_1_n_2 ,\counter_r_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(counter_o[7:4]),
        .O({\counter_r_reg[7]_i_1_n_4 ,\counter_r_reg[7]_i_1_n_5 ,\counter_r_reg[7]_i_1_n_6 ,\counter_r_reg[7]_i_1_n_7 }),
        .S({\counter_r[7]_i_2_n_0 ,\counter_r[7]_i_3_n_0 ,\counter_r[7]_i_4_n_0 ,\counter_r[7]_i_5_n_0 }));
  FDRE \counter_r_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[11]_i_1_n_7 ),
        .Q(counter_o[8]),
        .R(\counter_r[15]_i_1_n_0 ));
  FDRE \counter_r_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\counter_r_reg[11]_i_1_n_6 ),
        .Q(counter_o[9]),
        .R(\counter_r[15]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 range_s0_carry
       (.CI(1'b0),
        .CO({range_s0_carry_n_0,range_s0_carry_n_1,range_s0_carry_n_2,range_s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({range_s0_carry_i_1_n_0,range_s0_carry_i_2_n_0,range_s0_carry_i_3_n_0,range_s0_carry_i_4_n_0}),
        .O(NLW_range_s0_carry_O_UNCONNECTED[3:0]),
        .S({range_s0_carry_i_5_n_0,range_s0_carry_i_6_n_0,range_s0_carry_i_7_n_0,range_s0_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 range_s0_carry__0
       (.CI(range_s0_carry_n_0),
        .CO({range_s,range_s0_carry__0_n_1,range_s0_carry__0_n_2,range_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({range_s0_carry__0_i_1_n_0,range_s0_carry__0_i_2_n_0,range_s0_carry__0_i_3_n_0,range_s0_carry__0_i_4_n_0}),
        .O(NLW_range_s0_carry__0_O_UNCONNECTED[3:0]),
        .S({range_s0_carry__0_i_5_n_0,range_s0_carry__0_i_6_n_0,range_s0_carry__0_i_7_n_0,range_s0_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry__0_i_1
       (.I0(counter_o[14]),
        .I1(max_i[14]),
        .I2(max_i[15]),
        .I3(counter_o[15]),
        .O(range_s0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry__0_i_2
       (.I0(counter_o[12]),
        .I1(max_i[12]),
        .I2(max_i[13]),
        .I3(counter_o[13]),
        .O(range_s0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry__0_i_3
       (.I0(counter_o[10]),
        .I1(max_i[10]),
        .I2(max_i[11]),
        .I3(counter_o[11]),
        .O(range_s0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry__0_i_4
       (.I0(counter_o[8]),
        .I1(max_i[8]),
        .I2(max_i[9]),
        .I3(counter_o[9]),
        .O(range_s0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry__0_i_5
       (.I0(counter_o[14]),
        .I1(max_i[14]),
        .I2(counter_o[15]),
        .I3(max_i[15]),
        .O(range_s0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry__0_i_6
       (.I0(counter_o[12]),
        .I1(max_i[12]),
        .I2(counter_o[13]),
        .I3(max_i[13]),
        .O(range_s0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry__0_i_7
       (.I0(counter_o[10]),
        .I1(max_i[10]),
        .I2(counter_o[11]),
        .I3(max_i[11]),
        .O(range_s0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry__0_i_8
       (.I0(counter_o[8]),
        .I1(max_i[8]),
        .I2(counter_o[9]),
        .I3(max_i[9]),
        .O(range_s0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry_i_1
       (.I0(counter_o[6]),
        .I1(max_i[6]),
        .I2(max_i[7]),
        .I3(counter_o[7]),
        .O(range_s0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry_i_2
       (.I0(counter_o[4]),
        .I1(max_i[4]),
        .I2(max_i[5]),
        .I3(counter_o[5]),
        .O(range_s0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry_i_3
       (.I0(counter_o[2]),
        .I1(max_i[2]),
        .I2(max_i[3]),
        .I3(counter_o[3]),
        .O(range_s0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    range_s0_carry_i_4
       (.I0(counter_o[0]),
        .I1(max_i[0]),
        .I2(max_i[1]),
        .I3(counter_o[1]),
        .O(range_s0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry_i_5
       (.I0(counter_o[6]),
        .I1(max_i[6]),
        .I2(counter_o[7]),
        .I3(max_i[7]),
        .O(range_s0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry_i_6
       (.I0(counter_o[4]),
        .I1(max_i[4]),
        .I2(counter_o[5]),
        .I3(max_i[5]),
        .O(range_s0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry_i_7
       (.I0(counter_o[2]),
        .I1(max_i[2]),
        .I2(counter_o[3]),
        .I3(max_i[3]),
        .O(range_s0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    range_s0_carry_i_8
       (.I0(counter_o[0]),
        .I1(max_i[0]),
        .I2(counter_o[1]),
        .I3(max_i[1]),
        .O(range_s0_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    under_o_INST_0
       (.I0(under_o_INST_0_i_1_n_0),
        .I1(under_o_INST_0_i_2_n_0),
        .I2(under_o_INST_0_i_3_n_0),
        .I3(under_o_INST_0_i_4_n_0),
        .I4(counter_o[0]),
        .O(\counter_r_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    under_o_INST_0_i_1
       (.I0(counter_o[9]),
        .I1(counter_o[8]),
        .I2(counter_o[11]),
        .I3(counter_o[10]),
        .O(under_o_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    under_o_INST_0_i_2
       (.I0(counter_o[13]),
        .I1(counter_o[12]),
        .I2(counter_o[15]),
        .I3(counter_o[14]),
        .O(under_o_INST_0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    under_o_INST_0_i_3
       (.I0(counter_o[1]),
        .I1(counter_o[3]),
        .I2(counter_o[2]),
        .O(under_o_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    under_o_INST_0_i_4
       (.I0(counter_o[5]),
        .I1(counter_o[4]),
        .I2(counter_o[7]),
        .I3(counter_o[6]),
        .O(under_o_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hD4FF)) 
    updown_o_INST_0
       (.I0(range_s),
        .I1(updown_r),
        .I2(\counter_r_reg[0]_0 ),
        .I3(sawtri_i),
        .O(updown_o));
  FDSE updown_r_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(updown_o),
        .Q(updown_r),
        .S(\counter_r[15]_i_1_n_0 ));
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
