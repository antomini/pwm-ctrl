// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 31 13:13:27 2023
// Host        : Big-Fiok running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top pwm_controller_shiftarith_v0_0_0 -prefix
//               pwm_controller_shiftarith_v0_0_0_ pwm_controller_shiftarith_v0_0_0_sim_netlist.v
// Design      : pwm_controller_shiftarith_v0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "pwm_controller_shiftarith_v0_0_0,shiftarith_v0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "shiftarith_v0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module pwm_controller_shiftarith_v0_0_0
   (data_in,
    shift_in,
    sra_out);
  input [33:0]data_in;
  input [4:0]shift_in;
  output [33:0]sra_out;

  wire [33:0]data_in;
  wire [4:0]shift_in;
  wire [32:0]\^sra_out ;

  assign sra_out[33] = data_in[33];
  assign sra_out[32:0] = \^sra_out [32:0];
  pwm_controller_shiftarith_v0_0_0_shiftarith_v0 U0
       (.data_in(data_in),
        .shift_in(shift_in),
        .sra_out(\^sra_out ));
endmodule

module pwm_controller_shiftarith_v0_0_0_shiftarith_v0
   (sra_out,
    shift_in,
    data_in);
  output [32:0]sra_out;
  input [4:0]shift_in;
  input [33:0]data_in;

  wire [33:0]data_in;
  wire [4:0]shift_in;
  wire [32:0]sra_out;
  wire \sra_out[0]_INST_0_i_1_n_0 ;
  wire \sra_out[0]_INST_0_i_2_n_0 ;
  wire \sra_out[0]_INST_0_i_3_n_0 ;
  wire \sra_out[10]_INST_0_i_1_n_0 ;
  wire \sra_out[10]_INST_0_i_2_n_0 ;
  wire \sra_out[11]_INST_0_i_1_n_0 ;
  wire \sra_out[11]_INST_0_i_2_n_0 ;
  wire \sra_out[12]_INST_0_i_1_n_0 ;
  wire \sra_out[12]_INST_0_i_2_n_0 ;
  wire \sra_out[13]_INST_0_i_1_n_0 ;
  wire \sra_out[13]_INST_0_i_2_n_0 ;
  wire \sra_out[14]_INST_0_i_1_n_0 ;
  wire \sra_out[14]_INST_0_i_2_n_0 ;
  wire \sra_out[15]_INST_0_i_1_n_0 ;
  wire \sra_out[15]_INST_0_i_2_n_0 ;
  wire \sra_out[16]_INST_0_i_1_n_0 ;
  wire \sra_out[16]_INST_0_i_2_n_0 ;
  wire \sra_out[17]_INST_0_i_1_n_0 ;
  wire \sra_out[17]_INST_0_i_2_n_0 ;
  wire \sra_out[18]_INST_0_i_1_n_0 ;
  wire \sra_out[18]_INST_0_i_2_n_0 ;
  wire \sra_out[19]_INST_0_i_1_n_0 ;
  wire \sra_out[19]_INST_0_i_2_n_0 ;
  wire \sra_out[1]_INST_0_i_1_n_0 ;
  wire \sra_out[1]_INST_0_i_2_n_0 ;
  wire \sra_out[20]_INST_0_i_1_n_0 ;
  wire \sra_out[20]_INST_0_i_2_n_0 ;
  wire \sra_out[21]_INST_0_i_1_n_0 ;
  wire \sra_out[21]_INST_0_i_2_n_0 ;
  wire \sra_out[21]_INST_0_i_3_n_0 ;
  wire \sra_out[22]_INST_0_i_1_n_0 ;
  wire \sra_out[22]_INST_0_i_2_n_0 ;
  wire \sra_out[22]_INST_0_i_3_n_0 ;
  wire \sra_out[23]_INST_0_i_1_n_0 ;
  wire \sra_out[23]_INST_0_i_2_n_0 ;
  wire \sra_out[23]_INST_0_i_3_n_0 ;
  wire \sra_out[24]_INST_0_i_1_n_0 ;
  wire \sra_out[24]_INST_0_i_2_n_0 ;
  wire \sra_out[24]_INST_0_i_3_n_0 ;
  wire \sra_out[25]_INST_0_i_1_n_0 ;
  wire \sra_out[26]_INST_0_i_1_n_0 ;
  wire \sra_out[27]_INST_0_i_1_n_0 ;
  wire \sra_out[28]_INST_0_i_1_n_0 ;
  wire \sra_out[29]_INST_0_i_1_n_0 ;
  wire \sra_out[29]_INST_0_i_2_n_0 ;
  wire \sra_out[2]_INST_0_i_1_n_0 ;
  wire \sra_out[2]_INST_0_i_2_n_0 ;
  wire \sra_out[30]_INST_0_i_1_n_0 ;
  wire \sra_out[30]_INST_0_i_2_n_0 ;
  wire \sra_out[31]_INST_0_i_1_n_0 ;
  wire \sra_out[32]_INST_0_i_1_n_0 ;
  wire \sra_out[3]_INST_0_i_1_n_0 ;
  wire \sra_out[3]_INST_0_i_2_n_0 ;
  wire \sra_out[4]_INST_0_i_1_n_0 ;
  wire \sra_out[4]_INST_0_i_2_n_0 ;
  wire \sra_out[5]_INST_0_i_1_n_0 ;
  wire \sra_out[5]_INST_0_i_2_n_0 ;
  wire \sra_out[6]_INST_0_i_1_n_0 ;
  wire \sra_out[6]_INST_0_i_2_n_0 ;
  wire \sra_out[7]_INST_0_i_1_n_0 ;
  wire \sra_out[7]_INST_0_i_2_n_0 ;
  wire \sra_out[8]_INST_0_i_1_n_0 ;
  wire \sra_out[8]_INST_0_i_2_n_0 ;
  wire \sra_out[9]_INST_0_i_1_n_0 ;
  wire \sra_out[9]_INST_0_i_2_n_0 ;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sra_out[0]_INST_0 
       (.I0(\sra_out[1]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[0]_INST_0_i_1_n_0 ),
        .I3(shift_in[1]),
        .I4(\sra_out[0]_INST_0_i_2_n_0 ),
        .O(sra_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[0]_INST_0_i_1 
       (.I0(\sra_out[6]_INST_0_i_2_n_0 ),
        .I1(shift_in[2]),
        .I2(\sra_out[2]_INST_0_i_2_n_0 ),
        .O(\sra_out[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[0]_INST_0_i_2 
       (.I0(\sra_out[4]_INST_0_i_2_n_0 ),
        .I1(shift_in[2]),
        .I2(\sra_out[0]_INST_0_i_3_n_0 ),
        .O(\sra_out[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[0]_INST_0_i_3 
       (.I0(data_in[24]),
        .I1(data_in[8]),
        .I2(shift_in[3]),
        .I3(data_in[16]),
        .I4(shift_in[4]),
        .I5(data_in[0]),
        .O(\sra_out[0]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[10]_INST_0 
       (.I0(\sra_out[11]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[10]_INST_0_i_1_n_0 ),
        .O(sra_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[10]_INST_0_i_1 
       (.I0(\sra_out[16]_INST_0_i_2_n_0 ),
        .I1(\sra_out[12]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[14]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[10]_INST_0_i_2_n_0 ),
        .O(\sra_out[10]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[10]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[18]),
        .I2(shift_in[3]),
        .I3(data_in[26]),
        .I4(shift_in[4]),
        .I5(data_in[10]),
        .O(\sra_out[10]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[11]_INST_0 
       (.I0(\sra_out[12]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[11]_INST_0_i_1_n_0 ),
        .O(sra_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[11]_INST_0_i_1 
       (.I0(\sra_out[17]_INST_0_i_2_n_0 ),
        .I1(\sra_out[13]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[15]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[11]_INST_0_i_2_n_0 ),
        .O(\sra_out[11]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[11]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[19]),
        .I2(shift_in[3]),
        .I3(data_in[27]),
        .I4(shift_in[4]),
        .I5(data_in[11]),
        .O(\sra_out[11]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[12]_INST_0 
       (.I0(\sra_out[13]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[12]_INST_0_i_1_n_0 ),
        .O(sra_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[12]_INST_0_i_1 
       (.I0(\sra_out[18]_INST_0_i_2_n_0 ),
        .I1(\sra_out[14]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[16]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[12]_INST_0_i_2_n_0 ),
        .O(\sra_out[12]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[12]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[20]),
        .I2(shift_in[3]),
        .I3(data_in[28]),
        .I4(shift_in[4]),
        .I5(data_in[12]),
        .O(\sra_out[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[13]_INST_0 
       (.I0(\sra_out[14]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[13]_INST_0_i_1_n_0 ),
        .O(sra_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[13]_INST_0_i_1 
       (.I0(\sra_out[19]_INST_0_i_2_n_0 ),
        .I1(\sra_out[15]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[17]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[13]_INST_0_i_2_n_0 ),
        .O(\sra_out[13]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[13]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[21]),
        .I2(shift_in[3]),
        .I3(data_in[29]),
        .I4(shift_in[4]),
        .I5(data_in[13]),
        .O(\sra_out[13]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[14]_INST_0 
       (.I0(\sra_out[15]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[14]_INST_0_i_1_n_0 ),
        .O(sra_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[14]_INST_0_i_1 
       (.I0(\sra_out[20]_INST_0_i_2_n_0 ),
        .I1(\sra_out[16]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[18]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[14]_INST_0_i_2_n_0 ),
        .O(\sra_out[14]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[14]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[22]),
        .I2(shift_in[3]),
        .I3(data_in[30]),
        .I4(shift_in[4]),
        .I5(data_in[14]),
        .O(\sra_out[14]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[15]_INST_0 
       (.I0(\sra_out[16]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[15]_INST_0_i_1_n_0 ),
        .O(sra_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[15]_INST_0_i_1 
       (.I0(\sra_out[21]_INST_0_i_3_n_0 ),
        .I1(\sra_out[17]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[19]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[15]_INST_0_i_2_n_0 ),
        .O(\sra_out[15]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[15]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[23]),
        .I2(shift_in[3]),
        .I3(data_in[31]),
        .I4(shift_in[4]),
        .I5(data_in[15]),
        .O(\sra_out[15]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[16]_INST_0 
       (.I0(\sra_out[17]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[16]_INST_0_i_1_n_0 ),
        .O(sra_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[16]_INST_0_i_1 
       (.I0(\sra_out[22]_INST_0_i_3_n_0 ),
        .I1(\sra_out[18]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[20]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[16]_INST_0_i_2_n_0 ),
        .O(\sra_out[16]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[16]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[24]),
        .I2(shift_in[3]),
        .I3(data_in[32]),
        .I4(shift_in[4]),
        .I5(data_in[16]),
        .O(\sra_out[16]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[17]_INST_0 
       (.I0(\sra_out[18]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[17]_INST_0_i_1_n_0 ),
        .O(sra_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[17]_INST_0_i_1 
       (.I0(\sra_out[23]_INST_0_i_3_n_0 ),
        .I1(\sra_out[19]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[21]_INST_0_i_3_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[17]_INST_0_i_2_n_0 ),
        .O(\sra_out[17]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[17]_INST_0_i_2 
       (.I0(data_in[25]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[17]),
        .O(\sra_out[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[18]_INST_0 
       (.I0(\sra_out[19]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[18]_INST_0_i_1_n_0 ),
        .O(sra_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[18]_INST_0_i_1 
       (.I0(\sra_out[24]_INST_0_i_3_n_0 ),
        .I1(\sra_out[20]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[22]_INST_0_i_3_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[18]_INST_0_i_2_n_0 ),
        .O(\sra_out[18]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[18]_INST_0_i_2 
       (.I0(data_in[26]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[18]),
        .O(\sra_out[18]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[19]_INST_0 
       (.I0(\sra_out[20]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[19]_INST_0_i_1_n_0 ),
        .O(sra_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[19]_INST_0_i_1 
       (.I0(\sra_out[21]_INST_0_i_2_n_0 ),
        .I1(\sra_out[21]_INST_0_i_3_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[23]_INST_0_i_3_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[19]_INST_0_i_2_n_0 ),
        .O(\sra_out[19]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[19]_INST_0_i_2 
       (.I0(data_in[27]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[19]),
        .O(\sra_out[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[1]_INST_0 
       (.I0(\sra_out[2]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[1]_INST_0_i_1_n_0 ),
        .O(sra_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[1]_INST_0_i_1 
       (.I0(\sra_out[7]_INST_0_i_2_n_0 ),
        .I1(\sra_out[3]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[5]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[1]_INST_0_i_2_n_0 ),
        .O(\sra_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[1]_INST_0_i_2 
       (.I0(data_in[25]),
        .I1(data_in[9]),
        .I2(shift_in[3]),
        .I3(data_in[17]),
        .I4(shift_in[4]),
        .I5(data_in[1]),
        .O(\sra_out[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[20]_INST_0 
       (.I0(\sra_out[21]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[20]_INST_0_i_1_n_0 ),
        .O(sra_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[20]_INST_0_i_1 
       (.I0(\sra_out[22]_INST_0_i_2_n_0 ),
        .I1(\sra_out[22]_INST_0_i_3_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[24]_INST_0_i_3_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[20]_INST_0_i_2_n_0 ),
        .O(\sra_out[20]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[20]_INST_0_i_2 
       (.I0(data_in[28]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[20]),
        .O(\sra_out[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[21]_INST_0 
       (.I0(\sra_out[22]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[21]_INST_0_i_1_n_0 ),
        .O(sra_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[21]_INST_0_i_1 
       (.I0(\sra_out[23]_INST_0_i_2_n_0 ),
        .I1(\sra_out[23]_INST_0_i_3_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[21]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[21]_INST_0_i_3_n_0 ),
        .O(\sra_out[21]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \sra_out[21]_INST_0_i_2 
       (.I0(shift_in[3]),
        .I1(data_in[33]),
        .I2(shift_in[4]),
        .I3(data_in[25]),
        .O(\sra_out[21]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[21]_INST_0_i_3 
       (.I0(data_in[29]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[21]),
        .O(\sra_out[21]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[22]_INST_0 
       (.I0(\sra_out[23]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[22]_INST_0_i_1_n_0 ),
        .O(sra_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[22]_INST_0_i_1 
       (.I0(\sra_out[24]_INST_0_i_2_n_0 ),
        .I1(\sra_out[24]_INST_0_i_3_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[22]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[22]_INST_0_i_3_n_0 ),
        .O(\sra_out[22]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \sra_out[22]_INST_0_i_2 
       (.I0(shift_in[3]),
        .I1(data_in[33]),
        .I2(shift_in[4]),
        .I3(data_in[26]),
        .O(\sra_out[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[22]_INST_0_i_3 
       (.I0(data_in[30]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[22]),
        .O(\sra_out[22]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[23]_INST_0 
       (.I0(\sra_out[24]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[23]_INST_0_i_1_n_0 ),
        .O(sra_out[23]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sra_out[23]_INST_0_i_1 
       (.I0(\sra_out[25]_INST_0_i_1_n_0 ),
        .I1(shift_in[1]),
        .I2(\sra_out[23]_INST_0_i_2_n_0 ),
        .I3(shift_in[2]),
        .I4(\sra_out[23]_INST_0_i_3_n_0 ),
        .O(\sra_out[23]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \sra_out[23]_INST_0_i_2 
       (.I0(shift_in[3]),
        .I1(data_in[33]),
        .I2(shift_in[4]),
        .I3(data_in[27]),
        .O(\sra_out[23]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[23]_INST_0_i_3 
       (.I0(data_in[31]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[23]),
        .O(\sra_out[23]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \sra_out[24]_INST_0 
       (.I0(\sra_out[27]_INST_0_i_1_n_0 ),
        .I1(shift_in[1]),
        .I2(\sra_out[25]_INST_0_i_1_n_0 ),
        .I3(shift_in[0]),
        .I4(\sra_out[24]_INST_0_i_1_n_0 ),
        .O(sra_out[24]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sra_out[24]_INST_0_i_1 
       (.I0(\sra_out[26]_INST_0_i_1_n_0 ),
        .I1(shift_in[1]),
        .I2(\sra_out[24]_INST_0_i_2_n_0 ),
        .I3(shift_in[2]),
        .I4(\sra_out[24]_INST_0_i_3_n_0 ),
        .O(\sra_out[24]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \sra_out[24]_INST_0_i_2 
       (.I0(shift_in[3]),
        .I1(data_in[33]),
        .I2(shift_in[4]),
        .I3(data_in[28]),
        .O(\sra_out[24]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \sra_out[24]_INST_0_i_3 
       (.I0(data_in[32]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[24]),
        .O(\sra_out[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[25]_INST_0 
       (.I0(\sra_out[28]_INST_0_i_1_n_0 ),
        .I1(\sra_out[26]_INST_0_i_1_n_0 ),
        .I2(shift_in[0]),
        .I3(\sra_out[27]_INST_0_i_1_n_0 ),
        .I4(shift_in[1]),
        .I5(\sra_out[25]_INST_0_i_1_n_0 ),
        .O(sra_out[25]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sra_out[25]_INST_0_i_1 
       (.I0(data_in[29]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[25]),
        .O(\sra_out[25]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[26]_INST_0 
       (.I0(\sra_out[29]_INST_0_i_2_n_0 ),
        .I1(\sra_out[27]_INST_0_i_1_n_0 ),
        .I2(shift_in[0]),
        .I3(\sra_out[28]_INST_0_i_1_n_0 ),
        .I4(shift_in[1]),
        .I5(\sra_out[26]_INST_0_i_1_n_0 ),
        .O(sra_out[26]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sra_out[26]_INST_0_i_1 
       (.I0(data_in[30]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[26]),
        .O(\sra_out[26]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[27]_INST_0 
       (.I0(\sra_out[30]_INST_0_i_2_n_0 ),
        .I1(\sra_out[28]_INST_0_i_1_n_0 ),
        .I2(shift_in[0]),
        .I3(\sra_out[29]_INST_0_i_2_n_0 ),
        .I4(shift_in[1]),
        .I5(\sra_out[27]_INST_0_i_1_n_0 ),
        .O(sra_out[27]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sra_out[27]_INST_0_i_1 
       (.I0(data_in[31]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[27]),
        .O(\sra_out[27]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[28]_INST_0 
       (.I0(\sra_out[29]_INST_0_i_1_n_0 ),
        .I1(\sra_out[29]_INST_0_i_2_n_0 ),
        .I2(shift_in[0]),
        .I3(\sra_out[30]_INST_0_i_2_n_0 ),
        .I4(shift_in[1]),
        .I5(\sra_out[28]_INST_0_i_1_n_0 ),
        .O(sra_out[28]));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \sra_out[28]_INST_0_i_1 
       (.I0(data_in[32]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[28]),
        .O(\sra_out[28]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[29]_INST_0 
       (.I0(\sra_out[30]_INST_0_i_1_n_0 ),
        .I1(\sra_out[30]_INST_0_i_2_n_0 ),
        .I2(shift_in[0]),
        .I3(\sra_out[29]_INST_0_i_1_n_0 ),
        .I4(shift_in[1]),
        .I5(\sra_out[29]_INST_0_i_2_n_0 ),
        .O(sra_out[29]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sra_out[29]_INST_0_i_1 
       (.I0(shift_in[2]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[31]),
        .O(\sra_out[29]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sra_out[29]_INST_0_i_2 
       (.I0(shift_in[2]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[29]),
        .O(\sra_out[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[2]_INST_0 
       (.I0(\sra_out[3]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[2]_INST_0_i_1_n_0 ),
        .O(sra_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[2]_INST_0_i_1 
       (.I0(\sra_out[8]_INST_0_i_2_n_0 ),
        .I1(\sra_out[4]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[6]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[2]_INST_0_i_2_n_0 ),
        .O(\sra_out[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[2]_INST_0_i_2 
       (.I0(data_in[26]),
        .I1(data_in[10]),
        .I2(shift_in[3]),
        .I3(data_in[18]),
        .I4(shift_in[4]),
        .I5(data_in[2]),
        .O(\sra_out[2]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sra_out[30]_INST_0 
       (.I0(\sra_out[31]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[30]_INST_0_i_1_n_0 ),
        .I3(shift_in[1]),
        .I4(\sra_out[30]_INST_0_i_2_n_0 ),
        .O(sra_out[30]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sra_out[30]_INST_0_i_1 
       (.I0(shift_in[2]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[32]),
        .O(\sra_out[30]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \sra_out[30]_INST_0_i_2 
       (.I0(shift_in[2]),
        .I1(shift_in[3]),
        .I2(data_in[33]),
        .I3(shift_in[4]),
        .I4(data_in[30]),
        .O(\sra_out[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[31]_INST_0 
       (.I0(\sra_out[32]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[31]_INST_0_i_1_n_0 ),
        .O(sra_out[31]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \sra_out[31]_INST_0_i_1 
       (.I0(shift_in[1]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[31]),
        .O(\sra_out[31]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[32]_INST_0 
       (.I0(data_in[33]),
        .I1(shift_in[0]),
        .I2(\sra_out[32]_INST_0_i_1_n_0 ),
        .O(sra_out[32]));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \sra_out[32]_INST_0_i_1 
       (.I0(shift_in[1]),
        .I1(shift_in[2]),
        .I2(shift_in[3]),
        .I3(data_in[33]),
        .I4(shift_in[4]),
        .I5(data_in[32]),
        .O(\sra_out[32]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[3]_INST_0 
       (.I0(\sra_out[4]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[3]_INST_0_i_1_n_0 ),
        .O(sra_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[3]_INST_0_i_1 
       (.I0(\sra_out[9]_INST_0_i_2_n_0 ),
        .I1(\sra_out[5]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[7]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[3]_INST_0_i_2_n_0 ),
        .O(\sra_out[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[3]_INST_0_i_2 
       (.I0(data_in[27]),
        .I1(data_in[11]),
        .I2(shift_in[3]),
        .I3(data_in[19]),
        .I4(shift_in[4]),
        .I5(data_in[3]),
        .O(\sra_out[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[4]_INST_0 
       (.I0(\sra_out[5]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[4]_INST_0_i_1_n_0 ),
        .O(sra_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[4]_INST_0_i_1 
       (.I0(\sra_out[10]_INST_0_i_2_n_0 ),
        .I1(\sra_out[6]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[8]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[4]_INST_0_i_2_n_0 ),
        .O(\sra_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[4]_INST_0_i_2 
       (.I0(data_in[28]),
        .I1(data_in[12]),
        .I2(shift_in[3]),
        .I3(data_in[20]),
        .I4(shift_in[4]),
        .I5(data_in[4]),
        .O(\sra_out[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[5]_INST_0 
       (.I0(\sra_out[6]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[5]_INST_0_i_1_n_0 ),
        .O(sra_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[5]_INST_0_i_1 
       (.I0(\sra_out[11]_INST_0_i_2_n_0 ),
        .I1(\sra_out[7]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[9]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[5]_INST_0_i_2_n_0 ),
        .O(\sra_out[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[5]_INST_0_i_2 
       (.I0(data_in[29]),
        .I1(data_in[13]),
        .I2(shift_in[3]),
        .I3(data_in[21]),
        .I4(shift_in[4]),
        .I5(data_in[5]),
        .O(\sra_out[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[6]_INST_0 
       (.I0(\sra_out[7]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[6]_INST_0_i_1_n_0 ),
        .O(sra_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[6]_INST_0_i_1 
       (.I0(\sra_out[12]_INST_0_i_2_n_0 ),
        .I1(\sra_out[8]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[10]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[6]_INST_0_i_2_n_0 ),
        .O(\sra_out[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[6]_INST_0_i_2 
       (.I0(data_in[30]),
        .I1(data_in[14]),
        .I2(shift_in[3]),
        .I3(data_in[22]),
        .I4(shift_in[4]),
        .I5(data_in[6]),
        .O(\sra_out[6]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[7]_INST_0 
       (.I0(\sra_out[8]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[7]_INST_0_i_1_n_0 ),
        .O(sra_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[7]_INST_0_i_1 
       (.I0(\sra_out[13]_INST_0_i_2_n_0 ),
        .I1(\sra_out[9]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[11]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[7]_INST_0_i_2_n_0 ),
        .O(\sra_out[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[7]_INST_0_i_2 
       (.I0(data_in[31]),
        .I1(data_in[15]),
        .I2(shift_in[3]),
        .I3(data_in[23]),
        .I4(shift_in[4]),
        .I5(data_in[7]),
        .O(\sra_out[7]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[8]_INST_0 
       (.I0(\sra_out[9]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[8]_INST_0_i_1_n_0 ),
        .O(sra_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[8]_INST_0_i_1 
       (.I0(\sra_out[14]_INST_0_i_2_n_0 ),
        .I1(\sra_out[10]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[12]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[8]_INST_0_i_2_n_0 ),
        .O(\sra_out[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[8]_INST_0_i_2 
       (.I0(data_in[32]),
        .I1(data_in[16]),
        .I2(shift_in[3]),
        .I3(data_in[24]),
        .I4(shift_in[4]),
        .I5(data_in[8]),
        .O(\sra_out[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \sra_out[9]_INST_0 
       (.I0(\sra_out[10]_INST_0_i_1_n_0 ),
        .I1(shift_in[0]),
        .I2(\sra_out[9]_INST_0_i_1_n_0 ),
        .O(sra_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[9]_INST_0_i_1 
       (.I0(\sra_out[15]_INST_0_i_2_n_0 ),
        .I1(\sra_out[11]_INST_0_i_2_n_0 ),
        .I2(shift_in[1]),
        .I3(\sra_out[13]_INST_0_i_2_n_0 ),
        .I4(shift_in[2]),
        .I5(\sra_out[9]_INST_0_i_2_n_0 ),
        .O(\sra_out[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sra_out[9]_INST_0_i_2 
       (.I0(data_in[33]),
        .I1(data_in[17]),
        .I2(shift_in[3]),
        .I3(data_in[25]),
        .I4(shift_in[4]),
        .I5(data_in[9]),
        .O(\sra_out[9]_INST_0_i_2_n_0 ));
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
