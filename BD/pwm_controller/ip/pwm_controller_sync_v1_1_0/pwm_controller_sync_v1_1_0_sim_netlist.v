// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Tue Apr 11 09:59:24 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_sync_v1_1_0 -prefix
//               pwm_controller_sync_v1_1_0_ pwm_controller_sync_v1_1_0_sim_netlist.v
// Design      : pwm_controller_sync_v1_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_sync_v1_1_0,sync_v1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "sync_v1,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_sync_v1_1_0
   (counter_i,
    delay_i,
    shift_i,
    mask_i,
    shifted_d,
    trunc_d,
    trigger_o);
  input [15:0]counter_i;
  input [8:0]delay_i;
  input [3:0]shift_i;
  input [15:0]mask_i;
  output [15:0]shifted_d;
  output [15:0]trunc_d;
  output trigger_o;

  wire [15:0]counter_i;
  wire [8:0]delay_i;
  wire [15:0]mask_i;
  wire [3:0]shift_i;
  wire [15:0]shifted_d;
  wire trigger_o;
  wire [15:0]trunc_d;

  pwm_controller_sync_v1_1_0_sync_v1 U0
       (.counter_i(counter_i),
        .delay_i(delay_i),
        .mask_i(mask_i),
        .shift_i(shift_i),
        .shifted_d(shifted_d),
        .trigger_o(trigger_o),
        .trunc_d(trunc_d));
endmodule

