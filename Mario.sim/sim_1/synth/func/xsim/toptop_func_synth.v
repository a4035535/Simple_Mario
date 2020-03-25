// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 18 09:50:21 2019
// Host        : Kamijoukirito running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {E:/Workplace/vivado
//               file/Mario/Mario.sim/sim_1/synth/func/xsim/toptop_func_synth.v}
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module set_area
   (HS_OBUF,
    VS_OBUF,
    CLK);
  output HS_OBUF;
  output VS_OBUF;
  input CLK;

  wire CLK;
  wire HS_OBUF;
  wire HS_OBUF_inst_i_2_n_0;
  wire HS_OBUF_inst_i_3_n_0;
  wire HS_OBUF_inst_i_4_n_0;
  wire VS_OBUF;
  wire VS_OBUF_inst_i_2_n_0;
  wire \clkdiv_reg_n_0_[0] ;
  wire [0:0]p_0_in;
  wire [10:0]x_counter;
  wire \x_counter[10]_i_2_n_0 ;
  wire \x_counter[10]_i_3_n_0 ;
  wire \x_counter[10]_i_4_n_0 ;
  wire \x_counter[10]_i_5_n_0 ;
  wire \x_counter[4]_i_2_n_0 ;
  wire \x_counter[4]_i_3_n_0 ;
  wire \x_counter[5]_i_1_n_0 ;
  wire [10:0]x_counter_0;
  wire [10:0]y_counter;
  wire \y_counter[0]_i_1_n_0 ;
  wire \y_counter[10]_i_1_n_0 ;
  wire \y_counter[10]_i_3_n_0 ;
  wire \y_counter[10]_i_4_n_0 ;
  wire \y_counter[10]_i_5_n_0 ;
  wire \y_counter[10]_i_6_n_0 ;
  wire \y_counter[10]_i_7_n_0 ;
  wire \y_counter[1]_i_1_n_0 ;
  wire \y_counter[2]_i_1_n_0 ;
  wire \y_counter[3]_i_1_n_0 ;
  wire \y_counter[4]_i_1_n_0 ;
  wire \y_counter[5]_i_1_n_0 ;
  wire \y_counter[6]_i_1_n_0 ;
  wire \y_counter[7]_i_1_n_0 ;
  wire \y_counter[8]_i_1_n_0 ;
  wire \y_counter[9]_i_1_n_0 ;
  wire y_counter_1;

  LUT6 #(
    .INIT(64'h30B830308888B888)) 
    HS_OBUF_inst_i_1
       (.I0(HS_OBUF_inst_i_2_n_0),
        .I1(x_counter[10]),
        .I2(HS_OBUF_inst_i_3_n_0),
        .I3(x_counter[3]),
        .I4(HS_OBUF_inst_i_4_n_0),
        .I5(x_counter[4]),
        .O(HS_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    HS_OBUF_inst_i_2
       (.I0(x_counter[7]),
        .I1(x_counter[6]),
        .I2(x_counter[8]),
        .I3(x_counter[9]),
        .I4(x_counter[5]),
        .O(HS_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    HS_OBUF_inst_i_3
       (.I0(x_counter[6]),
        .I1(x_counter[5]),
        .I2(x_counter[7]),
        .I3(x_counter[8]),
        .I4(x_counter[9]),
        .O(HS_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    HS_OBUF_inst_i_4
       (.I0(x_counter[2]),
        .I1(x_counter[1]),
        .O(HS_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    VS_OBUF_inst_i_1
       (.I0(VS_OBUF_inst_i_2_n_0),
        .I1(y_counter[2]),
        .I2(y_counter[8]),
        .I3(y_counter[10]),
        .I4(y_counter[7]),
        .I5(y_counter[3]),
        .O(VS_OBUF));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    VS_OBUF_inst_i_2
       (.I0(y_counter[6]),
        .I1(y_counter[4]),
        .I2(y_counter[0]),
        .I3(y_counter[1]),
        .I4(y_counter[5]),
        .I5(y_counter[9]),
        .O(VS_OBUF_inst_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clkdiv[0]_i_1 
       (.I0(\clkdiv_reg_n_0_[0] ),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(\clkdiv_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \x_counter[0]_i_1 
       (.I0(x_counter[0]),
        .O(x_counter_0[0]));
  LUT6 #(
    .INIT(64'hD2D2D2D2D200D2D2)) 
    \x_counter[10]_i_1 
       (.I0(HS_OBUF_inst_i_3_n_0),
        .I1(\x_counter[10]_i_2_n_0 ),
        .I2(x_counter[10]),
        .I3(\x_counter[10]_i_3_n_0 ),
        .I4(\x_counter[10]_i_4_n_0 ),
        .I5(\x_counter[10]_i_5_n_0 ),
        .O(x_counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \x_counter[10]_i_2 
       (.I0(x_counter[4]),
        .I1(x_counter[0]),
        .I2(x_counter[2]),
        .I3(x_counter[1]),
        .I4(x_counter[3]),
        .O(\x_counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \x_counter[10]_i_3 
       (.I0(x_counter[0]),
        .I1(x_counter[10]),
        .I2(x_counter[4]),
        .O(\x_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \x_counter[10]_i_4 
       (.I0(x_counter[8]),
        .I1(x_counter[1]),
        .I2(x_counter[7]),
        .I3(x_counter[3]),
        .O(\x_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \x_counter[10]_i_5 
       (.I0(x_counter[6]),
        .I1(x_counter[5]),
        .I2(x_counter[2]),
        .I3(x_counter[9]),
        .O(\x_counter[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0DD0)) 
    \x_counter[1]_i_1 
       (.I0(HS_OBUF_inst_i_2_n_0),
        .I1(\x_counter[4]_i_2_n_0 ),
        .I2(x_counter[0]),
        .I3(x_counter[1]),
        .O(x_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0DDDD000)) 
    \x_counter[2]_i_1 
       (.I0(HS_OBUF_inst_i_2_n_0),
        .I1(\x_counter[4]_i_2_n_0 ),
        .I2(x_counter[1]),
        .I3(x_counter[0]),
        .I4(x_counter[2]),
        .O(x_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \x_counter[3]_i_1 
       (.I0(x_counter[3]),
        .I1(x_counter[1]),
        .I2(x_counter[0]),
        .I3(x_counter[2]),
        .O(x_counter_0[3]));
  LUT5 #(
    .INIT(32'h0DDDD000)) 
    \x_counter[4]_i_1 
       (.I0(HS_OBUF_inst_i_2_n_0),
        .I1(\x_counter[4]_i_2_n_0 ),
        .I2(x_counter[3]),
        .I3(\x_counter[4]_i_3_n_0 ),
        .I4(x_counter[4]),
        .O(x_counter_0[4]));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \x_counter[4]_i_2 
       (.I0(x_counter[4]),
        .I1(x_counter[0]),
        .I2(x_counter[1]),
        .I3(x_counter[10]),
        .I4(x_counter[3]),
        .I5(x_counter[2]),
        .O(\x_counter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \x_counter[4]_i_3 
       (.I0(x_counter[2]),
        .I1(x_counter[0]),
        .I2(x_counter[1]),
        .O(\x_counter[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \x_counter[5]_i_1 
       (.I0(x_counter[5]),
        .I1(x_counter[3]),
        .I2(x_counter[1]),
        .I3(x_counter[2]),
        .I4(x_counter[0]),
        .I5(x_counter[4]),
        .O(\x_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \x_counter[6]_i_1 
       (.I0(x_counter[6]),
        .I1(\x_counter[10]_i_2_n_0 ),
        .I2(x_counter[5]),
        .O(x_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \x_counter[7]_i_1 
       (.I0(x_counter[7]),
        .I1(\x_counter[10]_i_2_n_0 ),
        .I2(x_counter[6]),
        .I3(x_counter[5]),
        .O(x_counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \x_counter[8]_i_1 
       (.I0(x_counter[8]),
        .I1(\x_counter[10]_i_2_n_0 ),
        .I2(x_counter[6]),
        .I3(x_counter[5]),
        .I4(x_counter[7]),
        .O(x_counter_0[8]));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \x_counter[9]_i_1 
       (.I0(x_counter[9]),
        .I1(\x_counter[10]_i_2_n_0 ),
        .I2(x_counter[6]),
        .I3(x_counter[5]),
        .I4(x_counter[7]),
        .I5(x_counter[8]),
        .O(x_counter_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[0] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[0]),
        .Q(x_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[10] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[10]),
        .Q(x_counter[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[1] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[1]),
        .Q(x_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[2] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[2]),
        .Q(x_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[3] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[3]),
        .Q(x_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[4] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[4]),
        .Q(x_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[5] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(\x_counter[5]_i_1_n_0 ),
        .Q(x_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[6] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[6]),
        .Q(x_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[7] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[7]),
        .Q(x_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[8] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[8]),
        .Q(x_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x_counter_reg[9] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(x_counter_0[9]),
        .Q(x_counter[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \y_counter[0]_i_1 
       (.I0(\x_counter[4]_i_2_n_0 ),
        .I1(HS_OBUF_inst_i_2_n_0),
        .I2(y_counter[0]),
        .O(\y_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000400)) 
    \y_counter[10]_i_1 
       (.I0(\y_counter[10]_i_4_n_0 ),
        .I1(y_counter[9]),
        .I2(\y_counter[10]_i_5_n_0 ),
        .I3(HS_OBUF_inst_i_2_n_0),
        .I4(\x_counter[4]_i_2_n_0 ),
        .O(\y_counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \y_counter[10]_i_2 
       (.I0(HS_OBUF_inst_i_2_n_0),
        .I1(\y_counter[10]_i_6_n_0 ),
        .I2(x_counter[1]),
        .I3(x_counter[10]),
        .I4(x_counter[3]),
        .I5(x_counter[2]),
        .O(y_counter_1));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \y_counter[10]_i_3 
       (.I0(\y_counter[10]_i_4_n_0 ),
        .I1(y_counter[9]),
        .I2(y_counter[8]),
        .I3(y_counter[7]),
        .I4(\y_counter[10]_i_7_n_0 ),
        .I5(y_counter[10]),
        .O(\y_counter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \y_counter[10]_i_4 
       (.I0(y_counter[5]),
        .I1(y_counter[1]),
        .I2(y_counter[0]),
        .I3(y_counter[4]),
        .I4(y_counter[6]),
        .O(\y_counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \y_counter[10]_i_5 
       (.I0(y_counter[2]),
        .I1(y_counter[8]),
        .I2(y_counter[10]),
        .I3(y_counter[7]),
        .I4(y_counter[3]),
        .O(\y_counter[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \y_counter[10]_i_6 
       (.I0(x_counter[0]),
        .I1(x_counter[4]),
        .O(\y_counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y_counter[10]_i_7 
       (.I0(y_counter[2]),
        .I1(y_counter[3]),
        .O(\y_counter[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \y_counter[1]_i_1 
       (.I0(y_counter[0]),
        .I1(y_counter[1]),
        .O(\y_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \y_counter[2]_i_1 
       (.I0(y_counter[1]),
        .I1(y_counter[0]),
        .I2(y_counter[2]),
        .O(\y_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \y_counter[3]_i_1 
       (.I0(y_counter[0]),
        .I1(y_counter[1]),
        .I2(y_counter[2]),
        .I3(y_counter[3]),
        .O(\y_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \y_counter[4]_i_1 
       (.I0(y_counter[0]),
        .I1(y_counter[1]),
        .I2(y_counter[2]),
        .I3(y_counter[3]),
        .I4(y_counter[4]),
        .O(\y_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_counter[5]_i_1 
       (.I0(y_counter[1]),
        .I1(y_counter[0]),
        .I2(y_counter[4]),
        .I3(y_counter[2]),
        .I4(y_counter[3]),
        .I5(y_counter[5]),
        .O(\y_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \y_counter[6]_i_1 
       (.I0(y_counter[4]),
        .I1(y_counter[0]),
        .I2(y_counter[1]),
        .I3(y_counter[5]),
        .I4(\y_counter[10]_i_7_n_0 ),
        .I5(y_counter[6]),
        .O(\y_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \y_counter[7]_i_1 
       (.I0(\y_counter[10]_i_4_n_0 ),
        .I1(y_counter[2]),
        .I2(y_counter[3]),
        .I3(y_counter[7]),
        .O(\y_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \y_counter[8]_i_1 
       (.I0(\y_counter[10]_i_4_n_0 ),
        .I1(y_counter[3]),
        .I2(y_counter[2]),
        .I3(y_counter[7]),
        .I4(y_counter[8]),
        .O(\y_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \y_counter[9]_i_1 
       (.I0(\y_counter[10]_i_4_n_0 ),
        .I1(y_counter[8]),
        .I2(y_counter[7]),
        .I3(y_counter[3]),
        .I4(y_counter[2]),
        .I5(y_counter[9]),
        .O(\y_counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[0] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(1'b1),
        .D(\y_counter[0]_i_1_n_0 ),
        .Q(y_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[10] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[10]_i_3_n_0 ),
        .Q(y_counter[10]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[1] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[1]_i_1_n_0 ),
        .Q(y_counter[1]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[2] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[2]_i_1_n_0 ),
        .Q(y_counter[2]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[3] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[3]_i_1_n_0 ),
        .Q(y_counter[3]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[4] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[4]_i_1_n_0 ),
        .Q(y_counter[4]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[5] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[5]_i_1_n_0 ),
        .Q(y_counter[5]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[6] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[6]_i_1_n_0 ),
        .Q(y_counter[6]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[7] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[7]_i_1_n_0 ),
        .Q(y_counter[7]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[8] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[8]_i_1_n_0 ),
        .Q(y_counter[8]),
        .R(\y_counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \y_counter_reg[9] 
       (.C(\clkdiv_reg_n_0_[0] ),
        .CE(y_counter_1),
        .D(\y_counter[9]_i_1_n_0 ),
        .Q(y_counter[9]),
        .R(\y_counter[10]_i_1_n_0 ));
endmodule

(* NotValidForBitStream *)
module top
   (CLK,
    CLR,
    key,
    R,
    G,
    B,
    HS,
    VS);
  input CLK;
  input CLR;
  input [3:0]key;
  output [3:0]R;
  output [3:0]G;
  output [3:0]B;
  output HS;
  output VS;

  wire [3:0]B;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]G;
  wire HS;
  wire HS_OBUF;
  wire [3:0]R;
  wire VS;
  wire VS_OBUF;

  OBUF \B_OBUF[0]_inst 
       (.I(1'b0),
        .O(B[0]));
  OBUF \B_OBUF[1]_inst 
       (.I(1'b0),
        .O(B[1]));
  OBUF \B_OBUF[2]_inst 
       (.I(1'b0),
        .O(B[2]));
  OBUF \B_OBUF[3]_inst 
       (.I(1'b0),
        .O(B[3]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF \G_OBUF[0]_inst 
       (.I(1'b0),
        .O(G[0]));
  OBUF \G_OBUF[1]_inst 
       (.I(1'b0),
        .O(G[1]));
  OBUF \G_OBUF[2]_inst 
       (.I(1'b0),
        .O(G[2]));
  OBUF \G_OBUF[3]_inst 
       (.I(1'b0),
        .O(G[3]));
  OBUF HS_OBUF_inst
       (.I(HS_OBUF),
        .O(HS));
  OBUF \R_OBUF[0]_inst 
       (.I(1'b0),
        .O(R[0]));
  OBUF \R_OBUF[1]_inst 
       (.I(1'b0),
        .O(R[1]));
  OBUF \R_OBUF[2]_inst 
       (.I(1'b0),
        .O(R[2]));
  OBUF \R_OBUF[3]_inst 
       (.I(1'b0),
        .O(R[3]));
  OBUF VS_OBUF_inst
       (.I(VS_OBUF),
        .O(VS));
  set_area area
       (.CLK(CLK_IBUF_BUFG),
        .HS_OBUF(HS_OBUF),
        .VS_OBUF(VS_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
