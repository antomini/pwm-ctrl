// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Jun 16 18:54:12 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_trigger_acquisition_0_0/pwm_controller_trigger_acquisition_0_0_sim_netlist.v
// Design      : pwm_controller_trigger_acquisition_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_trigger_acquisition_0_0,trigger_acquisition,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "trigger_acquisition,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_trigger_acquisition_0_0
   (acq_o,
    free_i,
    max_i,
    cmp_i,
    half_i,
    counter_i,
    en_free_i,
    en_max_i,
    en_cmp_i,
    en_half_i,
    en_zero_i);
  output acq_o;
  input [15:0]free_i;
  input [15:0]max_i;
  input [15:0]cmp_i;
  input [15:0]half_i;
  input [15:0]counter_i;
  input en_free_i;
  input en_max_i;
  input en_cmp_i;
  input en_half_i;
  input en_zero_i;

  wire acq_o;
  wire acq_o_INST_0_i_2_n_0;
  wire acq_o_INST_0_i_3_n_0;
  wire acq_o_INST_0_i_4_n_0;
  wire [15:0]cmp_i;
  wire [15:0]counter_i;
  wire en_cmp_i;
  wire en_free_i;
  wire en_half_i;
  wire en_max_i;
  wire en_zero_i;
  wire [15:0]free_i;
  wire [15:0]half_i;
  wire [15:0]max_i;

  pwm_controller_trigger_acquisition_0_0_trigger_acquisition U0
       (.acq_o(acq_o),
        .acq_o_0(acq_o_INST_0_i_2_n_0),
        .acq_o_1(acq_o_INST_0_i_3_n_0),
        .cmp_i(cmp_i),
        .counter_i(counter_i),
        .en_cmp_i(en_cmp_i),
        .en_free_i(en_free_i),
        .en_half_i(en_half_i),
        .en_max_i(en_max_i),
        .free_i(free_i),
        .half_i(half_i),
        .max_i(max_i));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    acq_o_INST_0_i_2
       (.I0(counter_i[13]),
        .I1(counter_i[14]),
        .I2(counter_i[11]),
        .I3(counter_i[12]),
        .I4(counter_i[15]),
        .I5(en_zero_i),
        .O(acq_o_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    acq_o_INST_0_i_3
       (.I0(counter_i[3]),
        .I1(counter_i[4]),
        .I2(counter_i[2]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(acq_o_INST_0_i_4_n_0),
        .O(acq_o_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    acq_o_INST_0_i_4
       (.I0(counter_i[7]),
        .I1(counter_i[8]),
        .I2(counter_i[5]),
        .I3(counter_i[6]),
        .I4(counter_i[10]),
        .I5(counter_i[9]),
        .O(acq_o_INST_0_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "trigger_acquisition" *) 
module pwm_controller_trigger_acquisition_0_0_trigger_acquisition
   (acq_o,
    cmp_i,
    counter_i,
    half_i,
    free_i,
    max_i,
    en_max_i,
    acq_o_0,
    acq_o_1,
    en_cmp_i,
    en_half_i,
    en_free_i);
  output acq_o;
  input [15:0]cmp_i;
  input [15:0]counter_i;
  input [15:0]half_i;
  input [15:0]free_i;
  input [15:0]max_i;
  input en_max_i;
  input acq_o_0;
  input acq_o_1;
  input en_cmp_i;
  input en_half_i;
  input en_free_i;

  wire acq_o;
  wire acq_o_0;
  wire acq_o_1;
  wire acq_o_INST_0_i_1_n_0;
  wire cmp_acq_s0_carry__0_i_1_n_0;
  wire cmp_acq_s0_carry__0_i_2_n_0;
  wire cmp_acq_s0_carry__0_n_3;
  wire cmp_acq_s0_carry_i_1_n_0;
  wire cmp_acq_s0_carry_i_2_n_0;
  wire cmp_acq_s0_carry_i_3_n_0;
  wire cmp_acq_s0_carry_i_4_n_0;
  wire cmp_acq_s0_carry_n_0;
  wire cmp_acq_s0_carry_n_1;
  wire cmp_acq_s0_carry_n_2;
  wire cmp_acq_s0_carry_n_3;
  wire [15:0]cmp_i;
  wire cmp_trig_s;
  wire [15:0]counter_i;
  wire en_cmp_i;
  wire en_free_i;
  wire en_half_i;
  wire en_max_i;
  wire free_acq_s0_carry__0_i_1_n_0;
  wire free_acq_s0_carry__0_i_2_n_0;
  wire free_acq_s0_carry__0_n_3;
  wire free_acq_s0_carry_i_1_n_0;
  wire free_acq_s0_carry_i_2_n_0;
  wire free_acq_s0_carry_i_3_n_0;
  wire free_acq_s0_carry_i_4_n_0;
  wire free_acq_s0_carry_n_0;
  wire free_acq_s0_carry_n_1;
  wire free_acq_s0_carry_n_2;
  wire free_acq_s0_carry_n_3;
  wire [15:0]free_i;
  wire free_trig_s;
  wire half_acq_s0_carry__0_i_1_n_0;
  wire half_acq_s0_carry__0_i_2_n_0;
  wire half_acq_s0_carry__0_n_3;
  wire half_acq_s0_carry_i_1_n_0;
  wire half_acq_s0_carry_i_2_n_0;
  wire half_acq_s0_carry_i_3_n_0;
  wire half_acq_s0_carry_i_4_n_0;
  wire half_acq_s0_carry_n_0;
  wire half_acq_s0_carry_n_1;
  wire half_acq_s0_carry_n_2;
  wire half_acq_s0_carry_n_3;
  wire [15:0]half_i;
  wire half_trig_s;
  wire max_acq_s0_carry__0_i_1_n_0;
  wire max_acq_s0_carry__0_i_2_n_0;
  wire max_acq_s0_carry__0_n_3;
  wire max_acq_s0_carry_i_1_n_0;
  wire max_acq_s0_carry_i_2_n_0;
  wire max_acq_s0_carry_i_3_n_0;
  wire max_acq_s0_carry_i_4_n_0;
  wire max_acq_s0_carry_n_0;
  wire max_acq_s0_carry_n_1;
  wire max_acq_s0_carry_n_2;
  wire max_acq_s0_carry_n_3;
  wire [15:0]max_i;
  wire max_trig_s;
  wire [3:0]NLW_cmp_acq_s0_carry_O_UNCONNECTED;
  wire [3:2]NLW_cmp_acq_s0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_cmp_acq_s0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_free_acq_s0_carry_O_UNCONNECTED;
  wire [3:2]NLW_free_acq_s0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_free_acq_s0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_half_acq_s0_carry_O_UNCONNECTED;
  wire [3:2]NLW_half_acq_s0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_half_acq_s0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_max_acq_s0_carry_O_UNCONNECTED;
  wire [3:2]NLW_max_acq_s0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_max_acq_s0_carry__0_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    acq_o_INST_0
       (.I0(acq_o_INST_0_i_1_n_0),
        .I1(max_trig_s),
        .I2(en_max_i),
        .I3(acq_o_0),
        .I4(acq_o_1),
        .O(acq_o));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    acq_o_INST_0_i_1
       (.I0(cmp_trig_s),
        .I1(en_cmp_i),
        .I2(half_trig_s),
        .I3(en_half_i),
        .I4(en_free_i),
        .I5(free_trig_s),
        .O(acq_o_INST_0_i_1_n_0));
  CARRY4 cmp_acq_s0_carry
       (.CI(1'b0),
        .CO({cmp_acq_s0_carry_n_0,cmp_acq_s0_carry_n_1,cmp_acq_s0_carry_n_2,cmp_acq_s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cmp_acq_s0_carry_O_UNCONNECTED[3:0]),
        .S({cmp_acq_s0_carry_i_1_n_0,cmp_acq_s0_carry_i_2_n_0,cmp_acq_s0_carry_i_3_n_0,cmp_acq_s0_carry_i_4_n_0}));
  CARRY4 cmp_acq_s0_carry__0
       (.CI(cmp_acq_s0_carry_n_0),
        .CO({NLW_cmp_acq_s0_carry__0_CO_UNCONNECTED[3:2],cmp_trig_s,cmp_acq_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cmp_acq_s0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,cmp_acq_s0_carry__0_i_1_n_0,cmp_acq_s0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    cmp_acq_s0_carry__0_i_1
       (.I0(cmp_i[15]),
        .I1(counter_i[15]),
        .O(cmp_acq_s0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp_acq_s0_carry__0_i_2
       (.I0(cmp_i[14]),
        .I1(counter_i[14]),
        .I2(cmp_i[13]),
        .I3(counter_i[13]),
        .I4(counter_i[12]),
        .I5(cmp_i[12]),
        .O(cmp_acq_s0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp_acq_s0_carry_i_1
       (.I0(cmp_i[11]),
        .I1(counter_i[11]),
        .I2(cmp_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[9]),
        .I5(cmp_i[9]),
        .O(cmp_acq_s0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp_acq_s0_carry_i_2
       (.I0(cmp_i[8]),
        .I1(counter_i[8]),
        .I2(cmp_i[7]),
        .I3(counter_i[7]),
        .I4(counter_i[6]),
        .I5(cmp_i[6]),
        .O(cmp_acq_s0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp_acq_s0_carry_i_3
       (.I0(cmp_i[5]),
        .I1(counter_i[5]),
        .I2(cmp_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[3]),
        .I5(cmp_i[3]),
        .O(cmp_acq_s0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    cmp_acq_s0_carry_i_4
       (.I0(cmp_i[2]),
        .I1(counter_i[2]),
        .I2(cmp_i[1]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(cmp_i[0]),
        .O(cmp_acq_s0_carry_i_4_n_0));
  CARRY4 free_acq_s0_carry
       (.CI(1'b0),
        .CO({free_acq_s0_carry_n_0,free_acq_s0_carry_n_1,free_acq_s0_carry_n_2,free_acq_s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_free_acq_s0_carry_O_UNCONNECTED[3:0]),
        .S({free_acq_s0_carry_i_1_n_0,free_acq_s0_carry_i_2_n_0,free_acq_s0_carry_i_3_n_0,free_acq_s0_carry_i_4_n_0}));
  CARRY4 free_acq_s0_carry__0
       (.CI(free_acq_s0_carry_n_0),
        .CO({NLW_free_acq_s0_carry__0_CO_UNCONNECTED[3:2],free_trig_s,free_acq_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_free_acq_s0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,free_acq_s0_carry__0_i_1_n_0,free_acq_s0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    free_acq_s0_carry__0_i_1
       (.I0(free_i[15]),
        .I1(counter_i[15]),
        .O(free_acq_s0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    free_acq_s0_carry__0_i_2
       (.I0(free_i[14]),
        .I1(counter_i[14]),
        .I2(free_i[13]),
        .I3(counter_i[13]),
        .I4(counter_i[12]),
        .I5(free_i[12]),
        .O(free_acq_s0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    free_acq_s0_carry_i_1
       (.I0(free_i[11]),
        .I1(counter_i[11]),
        .I2(free_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[9]),
        .I5(free_i[9]),
        .O(free_acq_s0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    free_acq_s0_carry_i_2
       (.I0(free_i[8]),
        .I1(counter_i[8]),
        .I2(free_i[7]),
        .I3(counter_i[7]),
        .I4(counter_i[6]),
        .I5(free_i[6]),
        .O(free_acq_s0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    free_acq_s0_carry_i_3
       (.I0(free_i[5]),
        .I1(counter_i[5]),
        .I2(free_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[3]),
        .I5(free_i[3]),
        .O(free_acq_s0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    free_acq_s0_carry_i_4
       (.I0(free_i[2]),
        .I1(counter_i[2]),
        .I2(free_i[1]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(free_i[0]),
        .O(free_acq_s0_carry_i_4_n_0));
  CARRY4 half_acq_s0_carry
       (.CI(1'b0),
        .CO({half_acq_s0_carry_n_0,half_acq_s0_carry_n_1,half_acq_s0_carry_n_2,half_acq_s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_acq_s0_carry_O_UNCONNECTED[3:0]),
        .S({half_acq_s0_carry_i_1_n_0,half_acq_s0_carry_i_2_n_0,half_acq_s0_carry_i_3_n_0,half_acq_s0_carry_i_4_n_0}));
  CARRY4 half_acq_s0_carry__0
       (.CI(half_acq_s0_carry_n_0),
        .CO({NLW_half_acq_s0_carry__0_CO_UNCONNECTED[3:2],half_trig_s,half_acq_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_half_acq_s0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,half_acq_s0_carry__0_i_1_n_0,half_acq_s0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    half_acq_s0_carry__0_i_1
       (.I0(half_i[15]),
        .I1(counter_i[15]),
        .O(half_acq_s0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    half_acq_s0_carry__0_i_2
       (.I0(half_i[14]),
        .I1(counter_i[14]),
        .I2(half_i[13]),
        .I3(counter_i[13]),
        .I4(counter_i[12]),
        .I5(half_i[12]),
        .O(half_acq_s0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    half_acq_s0_carry_i_1
       (.I0(half_i[11]),
        .I1(counter_i[11]),
        .I2(half_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[9]),
        .I5(half_i[9]),
        .O(half_acq_s0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    half_acq_s0_carry_i_2
       (.I0(half_i[8]),
        .I1(counter_i[8]),
        .I2(half_i[7]),
        .I3(counter_i[7]),
        .I4(counter_i[6]),
        .I5(half_i[6]),
        .O(half_acq_s0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    half_acq_s0_carry_i_3
       (.I0(half_i[5]),
        .I1(counter_i[5]),
        .I2(half_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[3]),
        .I5(half_i[3]),
        .O(half_acq_s0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    half_acq_s0_carry_i_4
       (.I0(half_i[2]),
        .I1(counter_i[2]),
        .I2(half_i[1]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(half_i[0]),
        .O(half_acq_s0_carry_i_4_n_0));
  CARRY4 max_acq_s0_carry
       (.CI(1'b0),
        .CO({max_acq_s0_carry_n_0,max_acq_s0_carry_n_1,max_acq_s0_carry_n_2,max_acq_s0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_max_acq_s0_carry_O_UNCONNECTED[3:0]),
        .S({max_acq_s0_carry_i_1_n_0,max_acq_s0_carry_i_2_n_0,max_acq_s0_carry_i_3_n_0,max_acq_s0_carry_i_4_n_0}));
  CARRY4 max_acq_s0_carry__0
       (.CI(max_acq_s0_carry_n_0),
        .CO({NLW_max_acq_s0_carry__0_CO_UNCONNECTED[3:2],max_trig_s,max_acq_s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_max_acq_s0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,max_acq_s0_carry__0_i_1_n_0,max_acq_s0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    max_acq_s0_carry__0_i_1
       (.I0(max_i[15]),
        .I1(counter_i[15]),
        .O(max_acq_s0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    max_acq_s0_carry__0_i_2
       (.I0(max_i[14]),
        .I1(counter_i[14]),
        .I2(max_i[13]),
        .I3(counter_i[13]),
        .I4(counter_i[12]),
        .I5(max_i[12]),
        .O(max_acq_s0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    max_acq_s0_carry_i_1
       (.I0(max_i[11]),
        .I1(counter_i[11]),
        .I2(max_i[10]),
        .I3(counter_i[10]),
        .I4(counter_i[9]),
        .I5(max_i[9]),
        .O(max_acq_s0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    max_acq_s0_carry_i_2
       (.I0(max_i[8]),
        .I1(counter_i[8]),
        .I2(max_i[7]),
        .I3(counter_i[7]),
        .I4(counter_i[6]),
        .I5(max_i[6]),
        .O(max_acq_s0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    max_acq_s0_carry_i_3
       (.I0(max_i[5]),
        .I1(counter_i[5]),
        .I2(max_i[4]),
        .I3(counter_i[4]),
        .I4(counter_i[3]),
        .I5(max_i[3]),
        .O(max_acq_s0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    max_acq_s0_carry_i_4
       (.I0(max_i[2]),
        .I1(counter_i[2]),
        .I2(max_i[1]),
        .I3(counter_i[1]),
        .I4(counter_i[0]),
        .I5(max_i[0]),
        .O(max_acq_s0_carry_i_4_n_0));
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