module pwm_controller_sync_v1_1_0_sync_v1
   (trunc_d,
    shifted_d,
    trigger_o,
    counter_i,
    delay_i,
    mask_i,
    shift_i);
  output [15:0]trunc_d;
  output [15:0]shifted_d;
  output trigger_o;
  input [15:0]counter_i;
  input [8:0]delay_i;
  input [15:0]mask_i;
  input [3:0]shift_i;

  wire [15:0]counter_i;
  wire [8:0]delay_i;
  wire [15:0]delayed_s;
  wire delayed_s_carry__0_i_1_n_0;
  wire delayed_s_carry__0_i_2_n_0;
  wire delayed_s_carry__0_i_3_n_0;
  wire delayed_s_carry__0_i_4_n_0;
  wire delayed_s_carry__0_n_0;
  wire delayed_s_carry__0_n_1;
  wire delayed_s_carry__0_n_2;
  wire delayed_s_carry__0_n_3;
  wire delayed_s_carry__1_i_1_n_0;
  wire delayed_s_carry__1_i_2_n_0;
  wire delayed_s_carry__1_i_3_n_0;
  wire delayed_s_carry__1_i_4_n_0;
  wire delayed_s_carry__1_n_0;
  wire delayed_s_carry__1_n_1;
  wire delayed_s_carry__1_n_2;
  wire delayed_s_carry__1_n_3;
  wire delayed_s_carry__2_i_1_n_0;
  wire delayed_s_carry__2_i_2_n_0;
  wire delayed_s_carry__2_i_3_n_0;
  wire delayed_s_carry__2_i_4_n_0;
  wire delayed_s_carry__2_n_1;
  wire delayed_s_carry__2_n_2;
  wire delayed_s_carry__2_n_3;
  wire delayed_s_carry_i_1_n_0;
  wire delayed_s_carry_i_2_n_0;
  wire delayed_s_carry_i_3_n_0;
  wire delayed_s_carry_i_4_n_0;
  wire delayed_s_carry_n_0;
  wire delayed_s_carry_n_1;
  wire delayed_s_carry_n_2;
  wire delayed_s_carry_n_3;
  wire [15:0]mask_i;
  wire [3:0]shift_i;
  wire [15:0]shifted_d;
  wire \shifted_d[10]_INST_0_i_1_n_0 ;
  wire \shifted_d[11]_INST_0_i_1_n_0 ;
  wire \shifted_d[12]_INST_0_i_1_n_0 ;
  wire \shifted_d[13]_INST_0_i_1_n_0 ;
  wire \shifted_d[14]_INST_0_i_1_n_0 ;
  wire \shifted_d[15]_INST_0_i_1_n_0 ;
  wire \shifted_d[15]_INST_0_i_2_n_0 ;
  wire \shifted_d[15]_INST_0_i_3_n_0 ;
  wire \shifted_d[15]_INST_0_i_4_n_0 ;
  wire \shifted_d[3]_INST_0_i_1_n_0 ;
  wire \shifted_d[4]_INST_0_i_1_n_0 ;
  wire \shifted_d[5]_INST_0_i_1_n_0 ;
  wire \shifted_d[6]_INST_0_i_1_n_0 ;
  wire \shifted_d[6]_INST_0_i_2_n_0 ;
  wire \shifted_d[7]_INST_0_i_1_n_0 ;
  wire \shifted_d[8]_INST_0_i_1_n_0 ;
  wire \shifted_d[9]_INST_0_i_1_n_0 ;
  wire trigger_o;
  wire trigger_o_INST_0_i_1_n_0;
  wire trigger_o_INST_0_i_2_n_0;
  wire trigger_o_INST_0_i_3_n_0;
  wire trigger_o_INST_0_i_4_n_0;
  wire trigger_o_INST_0_i_5_n_0;
  wire trigger_o_INST_0_i_6_n_0;
  wire trigger_o_INST_0_i_7_n_0;
  wire [15:0]trunc_d;
  wire \trunc_d[1]_INST_0_i_1_n_0 ;
  wire \trunc_d[2]_INST_0_i_1_n_0 ;
  wire [3:3]NLW_delayed_s_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delayed_s_carry
       (.CI(1'b0),
        .CO({delayed_s_carry_n_0,delayed_s_carry_n_1,delayed_s_carry_n_2,delayed_s_carry_n_3}),
        .CYINIT(1'b1),
        .DI(counter_i[3:0]),
        .O(delayed_s[3:0]),
        .S({delayed_s_carry_i_1_n_0,delayed_s_carry_i_2_n_0,delayed_s_carry_i_3_n_0,delayed_s_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delayed_s_carry__0
       (.CI(delayed_s_carry_n_0),
        .CO({delayed_s_carry__0_n_0,delayed_s_carry__0_n_1,delayed_s_carry__0_n_2,delayed_s_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter_i[7:4]),
        .O(delayed_s[7:4]),
        .S({delayed_s_carry__0_i_1_n_0,delayed_s_carry__0_i_2_n_0,delayed_s_carry__0_i_3_n_0,delayed_s_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry__0_i_1
       (.I0(counter_i[7]),
        .I1(delay_i[7]),
        .O(delayed_s_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry__0_i_2
       (.I0(counter_i[6]),
        .I1(delay_i[6]),
        .O(delayed_s_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry__0_i_3
       (.I0(counter_i[5]),
        .I1(delay_i[5]),
        .O(delayed_s_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry__0_i_4
       (.I0(counter_i[4]),
        .I1(delay_i[4]),
        .O(delayed_s_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delayed_s_carry__1
       (.CI(delayed_s_carry__0_n_0),
        .CO({delayed_s_carry__1_n_0,delayed_s_carry__1_n_1,delayed_s_carry__1_n_2,delayed_s_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter_i[11:8]),
        .O(delayed_s[11:8]),
        .S({delayed_s_carry__1_i_1_n_0,delayed_s_carry__1_i_2_n_0,delayed_s_carry__1_i_3_n_0,delayed_s_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__1_i_1
       (.I0(counter_i[11]),
        .O(delayed_s_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__1_i_2
       (.I0(counter_i[10]),
        .O(delayed_s_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__1_i_3
       (.I0(counter_i[9]),
        .O(delayed_s_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry__1_i_4
       (.I0(counter_i[8]),
        .I1(delay_i[8]),
        .O(delayed_s_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delayed_s_carry__2
       (.CI(delayed_s_carry__1_n_0),
        .CO({NLW_delayed_s_carry__2_CO_UNCONNECTED[3],delayed_s_carry__2_n_1,delayed_s_carry__2_n_2,delayed_s_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,counter_i[14:12]}),
        .O(delayed_s[15:12]),
        .S({delayed_s_carry__2_i_1_n_0,delayed_s_carry__2_i_2_n_0,delayed_s_carry__2_i_3_n_0,delayed_s_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__2_i_1
       (.I0(counter_i[15]),
        .O(delayed_s_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__2_i_2
       (.I0(counter_i[14]),
        .O(delayed_s_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__2_i_3
       (.I0(counter_i[13]),
        .O(delayed_s_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delayed_s_carry__2_i_4
       (.I0(counter_i[12]),
        .O(delayed_s_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry_i_1
       (.I0(counter_i[3]),
        .I1(delay_i[3]),
        .O(delayed_s_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry_i_2
       (.I0(counter_i[2]),
        .I1(delay_i[2]),
        .O(delayed_s_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry_i_3
       (.I0(counter_i[1]),
        .I1(delay_i[1]),
        .O(delayed_s_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    delayed_s_carry_i_4
       (.I0(counter_i[0]),
        .I1(delay_i[0]),
        .O(delayed_s_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    \shifted_d[0]_INST_0 
       (.I0(shift_i[1]),
        .I1(shift_i[3]),
        .I2(delayed_s[0]),
        .I3(shift_i[2]),
        .I4(shift_i[0]),
        .O(shifted_d[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[10]_INST_0 
       (.I0(\shifted_d[10]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[12]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[11]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[13]_INST_0_i_1_n_0 ),
        .O(shifted_d[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \shifted_d[10]_INST_0_i_1 
       (.I0(delayed_s[3]),
        .I1(shift_i[2]),
        .I2(delayed_s[7]),
        .I3(shift_i[3]),
        .O(\shifted_d[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[11]_INST_0 
       (.I0(\shifted_d[11]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[13]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[12]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[14]_INST_0_i_1_n_0 ),
        .O(shifted_d[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0F00ACAC)) 
    \shifted_d[11]_INST_0_i_1 
       (.I0(delayed_s[0]),
        .I1(delayed_s[8]),
        .I2(shift_i[3]),
        .I3(delayed_s[4]),
        .I4(shift_i[2]),
        .O(\shifted_d[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[12]_INST_0 
       (.I0(\shifted_d[12]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[14]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[13]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[15]_INST_0_i_1_n_0 ),
        .O(shifted_d[12]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shifted_d[12]_INST_0_i_1 
       (.I0(delayed_s[5]),
        .I1(shift_i[2]),
        .I2(delayed_s[1]),
        .I3(shift_i[3]),
        .I4(delayed_s[9]),
        .O(\shifted_d[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[13]_INST_0 
       (.I0(\shifted_d[13]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[15]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[14]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[15]_INST_0_i_3_n_0 ),
        .O(shifted_d[13]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shifted_d[13]_INST_0_i_1 
       (.I0(delayed_s[6]),
        .I1(shift_i[2]),
        .I2(delayed_s[2]),
        .I3(shift_i[3]),
        .I4(delayed_s[10]),
        .O(\shifted_d[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[14]_INST_0 
       (.I0(\shifted_d[14]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[15]_INST_0_i_3_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[15]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[15]_INST_0_i_2_n_0 ),
        .O(shifted_d[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \shifted_d[14]_INST_0_i_1 
       (.I0(delayed_s[7]),
        .I1(shift_i[2]),
        .I2(delayed_s[3]),
        .I3(shift_i[3]),
        .I4(delayed_s[11]),
        .O(\shifted_d[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[15]_INST_0 
       (.I0(\shifted_d[15]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[15]_INST_0_i_2_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[15]_INST_0_i_3_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[15]_INST_0_i_4_n_0 ),
        .O(shifted_d[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[15]_INST_0_i_1 
       (.I0(delayed_s[0]),
        .I1(delayed_s[8]),
        .I2(shift_i[2]),
        .I3(delayed_s[4]),
        .I4(shift_i[3]),
        .I5(delayed_s[12]),
        .O(\shifted_d[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[15]_INST_0_i_2 
       (.I0(delayed_s[2]),
        .I1(delayed_s[10]),
        .I2(shift_i[2]),
        .I3(delayed_s[6]),
        .I4(shift_i[3]),
        .I5(delayed_s[14]),
        .O(\shifted_d[15]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[15]_INST_0_i_3 
       (.I0(delayed_s[1]),
        .I1(delayed_s[9]),
        .I2(shift_i[2]),
        .I3(delayed_s[5]),
        .I4(shift_i[3]),
        .I5(delayed_s[13]),
        .O(\shifted_d[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[15]_INST_0_i_4 
       (.I0(delayed_s[3]),
        .I1(delayed_s[11]),
        .I2(shift_i[2]),
        .I3(delayed_s[7]),
        .I4(shift_i[3]),
        .I5(delayed_s[15]),
        .O(\shifted_d[15]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000003100000020)) 
    \shifted_d[1]_INST_0 
       (.I0(shift_i[0]),
        .I1(shift_i[2]),
        .I2(delayed_s[0]),
        .I3(shift_i[3]),
        .I4(shift_i[1]),
        .I5(delayed_s[1]),
        .O(shifted_d[1]));
  LUT6 #(
    .INIT(64'h11111111111D1111)) 
    \shifted_d[2]_INST_0 
       (.I0(\shifted_d[3]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(shift_i[2]),
        .I3(shift_i[3]),
        .I4(delayed_s[1]),
        .I5(shift_i[1]),
        .O(shifted_d[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \shifted_d[3]_INST_0 
       (.I0(\shifted_d[4]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\shifted_d[3]_INST_0_i_1_n_0 ),
        .O(shifted_d[3]));
  LUT5 #(
    .INIT(32'hFFFFF4F7)) 
    \shifted_d[3]_INST_0_i_1 
       (.I0(delayed_s[0]),
        .I1(shift_i[1]),
        .I2(shift_i[2]),
        .I3(delayed_s[2]),
        .I4(shift_i[3]),
        .O(\shifted_d[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \shifted_d[4]_INST_0 
       (.I0(\shifted_d[5]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\shifted_d[4]_INST_0_i_1_n_0 ),
        .O(shifted_d[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \shifted_d[4]_INST_0_i_1 
       (.I0(delayed_s[1]),
        .I1(shift_i[1]),
        .I2(shift_i[2]),
        .I3(shift_i[3]),
        .I4(delayed_s[3]),
        .O(\shifted_d[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \shifted_d[5]_INST_0 
       (.I0(\shifted_d[6]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\shifted_d[5]_INST_0_i_1_n_0 ),
        .O(shifted_d[5]));
  LUT6 #(
    .INIT(64'hFFFFCF44FFFFCF77)) 
    \shifted_d[5]_INST_0_i_1 
       (.I0(delayed_s[2]),
        .I1(shift_i[1]),
        .I2(delayed_s[0]),
        .I3(shift_i[2]),
        .I4(shift_i[3]),
        .I5(delayed_s[4]),
        .O(\shifted_d[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h47774744)) 
    \shifted_d[6]_INST_0 
       (.I0(\shifted_d[6]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\shifted_d[6]_INST_0_i_2_n_0 ),
        .I3(shift_i[1]),
        .I4(\shifted_d[9]_INST_0_i_1_n_0 ),
        .O(shifted_d[6]));
  LUT6 #(
    .INIT(64'hFFFFF5F5FFFF303F)) 
    \shifted_d[6]_INST_0_i_1 
       (.I0(delayed_s[3]),
        .I1(delayed_s[1]),
        .I2(shift_i[2]),
        .I3(delayed_s[5]),
        .I4(shift_i[3]),
        .I5(shift_i[1]),
        .O(\shifted_d[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF4F7)) 
    \shifted_d[6]_INST_0_i_2 
       (.I0(delayed_s[0]),
        .I1(shift_i[2]),
        .I2(shift_i[3]),
        .I3(delayed_s[4]),
        .O(\shifted_d[6]_INST_0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \shifted_d[7]_INST_0 
       (.I0(\shifted_d[7]_INST_0_i_1_n_0 ),
        .O(shifted_d[7]));
  LUT6 #(
    .INIT(64'hA0AFA0AF30303F3F)) 
    \shifted_d[7]_INST_0_i_1 
       (.I0(\shifted_d[6]_INST_0_i_2_n_0 ),
        .I1(\shifted_d[9]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[8]_INST_0_i_1_n_0 ),
        .I4(\shifted_d[10]_INST_0_i_1_n_0 ),
        .I5(shift_i[1]),
        .O(\shifted_d[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00AAAACCCC)) 
    \shifted_d[8]_INST_0 
       (.I0(\shifted_d[9]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[11]_INST_0_i_1_n_0 ),
        .I2(\shifted_d[8]_INST_0_i_1_n_0 ),
        .I3(\shifted_d[10]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(shift_i[0]),
        .O(shifted_d[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \shifted_d[8]_INST_0_i_1 
       (.I0(delayed_s[1]),
        .I1(shift_i[2]),
        .I2(delayed_s[5]),
        .I3(shift_i[3]),
        .O(\shifted_d[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shifted_d[9]_INST_0 
       (.I0(\shifted_d[9]_INST_0_i_1_n_0 ),
        .I1(\shifted_d[11]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[10]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\shifted_d[12]_INST_0_i_1_n_0 ),
        .O(shifted_d[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3022)) 
    \shifted_d[9]_INST_0_i_1 
       (.I0(delayed_s[6]),
        .I1(shift_i[3]),
        .I2(delayed_s[2]),
        .I3(shift_i[2]),
        .O(\shifted_d[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    trigger_o_INST_0
       (.I0(trigger_o_INST_0_i_1_n_0),
        .I1(trigger_o_INST_0_i_2_n_0),
        .I2(trigger_o_INST_0_i_3_n_0),
        .I3(trigger_o_INST_0_i_4_n_0),
        .I4(trunc_d[11]),
        .I5(trunc_d[13]),
        .O(trigger_o));
  LUT6 #(
    .INIT(64'h0000077707770777)) 
    trigger_o_INST_0_i_1
       (.I0(shifted_d[8]),
        .I1(mask_i[8]),
        .I2(mask_i[14]),
        .I3(shifted_d[14]),
        .I4(mask_i[15]),
        .I5(shifted_d[15]),
        .O(trigger_o_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    trigger_o_INST_0_i_2
       (.I0(trunc_d[6]),
        .I1(mask_i[7]),
        .I2(\shifted_d[7]_INST_0_i_1_n_0 ),
        .I3(trunc_d[4]),
        .I4(trunc_d[5]),
        .O(trigger_o_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    trigger_o_INST_0_i_3
       (.I0(shifted_d[12]),
        .I1(mask_i[12]),
        .I2(trunc_d[3]),
        .I3(trunc_d[2]),
        .I4(trunc_d[1]),
        .I5(trunc_d[0]),
        .O(trigger_o_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFCFFF088CC880088)) 
    trigger_o_INST_0_i_4
       (.I0(trigger_o_INST_0_i_5_n_0),
        .I1(mask_i[10]),
        .I2(trigger_o_INST_0_i_6_n_0),
        .I3(shift_i[0]),
        .I4(trigger_o_INST_0_i_7_n_0),
        .I5(mask_i[9]),
        .O(trigger_o_INST_0_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    trigger_o_INST_0_i_5
       (.I0(\shifted_d[11]_INST_0_i_1_n_0 ),
        .I1(shift_i[1]),
        .I2(\shifted_d[13]_INST_0_i_1_n_0 ),
        .O(trigger_o_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h3022FFFF30220000)) 
    trigger_o_INST_0_i_6
       (.I0(delayed_s[6]),
        .I1(shift_i[3]),
        .I2(delayed_s[2]),
        .I3(shift_i[2]),
        .I4(shift_i[1]),
        .I5(\shifted_d[11]_INST_0_i_1_n_0 ),
        .O(trigger_o_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    trigger_o_INST_0_i_7
       (.I0(delayed_s[3]),
        .I1(shift_i[2]),
        .I2(delayed_s[7]),
        .I3(shift_i[3]),
        .I4(shift_i[1]),
        .I5(\shifted_d[12]_INST_0_i_1_n_0 ),
        .O(trigger_o_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \trunc_d[0]_INST_0 
       (.I0(mask_i[0]),
        .I1(shift_i[1]),
        .I2(shift_i[3]),
        .I3(delayed_s[0]),
        .I4(shift_i[2]),
        .I5(shift_i[0]),
        .O(trunc_d[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[10]_INST_0 
       (.I0(mask_i[10]),
        .I1(shifted_d[10]),
        .O(trunc_d[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[11]_INST_0 
       (.I0(mask_i[11]),
        .I1(shifted_d[11]),
        .O(trunc_d[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[12]_INST_0 
       (.I0(mask_i[12]),
        .I1(shifted_d[12]),
        .O(trunc_d[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[13]_INST_0 
       (.I0(mask_i[13]),
        .I1(shifted_d[13]),
        .O(trunc_d[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[14]_INST_0 
       (.I0(mask_i[14]),
        .I1(shifted_d[14]),
        .O(trunc_d[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[15]_INST_0 
       (.I0(mask_i[15]),
        .I1(shifted_d[15]),
        .O(trunc_d[15]));
  LUT2 #(
    .INIT(4'h2)) 
    \trunc_d[1]_INST_0 
       (.I0(mask_i[1]),
        .I1(\trunc_d[1]_INST_0_i_1_n_0 ),
        .O(trunc_d[1]));
  LUT6 #(
    .INIT(64'hFFFFFCFFFFFFFDFD)) 
    \trunc_d[1]_INST_0_i_1 
       (.I0(delayed_s[1]),
        .I1(shift_i[1]),
        .I2(shift_i[3]),
        .I3(delayed_s[0]),
        .I4(shift_i[2]),
        .I5(shift_i[0]),
        .O(\trunc_d[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h02A2)) 
    \trunc_d[2]_INST_0 
       (.I0(mask_i[2]),
        .I1(\shifted_d[3]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\trunc_d[2]_INST_0_i_1_n_0 ),
        .O(trunc_d[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \trunc_d[2]_INST_0_i_1 
       (.I0(shift_i[1]),
        .I1(delayed_s[1]),
        .I2(shift_i[3]),
        .I3(shift_i[2]),
        .O(\trunc_d[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \trunc_d[3]_INST_0 
       (.I0(mask_i[3]),
        .I1(\shifted_d[4]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[3]_INST_0_i_1_n_0 ),
        .O(trunc_d[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \trunc_d[4]_INST_0 
       (.I0(mask_i[4]),
        .I1(\shifted_d[5]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[4]_INST_0_i_1_n_0 ),
        .O(trunc_d[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \trunc_d[5]_INST_0 
       (.I0(mask_i[5]),
        .I1(\shifted_d[6]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\shifted_d[5]_INST_0_i_1_n_0 ),
        .O(trunc_d[5]));
  LUT6 #(
    .INIT(64'h000008A8AAAA08A8)) 
    \trunc_d[6]_INST_0 
       (.I0(mask_i[6]),
        .I1(\shifted_d[9]_INST_0_i_1_n_0 ),
        .I2(shift_i[1]),
        .I3(\shifted_d[6]_INST_0_i_2_n_0 ),
        .I4(shift_i[0]),
        .I5(\shifted_d[6]_INST_0_i_1_n_0 ),
        .O(trunc_d[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \trunc_d[7]_INST_0 
       (.I0(mask_i[7]),
        .I1(\shifted_d[7]_INST_0_i_1_n_0 ),
        .O(trunc_d[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[8]_INST_0 
       (.I0(mask_i[8]),
        .I1(shifted_d[8]),
        .O(trunc_d[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \trunc_d[9]_INST_0 
       (.I0(mask_i[9]),
        .I1(shifted_d[9]),
        .O(trunc_d[9]));
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
