// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Jun 22 02:14:15 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/antonio/github_prj/pwm-ctrl/BD/pwm_controller/ip/pwm_controller_shiftprog_signed_0_0/pwm_controller_shiftprog_signed_0_0_sim_netlist.v
// Design      : pwm_controller_shiftprog_signed_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_shiftprog_signed_0_0,shiftprog_signed,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "shiftprog_signed,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_shiftprog_signed_0_0
   (data_i,
    shift_i,
    data_o);
  input [34:0]data_i;
  input [3:0]shift_i;
  output [34:0]data_o;

  wire [34:0]data_i;
  wire [33:0]\^data_o ;
  wire [3:0]shift_i;

  assign data_o[34] = data_i[34];
  assign data_o[33:0] = \^data_o [33:0];
  pwm_controller_shiftprog_signed_0_0_shiftprog_signed U0
       (.data_i(data_i),
        .data_o(\^data_o ),
        .shift_i(shift_i));
endmodule

(* ORIG_REF_NAME = "shiftprog_signed" *) 
module pwm_controller_shiftprog_signed_0_0_shiftprog_signed
   (data_o,
    shift_i,
    data_i);
  output [33:0]data_o;
  input [3:0]shift_i;
  input [34:0]data_i;

  wire [34:0]data_i;
  wire [33:0]data_o;
  wire \data_o[0]_INST_0_i_1_n_0 ;
  wire \data_o[10]_INST_0_i_1_n_0 ;
  wire \data_o[11]_INST_0_i_1_n_0 ;
  wire \data_o[12]_INST_0_i_1_n_0 ;
  wire \data_o[13]_INST_0_i_1_n_0 ;
  wire \data_o[14]_INST_0_i_1_n_0 ;
  wire \data_o[15]_INST_0_i_1_n_0 ;
  wire \data_o[16]_INST_0_i_1_n_0 ;
  wire \data_o[17]_INST_0_i_1_n_0 ;
  wire \data_o[18]_INST_0_i_1_n_0 ;
  wire \data_o[19]_INST_0_i_1_n_0 ;
  wire \data_o[1]_INST_0_i_1_n_0 ;
  wire \data_o[20]_INST_0_i_1_n_0 ;
  wire \data_o[21]_INST_0_i_1_n_0 ;
  wire \data_o[22]_INST_0_i_1_n_0 ;
  wire \data_o[23]_INST_0_i_1_n_0 ;
  wire \data_o[24]_INST_0_i_1_n_0 ;
  wire \data_o[25]_INST_0_i_1_n_0 ;
  wire \data_o[26]_INST_0_i_1_n_0 ;
  wire \data_o[27]_INST_0_i_1_n_0 ;
  wire \data_o[28]_INST_0_i_1_n_0 ;
  wire \data_o[28]_INST_0_i_2_n_0 ;
  wire \data_o[29]_INST_0_i_1_n_0 ;
  wire \data_o[29]_INST_0_i_2_n_0 ;
  wire \data_o[2]_INST_0_i_1_n_0 ;
  wire \data_o[30]_INST_0_i_1_n_0 ;
  wire \data_o[31]_INST_0_i_1_n_0 ;
  wire \data_o[32]_INST_0_i_1_n_0 ;
  wire \data_o[32]_INST_0_i_2_n_0 ;
  wire \data_o[3]_INST_0_i_1_n_0 ;
  wire \data_o[4]_INST_0_i_1_n_0 ;
  wire \data_o[5]_INST_0_i_1_n_0 ;
  wire \data_o[6]_INST_0_i_1_n_0 ;
  wire \data_o[7]_INST_0_i_1_n_0 ;
  wire \data_o[8]_INST_0_i_1_n_0 ;
  wire \data_o[9]_INST_0_i_1_n_0 ;
  wire [3:0]shift_i;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[0]_INST_0 
       (.I0(\data_o[3]_INST_0_i_1_n_0 ),
        .I1(\data_o[1]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[2]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[0]_INST_0_i_1_n_0 ),
        .O(data_o[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[0]_INST_0_i_1 
       (.I0(data_i[12]),
        .I1(data_i[4]),
        .I2(shift_i[2]),
        .I3(data_i[8]),
        .I4(shift_i[3]),
        .I5(data_i[0]),
        .O(\data_o[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[10]_INST_0 
       (.I0(\data_o[13]_INST_0_i_1_n_0 ),
        .I1(\data_o[11]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[12]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[10]_INST_0_i_1_n_0 ),
        .O(data_o[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[10]_INST_0_i_1 
       (.I0(data_i[22]),
        .I1(data_i[14]),
        .I2(shift_i[2]),
        .I3(data_i[18]),
        .I4(shift_i[3]),
        .I5(data_i[10]),
        .O(\data_o[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[11]_INST_0 
       (.I0(\data_o[14]_INST_0_i_1_n_0 ),
        .I1(\data_o[12]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[13]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[11]_INST_0_i_1_n_0 ),
        .O(data_o[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[11]_INST_0_i_1 
       (.I0(data_i[23]),
        .I1(data_i[15]),
        .I2(shift_i[2]),
        .I3(data_i[19]),
        .I4(shift_i[3]),
        .I5(data_i[11]),
        .O(\data_o[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[12]_INST_0 
       (.I0(\data_o[15]_INST_0_i_1_n_0 ),
        .I1(\data_o[13]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[14]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[12]_INST_0_i_1_n_0 ),
        .O(data_o[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[12]_INST_0_i_1 
       (.I0(data_i[24]),
        .I1(data_i[16]),
        .I2(shift_i[2]),
        .I3(data_i[20]),
        .I4(shift_i[3]),
        .I5(data_i[12]),
        .O(\data_o[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[13]_INST_0 
       (.I0(\data_o[16]_INST_0_i_1_n_0 ),
        .I1(\data_o[14]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[15]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[13]_INST_0_i_1_n_0 ),
        .O(data_o[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[13]_INST_0_i_1 
       (.I0(data_i[25]),
        .I1(data_i[17]),
        .I2(shift_i[2]),
        .I3(data_i[21]),
        .I4(shift_i[3]),
        .I5(data_i[13]),
        .O(\data_o[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[14]_INST_0 
       (.I0(\data_o[17]_INST_0_i_1_n_0 ),
        .I1(\data_o[15]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[16]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[14]_INST_0_i_1_n_0 ),
        .O(data_o[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[14]_INST_0_i_1 
       (.I0(data_i[26]),
        .I1(data_i[18]),
        .I2(shift_i[2]),
        .I3(data_i[22]),
        .I4(shift_i[3]),
        .I5(data_i[14]),
        .O(\data_o[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[15]_INST_0 
       (.I0(\data_o[18]_INST_0_i_1_n_0 ),
        .I1(\data_o[16]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[17]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[15]_INST_0_i_1_n_0 ),
        .O(data_o[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[15]_INST_0_i_1 
       (.I0(data_i[27]),
        .I1(data_i[19]),
        .I2(shift_i[2]),
        .I3(data_i[23]),
        .I4(shift_i[3]),
        .I5(data_i[15]),
        .O(\data_o[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[16]_INST_0 
       (.I0(\data_o[19]_INST_0_i_1_n_0 ),
        .I1(\data_o[17]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[18]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[16]_INST_0_i_1_n_0 ),
        .O(data_o[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[16]_INST_0_i_1 
       (.I0(data_i[28]),
        .I1(data_i[20]),
        .I2(shift_i[2]),
        .I3(data_i[24]),
        .I4(shift_i[3]),
        .I5(data_i[16]),
        .O(\data_o[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[17]_INST_0 
       (.I0(\data_o[20]_INST_0_i_1_n_0 ),
        .I1(\data_o[18]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[19]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[17]_INST_0_i_1_n_0 ),
        .O(data_o[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[17]_INST_0_i_1 
       (.I0(data_i[29]),
        .I1(data_i[21]),
        .I2(shift_i[2]),
        .I3(data_i[25]),
        .I4(shift_i[3]),
        .I5(data_i[17]),
        .O(\data_o[17]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[18]_INST_0 
       (.I0(\data_o[21]_INST_0_i_1_n_0 ),
        .I1(\data_o[19]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[20]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[18]_INST_0_i_1_n_0 ),
        .O(data_o[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[18]_INST_0_i_1 
       (.I0(data_i[30]),
        .I1(data_i[22]),
        .I2(shift_i[2]),
        .I3(data_i[26]),
        .I4(shift_i[3]),
        .I5(data_i[18]),
        .O(\data_o[18]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[19]_INST_0 
       (.I0(\data_o[22]_INST_0_i_1_n_0 ),
        .I1(\data_o[20]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[21]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[19]_INST_0_i_1_n_0 ),
        .O(data_o[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[19]_INST_0_i_1 
       (.I0(data_i[31]),
        .I1(data_i[23]),
        .I2(shift_i[2]),
        .I3(data_i[27]),
        .I4(shift_i[3]),
        .I5(data_i[19]),
        .O(\data_o[19]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[1]_INST_0 
       (.I0(\data_o[4]_INST_0_i_1_n_0 ),
        .I1(\data_o[2]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[3]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[1]_INST_0_i_1_n_0 ),
        .O(data_o[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[1]_INST_0_i_1 
       (.I0(data_i[13]),
        .I1(data_i[5]),
        .I2(shift_i[2]),
        .I3(data_i[9]),
        .I4(shift_i[3]),
        .I5(data_i[1]),
        .O(\data_o[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[20]_INST_0 
       (.I0(\data_o[23]_INST_0_i_1_n_0 ),
        .I1(\data_o[21]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[22]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[20]_INST_0_i_1_n_0 ),
        .O(data_o[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[20]_INST_0_i_1 
       (.I0(data_i[32]),
        .I1(data_i[24]),
        .I2(shift_i[2]),
        .I3(data_i[28]),
        .I4(shift_i[3]),
        .I5(data_i[20]),
        .O(\data_o[20]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[21]_INST_0 
       (.I0(\data_o[24]_INST_0_i_1_n_0 ),
        .I1(\data_o[22]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[23]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[21]_INST_0_i_1_n_0 ),
        .O(data_o[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[21]_INST_0_i_1 
       (.I0(data_i[33]),
        .I1(data_i[25]),
        .I2(shift_i[2]),
        .I3(data_i[29]),
        .I4(shift_i[3]),
        .I5(data_i[21]),
        .O(\data_o[21]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[22]_INST_0 
       (.I0(\data_o[25]_INST_0_i_1_n_0 ),
        .I1(\data_o[23]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[24]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[22]_INST_0_i_1_n_0 ),
        .O(data_o[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[22]_INST_0_i_1 
       (.I0(data_i[34]),
        .I1(data_i[26]),
        .I2(shift_i[2]),
        .I3(data_i[30]),
        .I4(shift_i[3]),
        .I5(data_i[22]),
        .O(\data_o[22]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[23]_INST_0 
       (.I0(\data_o[26]_INST_0_i_1_n_0 ),
        .I1(\data_o[24]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[25]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[23]_INST_0_i_1_n_0 ),
        .O(data_o[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[23]_INST_0_i_1 
       (.I0(data_i[34]),
        .I1(data_i[27]),
        .I2(shift_i[2]),
        .I3(data_i[31]),
        .I4(shift_i[3]),
        .I5(data_i[23]),
        .O(\data_o[23]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[24]_INST_0 
       (.I0(\data_o[27]_INST_0_i_1_n_0 ),
        .I1(\data_o[25]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[26]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[24]_INST_0_i_1_n_0 ),
        .O(data_o[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[24]_INST_0_i_1 
       (.I0(data_i[34]),
        .I1(data_i[28]),
        .I2(shift_i[2]),
        .I3(data_i[32]),
        .I4(shift_i[3]),
        .I5(data_i[24]),
        .O(\data_o[24]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[25]_INST_0 
       (.I0(\data_o[28]_INST_0_i_2_n_0 ),
        .I1(\data_o[26]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[27]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[25]_INST_0_i_1_n_0 ),
        .O(data_o[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[25]_INST_0_i_1 
       (.I0(data_i[34]),
        .I1(data_i[29]),
        .I2(shift_i[2]),
        .I3(data_i[33]),
        .I4(shift_i[3]),
        .I5(data_i[25]),
        .O(\data_o[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[26]_INST_0 
       (.I0(\data_o[29]_INST_0_i_2_n_0 ),
        .I1(\data_o[27]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[28]_INST_0_i_2_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[26]_INST_0_i_1_n_0 ),
        .O(data_o[26]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_o[26]_INST_0_i_1 
       (.I0(data_i[30]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[26]),
        .O(\data_o[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[27]_INST_0 
       (.I0(\data_o[28]_INST_0_i_1_n_0 ),
        .I1(\data_o[28]_INST_0_i_2_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[29]_INST_0_i_2_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[27]_INST_0_i_1_n_0 ),
        .O(data_o[27]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_o[27]_INST_0_i_1 
       (.I0(data_i[31]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[27]),
        .O(\data_o[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[28]_INST_0 
       (.I0(\data_o[29]_INST_0_i_1_n_0 ),
        .I1(\data_o[29]_INST_0_i_2_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[28]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[28]_INST_0_i_2_n_0 ),
        .O(data_o[28]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \data_o[28]_INST_0_i_1 
       (.I0(shift_i[2]),
        .I1(data_i[34]),
        .I2(shift_i[3]),
        .I3(data_i[30]),
        .O(\data_o[28]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_o[28]_INST_0_i_2 
       (.I0(data_i[32]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[28]),
        .O(\data_o[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_o[29]_INST_0 
       (.I0(\data_o[30]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\data_o[29]_INST_0_i_1_n_0 ),
        .I3(shift_i[1]),
        .I4(\data_o[29]_INST_0_i_2_n_0 ),
        .O(data_o[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \data_o[29]_INST_0_i_1 
       (.I0(shift_i[2]),
        .I1(data_i[34]),
        .I2(shift_i[3]),
        .I3(data_i[31]),
        .O(\data_o[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \data_o[29]_INST_0_i_2 
       (.I0(data_i[33]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[29]),
        .O(\data_o[29]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[2]_INST_0 
       (.I0(\data_o[5]_INST_0_i_1_n_0 ),
        .I1(\data_o[3]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[4]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[2]_INST_0_i_1_n_0 ),
        .O(data_o[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[2]_INST_0_i_1 
       (.I0(data_i[14]),
        .I1(data_i[6]),
        .I2(shift_i[2]),
        .I3(data_i[10]),
        .I4(shift_i[3]),
        .I5(data_i[2]),
        .O(\data_o[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[30]_INST_0 
       (.I0(\data_o[31]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\data_o[30]_INST_0_i_1_n_0 ),
        .O(data_o[30]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_o[30]_INST_0_i_1 
       (.I0(data_i[32]),
        .I1(shift_i[1]),
        .I2(shift_i[2]),
        .I3(data_i[34]),
        .I4(shift_i[3]),
        .I5(data_i[30]),
        .O(\data_o[30]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[31]_INST_0 
       (.I0(\data_o[32]_INST_0_i_2_n_0 ),
        .I1(shift_i[0]),
        .I2(\data_o[31]_INST_0_i_1_n_0 ),
        .O(data_o[31]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \data_o[31]_INST_0_i_1 
       (.I0(data_i[33]),
        .I1(shift_i[1]),
        .I2(shift_i[2]),
        .I3(data_i[34]),
        .I4(shift_i[3]),
        .I5(data_i[31]),
        .O(\data_o[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[32]_INST_0 
       (.I0(\data_o[32]_INST_0_i_1_n_0 ),
        .I1(shift_i[0]),
        .I2(\data_o[32]_INST_0_i_2_n_0 ),
        .O(data_o[32]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \data_o[32]_INST_0_i_1 
       (.I0(shift_i[1]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[33]),
        .O(\data_o[32]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \data_o[32]_INST_0_i_2 
       (.I0(shift_i[1]),
        .I1(shift_i[2]),
        .I2(data_i[34]),
        .I3(shift_i[3]),
        .I4(data_i[32]),
        .O(\data_o[32]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \data_o[33]_INST_0 
       (.I0(shift_i[0]),
        .I1(shift_i[1]),
        .I2(shift_i[2]),
        .I3(data_i[34]),
        .I4(shift_i[3]),
        .I5(data_i[33]),
        .O(data_o[33]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[3]_INST_0 
       (.I0(\data_o[6]_INST_0_i_1_n_0 ),
        .I1(\data_o[4]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[5]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[3]_INST_0_i_1_n_0 ),
        .O(data_o[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[3]_INST_0_i_1 
       (.I0(data_i[15]),
        .I1(data_i[7]),
        .I2(shift_i[2]),
        .I3(data_i[11]),
        .I4(shift_i[3]),
        .I5(data_i[3]),
        .O(\data_o[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[4]_INST_0 
       (.I0(\data_o[7]_INST_0_i_1_n_0 ),
        .I1(\data_o[5]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[6]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[4]_INST_0_i_1_n_0 ),
        .O(data_o[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[4]_INST_0_i_1 
       (.I0(data_i[16]),
        .I1(data_i[8]),
        .I2(shift_i[2]),
        .I3(data_i[12]),
        .I4(shift_i[3]),
        .I5(data_i[4]),
        .O(\data_o[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[5]_INST_0 
       (.I0(\data_o[8]_INST_0_i_1_n_0 ),
        .I1(\data_o[6]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[7]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[5]_INST_0_i_1_n_0 ),
        .O(data_o[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[5]_INST_0_i_1 
       (.I0(data_i[17]),
        .I1(data_i[9]),
        .I2(shift_i[2]),
        .I3(data_i[13]),
        .I4(shift_i[3]),
        .I5(data_i[5]),
        .O(\data_o[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[6]_INST_0 
       (.I0(\data_o[9]_INST_0_i_1_n_0 ),
        .I1(\data_o[7]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[8]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[6]_INST_0_i_1_n_0 ),
        .O(data_o[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[6]_INST_0_i_1 
       (.I0(data_i[18]),
        .I1(data_i[10]),
        .I2(shift_i[2]),
        .I3(data_i[14]),
        .I4(shift_i[3]),
        .I5(data_i[6]),
        .O(\data_o[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[7]_INST_0 
       (.I0(\data_o[10]_INST_0_i_1_n_0 ),
        .I1(\data_o[8]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[9]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[7]_INST_0_i_1_n_0 ),
        .O(data_o[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[7]_INST_0_i_1 
       (.I0(data_i[19]),
        .I1(data_i[11]),
        .I2(shift_i[2]),
        .I3(data_i[15]),
        .I4(shift_i[3]),
        .I5(data_i[7]),
        .O(\data_o[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[8]_INST_0 
       (.I0(\data_o[11]_INST_0_i_1_n_0 ),
        .I1(\data_o[9]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[10]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[8]_INST_0_i_1_n_0 ),
        .O(data_o[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[8]_INST_0_i_1 
       (.I0(data_i[20]),
        .I1(data_i[12]),
        .I2(shift_i[2]),
        .I3(data_i[16]),
        .I4(shift_i[3]),
        .I5(data_i[8]),
        .O(\data_o[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[9]_INST_0 
       (.I0(\data_o[12]_INST_0_i_1_n_0 ),
        .I1(\data_o[10]_INST_0_i_1_n_0 ),
        .I2(shift_i[0]),
        .I3(\data_o[11]_INST_0_i_1_n_0 ),
        .I4(shift_i[1]),
        .I5(\data_o[9]_INST_0_i_1_n_0 ),
        .O(data_o[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_o[9]_INST_0_i_1 
       (.I0(data_i[21]),
        .I1(data_i[13]),
        .I2(shift_i[2]),
        .I3(data_i[17]),
        .I4(shift_i[3]),
        .I5(data_i[9]),
        .O(\data_o[9]_INST_0_i_1_n_0 ));
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
