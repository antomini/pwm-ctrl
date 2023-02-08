// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jan 26 10:25:41 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_sync_v0_0_0 -prefix
//               pwm_controller_sync_v0_0_0_ pwm_controller_sync_v0_0_0_sim_netlist.v
// Design      : pwm_controller_sync_v0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_sync_v0_0_0,sync_v0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sync_v0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_sync_v0_0_0
   (counter_i,
    clk_i,
    duty_i,
    top_i,
    trigger_o);
  input [15:0]counter_i;
  input clk_i;
  input [15:0]duty_i;
  input [15:0]top_i;
  output trigger_o;

  wire clk_i;
  wire [15:0]counter_i;
  wire [15:0]duty_i;
  wire [15:0]top_i;
  wire trigger_o;

  pwm_controller_sync_v0_0_0_sync_v0 U0
       (.clk_i(clk_i),
        .counter_i(counter_i),
        .duty_i(duty_i),
        .top_i(top_i),
        .trigger_o(trigger_o));
endmodule

module pwm_controller_sync_v0_0_0_sync_v0
   (trigger_o,
    top_i,
    duty_i,
    counter_i,
    clk_i);
  output trigger_o;
  input [15:0]top_i;
  input [15:0]duty_i;
  input [15:0]counter_i;
  input clk_i;

  wire clk_i;
  wire [15:0]compB_s;
  wire [15:0]counter_i;
  wire [15:0]duty_i;
  wire [14:1]minusOp;
  wire minusOp_carry__0_i_1_n_0;
  wire minusOp_carry__0_i_2_n_0;
  wire minusOp_carry__0_i_3_n_0;
  wire minusOp_carry__0_i_4_n_0;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_i_1_n_0;
  wire minusOp_carry__1_i_2_n_0;
  wire minusOp_carry__1_i_3_n_0;
  wire minusOp_carry__1_i_4_n_0;
  wire minusOp_carry__1_n_0;
  wire minusOp_carry__1_n_1;
  wire minusOp_carry__1_n_2;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry__2_i_1_n_0;
  wire minusOp_carry__2_i_2_n_0;
  wire minusOp_carry__2_n_1;
  wire minusOp_carry__2_n_3;
  wire minusOp_carry_i_1_n_0;
  wire minusOp_carry_i_2_n_0;
  wire minusOp_carry_i_3_n_0;
  wire minusOp_carry_i_4_n_0;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire [15:1]offTime_s0_out;
  wire offTime_s_carry__0_i_1_n_0;
  wire offTime_s_carry__0_i_2_n_0;
  wire offTime_s_carry__0_i_3_n_0;
  wire offTime_s_carry__0_i_4_n_0;
  wire offTime_s_carry__0_n_0;
  wire offTime_s_carry__0_n_1;
  wire offTime_s_carry__0_n_2;
  wire offTime_s_carry__0_n_3;
  wire offTime_s_carry__1_i_1_n_0;
  wire offTime_s_carry__1_i_2_n_0;
  wire offTime_s_carry__1_i_3_n_0;
  wire offTime_s_carry__1_i_4_n_0;
  wire offTime_s_carry__1_n_0;
  wire offTime_s_carry__1_n_1;
  wire offTime_s_carry__1_n_2;
  wire offTime_s_carry__1_n_3;
  wire offTime_s_carry__2_i_1_n_0;
  wire offTime_s_carry__2_i_2_n_0;
  wire offTime_s_carry__2_i_3_n_0;
  wire offTime_s_carry__2_i_4_n_0;
  wire offTime_s_carry__2_n_1;
  wire offTime_s_carry__2_n_2;
  wire offTime_s_carry__2_n_3;
  wire offTime_s_carry_i_1_n_0;
  wire offTime_s_carry_i_2_n_0;
  wire offTime_s_carry_i_3_n_0;
  wire offTime_s_carry_i_4_n_0;
  wire offTime_s_carry_n_0;
  wire offTime_s_carry_n_1;
  wire offTime_s_carry_n_2;
  wire offTime_s_carry_n_3;
  wire [15:0]top_i;
  wire trigger_o;
  wire trigger_o1;
  wire trigger_o10_out;
  wire trigger_o1__6_carry__0_i_1_n_0;
  wire trigger_o1__6_carry__0_i_2_n_0;
  wire trigger_o1__6_carry__0_n_3;
  wire trigger_o1__6_carry_i_1_n_0;
  wire trigger_o1__6_carry_i_2_n_0;
  wire trigger_o1__6_carry_i_3_n_0;
  wire trigger_o1__6_carry_i_4_n_0;
  wire trigger_o1__6_carry_n_0;
  wire trigger_o1__6_carry_n_1;
  wire trigger_o1__6_carry_n_2;
  wire trigger_o1__6_carry_n_3;
  wire trigger_o1_carry__0_i_1_n_0;
  wire trigger_o1_carry__0_i_2_n_0;
  wire trigger_o1_carry__0_i_3_n_1;
  wire trigger_o1_carry__0_i_3_n_2;
  wire trigger_o1_carry__0_i_3_n_3;
  wire trigger_o1_carry__0_i_4_n_0;
  wire trigger_o1_carry__0_i_5_n_0;
  wire trigger_o1_carry__0_i_6_n_0;
  wire trigger_o1_carry__0_n_3;
  wire trigger_o1_carry_i_10_n_0;
  wire trigger_o1_carry_i_11_n_0;
  wire trigger_o1_carry_i_12_n_0;
  wire trigger_o1_carry_i_13_n_0;
  wire trigger_o1_carry_i_14_n_0;
  wire trigger_o1_carry_i_15_n_0;
  wire trigger_o1_carry_i_16_n_0;
  wire trigger_o1_carry_i_17_n_0;
  wire trigger_o1_carry_i_18_n_0;
  wire trigger_o1_carry_i_19_n_0;
  wire trigger_o1_carry_i_1_n_0;
  wire trigger_o1_carry_i_2_n_0;
  wire trigger_o1_carry_i_3_n_0;
  wire trigger_o1_carry_i_4_n_0;
  wire trigger_o1_carry_i_5_n_0;
  wire trigger_o1_carry_i_5_n_1;
  wire trigger_o1_carry_i_5_n_2;
  wire trigger_o1_carry_i_5_n_3;
  wire trigger_o1_carry_i_6_n_0;
  wire trigger_o1_carry_i_6_n_1;
  wire trigger_o1_carry_i_6_n_2;
  wire trigger_o1_carry_i_6_n_3;
  wire trigger_o1_carry_i_7_n_0;
  wire trigger_o1_carry_i_7_n_1;
  wire trigger_o1_carry_i_7_n_2;
  wire trigger_o1_carry_i_7_n_3;
  wire trigger_o1_carry_i_8_n_0;
  wire trigger_o1_carry_i_9_n_0;
  wire trigger_o1_carry_n_0;
  wire trigger_o1_carry_n_1;
  wire trigger_o1_carry_n_2;
  wire trigger_o1_carry_n_3;
  wire trigger_o_i_1_n_0;
  wire [3:1]NLW_minusOp_carry__2_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__2_O_UNCONNECTED;
  wire [0:0]NLW_offTime_s_carry_O_UNCONNECTED;
  wire [3:3]NLW_offTime_s_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_trigger_o1__6_carry_O_UNCONNECTED;
  wire [3:2]NLW_trigger_o1__6_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_trigger_o1__6_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_trigger_o1_carry_O_UNCONNECTED;
  wire [3:2]NLW_trigger_o1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_trigger_o1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_trigger_o1_carry__0_i_3_CO_UNCONNECTED;

  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(duty_i[1]),
        .DI(duty_i[5:2]),
        .O(minusOp[4:1]),
        .S({minusOp_carry_i_1_n_0,minusOp_carry_i_2_n_0,minusOp_carry_i_3_n_0,minusOp_carry_i_4_n_0}));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(duty_i[9:6]),
        .O(minusOp[8:5]),
        .S({minusOp_carry__0_i_1_n_0,minusOp_carry__0_i_2_n_0,minusOp_carry__0_i_3_n_0,minusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_1
       (.I0(duty_i[9]),
        .O(minusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_2
       (.I0(duty_i[8]),
        .O(minusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_3
       (.I0(duty_i[7]),
        .O(minusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__0_i_4
       (.I0(duty_i[6]),
        .O(minusOp_carry__0_i_4_n_0));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({minusOp_carry__1_n_0,minusOp_carry__1_n_1,minusOp_carry__1_n_2,minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(duty_i[13:10]),
        .O(minusOp[12:9]),
        .S({minusOp_carry__1_i_1_n_0,minusOp_carry__1_i_2_n_0,minusOp_carry__1_i_3_n_0,minusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_1
       (.I0(duty_i[13]),
        .O(minusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_2
       (.I0(duty_i[12]),
        .O(minusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_3
       (.I0(duty_i[11]),
        .O(minusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__1_i_4
       (.I0(duty_i[10]),
        .O(minusOp_carry__1_i_4_n_0));
  CARRY4 minusOp_carry__2
       (.CI(minusOp_carry__1_n_0),
        .CO({NLW_minusOp_carry__2_CO_UNCONNECTED[3],minusOp_carry__2_n_1,NLW_minusOp_carry__2_CO_UNCONNECTED[1],minusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,duty_i[15:14]}),
        .O({NLW_minusOp_carry__2_O_UNCONNECTED[3:2],minusOp[14:13]}),
        .S({1'b0,1'b1,minusOp_carry__2_i_1_n_0,minusOp_carry__2_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_1
       (.I0(duty_i[15]),
        .O(minusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry__2_i_2
       (.I0(duty_i[14]),
        .O(minusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_1
       (.I0(duty_i[5]),
        .O(minusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_2
       (.I0(duty_i[4]),
        .O(minusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_3
       (.I0(duty_i[3]),
        .O(minusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    minusOp_carry_i_4
       (.I0(duty_i[2]),
        .O(minusOp_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 offTime_s_carry
       (.CI(1'b0),
        .CO({offTime_s_carry_n_0,offTime_s_carry_n_1,offTime_s_carry_n_2,offTime_s_carry_n_3}),
        .CYINIT(1'b1),
        .DI(top_i[3:0]),
        .O({offTime_s0_out[3:1],NLW_offTime_s_carry_O_UNCONNECTED[0]}),
        .S({offTime_s_carry_i_1_n_0,offTime_s_carry_i_2_n_0,offTime_s_carry_i_3_n_0,offTime_s_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 offTime_s_carry__0
       (.CI(offTime_s_carry_n_0),
        .CO({offTime_s_carry__0_n_0,offTime_s_carry__0_n_1,offTime_s_carry__0_n_2,offTime_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(top_i[7:4]),
        .O(offTime_s0_out[7:4]),
        .S({offTime_s_carry__0_i_1_n_0,offTime_s_carry__0_i_2_n_0,offTime_s_carry__0_i_3_n_0,offTime_s_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__0_i_1
       (.I0(top_i[7]),
        .I1(duty_i[7]),
        .O(offTime_s_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__0_i_2
       (.I0(top_i[6]),
        .I1(duty_i[6]),
        .O(offTime_s_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__0_i_3
       (.I0(top_i[5]),
        .I1(duty_i[5]),
        .O(offTime_s_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__0_i_4
       (.I0(top_i[4]),
        .I1(duty_i[4]),
        .O(offTime_s_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 offTime_s_carry__1
       (.CI(offTime_s_carry__0_n_0),
        .CO({offTime_s_carry__1_n_0,offTime_s_carry__1_n_1,offTime_s_carry__1_n_2,offTime_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(top_i[11:8]),
        .O(offTime_s0_out[11:8]),
        .S({offTime_s_carry__1_i_1_n_0,offTime_s_carry__1_i_2_n_0,offTime_s_carry__1_i_3_n_0,offTime_s_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__1_i_1
       (.I0(top_i[11]),
        .I1(duty_i[11]),
        .O(offTime_s_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__1_i_2
       (.I0(top_i[10]),
        .I1(duty_i[10]),
        .O(offTime_s_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__1_i_3
       (.I0(top_i[9]),
        .I1(duty_i[9]),
        .O(offTime_s_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__1_i_4
       (.I0(top_i[8]),
        .I1(duty_i[8]),
        .O(offTime_s_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 offTime_s_carry__2
       (.CI(offTime_s_carry__1_n_0),
        .CO({NLW_offTime_s_carry__2_CO_UNCONNECTED[3],offTime_s_carry__2_n_1,offTime_s_carry__2_n_2,offTime_s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,top_i[14:12]}),
        .O(offTime_s0_out[15:12]),
        .S({offTime_s_carry__2_i_1_n_0,offTime_s_carry__2_i_2_n_0,offTime_s_carry__2_i_3_n_0,offTime_s_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__2_i_1
       (.I0(top_i[15]),
        .I1(duty_i[15]),
        .O(offTime_s_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__2_i_2
       (.I0(top_i[14]),
        .I1(duty_i[14]),
        .O(offTime_s_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__2_i_3
       (.I0(top_i[13]),
        .I1(duty_i[13]),
        .O(offTime_s_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry__2_i_4
       (.I0(top_i[12]),
        .I1(duty_i[12]),
        .O(offTime_s_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry_i_1
       (.I0(top_i[3]),
        .I1(duty_i[3]),
        .O(offTime_s_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry_i_2
       (.I0(top_i[2]),
        .I1(duty_i[2]),
        .O(offTime_s_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry_i_3
       (.I0(top_i[1]),
        .I1(duty_i[1]),
        .O(offTime_s_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    offTime_s_carry_i_4
       (.I0(top_i[0]),
        .I1(duty_i[0]),
        .O(offTime_s_carry_i_4_n_0));
  CARRY4 trigger_o1__6_carry
       (.CI(1'b0),
        .CO({trigger_o1__6_carry_n_0,trigger_o1__6_carry_n_1,trigger_o1__6_carry_n_2,trigger_o1__6_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_trigger_o1__6_carry_O_UNCONNECTED[3:0]),
        .S({trigger_o1__6_carry_i_1_n_0,trigger_o1__6_carry_i_2_n_0,trigger_o1__6_carry_i_3_n_0,trigger_o1__6_carry_i_4_n_0}));
  CARRY4 trigger_o1__6_carry__0
       (.CI(trigger_o1__6_carry_n_0),
        .CO({NLW_trigger_o1__6_carry__0_CO_UNCONNECTED[3:2],trigger_o10_out,trigger_o1__6_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_trigger_o1__6_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,trigger_o1__6_carry__0_i_1_n_0,trigger_o1__6_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1__6_carry__0_i_1
       (.I0(counter_i[15]),
        .I1(minusOp_carry__2_n_1),
        .O(trigger_o1__6_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1__6_carry__0_i_2
       (.I0(minusOp[12]),
        .I1(counter_i[12]),
        .I2(counter_i[14]),
        .I3(minusOp[14]),
        .I4(counter_i[13]),
        .I5(minusOp[13]),
        .O(trigger_o1__6_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1__6_carry_i_1
       (.I0(minusOp[9]),
        .I1(counter_i[9]),
        .I2(counter_i[11]),
        .I3(minusOp[11]),
        .I4(counter_i[10]),
        .I5(minusOp[10]),
        .O(trigger_o1__6_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1__6_carry_i_2
       (.I0(minusOp[6]),
        .I1(counter_i[6]),
        .I2(counter_i[8]),
        .I3(minusOp[8]),
        .I4(counter_i[7]),
        .I5(minusOp[7]),
        .O(trigger_o1__6_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1__6_carry_i_3
       (.I0(minusOp[3]),
        .I1(counter_i[3]),
        .I2(counter_i[5]),
        .I3(minusOp[5]),
        .I4(counter_i[4]),
        .I5(minusOp[4]),
        .O(trigger_o1__6_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    trigger_o1__6_carry_i_4
       (.I0(duty_i[1]),
        .I1(counter_i[0]),
        .I2(counter_i[2]),
        .I3(minusOp[2]),
        .I4(counter_i[1]),
        .I5(minusOp[1]),
        .O(trigger_o1__6_carry_i_4_n_0));
  CARRY4 trigger_o1_carry
       (.CI(1'b0),
        .CO({trigger_o1_carry_n_0,trigger_o1_carry_n_1,trigger_o1_carry_n_2,trigger_o1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_trigger_o1_carry_O_UNCONNECTED[3:0]),
        .S({trigger_o1_carry_i_1_n_0,trigger_o1_carry_i_2_n_0,trigger_o1_carry_i_3_n_0,trigger_o1_carry_i_4_n_0}));
  CARRY4 trigger_o1_carry__0
       (.CI(trigger_o1_carry_n_0),
        .CO({NLW_trigger_o1_carry__0_CO_UNCONNECTED[3:2],trigger_o1,trigger_o1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_trigger_o1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,trigger_o1_carry__0_i_1_n_0,trigger_o1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    trigger_o1_carry__0_i_1
       (.I0(counter_i[15]),
        .I1(compB_s[15]),
        .O(trigger_o1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1_carry__0_i_2
       (.I0(compB_s[12]),
        .I1(counter_i[12]),
        .I2(counter_i[14]),
        .I3(compB_s[14]),
        .I4(counter_i[13]),
        .I5(compB_s[13]),
        .O(trigger_o1_carry__0_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 trigger_o1_carry__0_i_3
       (.CI(trigger_o1_carry_i_5_n_0),
        .CO({NLW_trigger_o1_carry__0_i_3_CO_UNCONNECTED[3],trigger_o1_carry__0_i_3_n_1,trigger_o1_carry__0_i_3_n_2,trigger_o1_carry__0_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,duty_i[14:12]}),
        .O(compB_s[15:12]),
        .S({duty_i[15],trigger_o1_carry__0_i_4_n_0,trigger_o1_carry__0_i_5_n_0,trigger_o1_carry__0_i_6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry__0_i_4
       (.I0(duty_i[14]),
        .I1(offTime_s0_out[15]),
        .O(trigger_o1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry__0_i_5
       (.I0(duty_i[13]),
        .I1(offTime_s0_out[14]),
        .O(trigger_o1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry__0_i_6
       (.I0(duty_i[12]),
        .I1(offTime_s0_out[13]),
        .O(trigger_o1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1_carry_i_1
       (.I0(compB_s[9]),
        .I1(counter_i[9]),
        .I2(counter_i[11]),
        .I3(compB_s[11]),
        .I4(counter_i[10]),
        .I5(compB_s[10]),
        .O(trigger_o1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_10
       (.I0(duty_i[9]),
        .I1(offTime_s0_out[10]),
        .O(trigger_o1_carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_11
       (.I0(duty_i[8]),
        .I1(offTime_s0_out[9]),
        .O(trigger_o1_carry_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_12
       (.I0(duty_i[7]),
        .I1(offTime_s0_out[8]),
        .O(trigger_o1_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_13
       (.I0(duty_i[6]),
        .I1(offTime_s0_out[7]),
        .O(trigger_o1_carry_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_14
       (.I0(duty_i[5]),
        .I1(offTime_s0_out[6]),
        .O(trigger_o1_carry_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_15
       (.I0(duty_i[4]),
        .I1(offTime_s0_out[5]),
        .O(trigger_o1_carry_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_16
       (.I0(duty_i[3]),
        .I1(offTime_s0_out[4]),
        .O(trigger_o1_carry_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_17
       (.I0(duty_i[2]),
        .I1(offTime_s0_out[3]),
        .O(trigger_o1_carry_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_18
       (.I0(duty_i[1]),
        .I1(offTime_s0_out[2]),
        .O(trigger_o1_carry_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_19
       (.I0(duty_i[0]),
        .I1(offTime_s0_out[1]),
        .O(trigger_o1_carry_i_19_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1_carry_i_2
       (.I0(compB_s[6]),
        .I1(counter_i[6]),
        .I2(counter_i[8]),
        .I3(compB_s[8]),
        .I4(counter_i[7]),
        .I5(compB_s[7]),
        .O(trigger_o1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1_carry_i_3
       (.I0(compB_s[3]),
        .I1(counter_i[3]),
        .I2(counter_i[5]),
        .I3(compB_s[5]),
        .I4(counter_i[4]),
        .I5(compB_s[4]),
        .O(trigger_o1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    trigger_o1_carry_i_4
       (.I0(compB_s[0]),
        .I1(counter_i[0]),
        .I2(counter_i[2]),
        .I3(compB_s[2]),
        .I4(counter_i[1]),
        .I5(compB_s[1]),
        .O(trigger_o1_carry_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 trigger_o1_carry_i_5
       (.CI(trigger_o1_carry_i_6_n_0),
        .CO({trigger_o1_carry_i_5_n_0,trigger_o1_carry_i_5_n_1,trigger_o1_carry_i_5_n_2,trigger_o1_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(duty_i[11:8]),
        .O(compB_s[11:8]),
        .S({trigger_o1_carry_i_8_n_0,trigger_o1_carry_i_9_n_0,trigger_o1_carry_i_10_n_0,trigger_o1_carry_i_11_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 trigger_o1_carry_i_6
       (.CI(trigger_o1_carry_i_7_n_0),
        .CO({trigger_o1_carry_i_6_n_0,trigger_o1_carry_i_6_n_1,trigger_o1_carry_i_6_n_2,trigger_o1_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(duty_i[7:4]),
        .O(compB_s[7:4]),
        .S({trigger_o1_carry_i_12_n_0,trigger_o1_carry_i_13_n_0,trigger_o1_carry_i_14_n_0,trigger_o1_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 trigger_o1_carry_i_7
       (.CI(1'b0),
        .CO({trigger_o1_carry_i_7_n_0,trigger_o1_carry_i_7_n_1,trigger_o1_carry_i_7_n_2,trigger_o1_carry_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(duty_i[3:0]),
        .O(compB_s[3:0]),
        .S({trigger_o1_carry_i_16_n_0,trigger_o1_carry_i_17_n_0,trigger_o1_carry_i_18_n_0,trigger_o1_carry_i_19_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_8
       (.I0(duty_i[11]),
        .I1(offTime_s0_out[12]),
        .O(trigger_o1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    trigger_o1_carry_i_9
       (.I0(duty_i[10]),
        .I1(offTime_s0_out[11]),
        .O(trigger_o1_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    trigger_o_i_1
       (.I0(trigger_o10_out),
        .I1(trigger_o1),
        .O(trigger_o_i_1_n_0));
  FDRE trigger_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(trigger_o_i_1_n_0),
        .Q(trigger_o),
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
