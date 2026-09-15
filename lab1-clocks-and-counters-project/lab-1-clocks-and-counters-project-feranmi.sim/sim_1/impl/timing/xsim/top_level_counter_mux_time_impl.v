// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Sep 12 18:02:51 2026
// Host        : TABLET-9UARK71U running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/eduar/Documents/GitHub/school/ece524l-fpga-asic-design-lab/lab-1-clocks-and-counters-project-feranmi/lab-1-clocks-and-counters-project-feranmi.sim/sim_1/impl/timing/xsim/top_level_counter_mux_time_impl.v
// Design      : top_level_counter_mux
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module BCD_Counter
   (\q_reg[3]_0 ,
    \q_reg[2]_0 ,
    \q_reg[1]_0 ,
    \q_reg[0]_0 ,
    Q,
    sel_IBUF,
    \mux_out_OBUF[3]_inst_i_1 ,
    \mux_out_OBUF[3]_inst_i_1_0 ,
    counter_enable,
    CLK,
    \q_reg[3]_1 );
  output \q_reg[3]_0 ;
  output \q_reg[2]_0 ;
  output \q_reg[1]_0 ;
  output \q_reg[0]_0 ;
  input [3:0]Q;
  input [1:0]sel_IBUF;
  input [2:0]\mux_out_OBUF[3]_inst_i_1 ;
  input [3:0]\mux_out_OBUF[3]_inst_i_1_0 ;
  input counter_enable;
  input CLK;
  input \q_reg[3]_1 ;

  wire CLK;
  wire [3:0]Q;
  wire counter_enable;
  wire [2:0]\mux_out_OBUF[3]_inst_i_1 ;
  wire [3:0]\mux_out_OBUF[3]_inst_i_1_0 ;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1__1_n_0 ;
  wire \q[2]_i_1__1_n_0 ;
  wire \q[3]_i_1__2_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg_n_0_[0] ;
  wire \q_reg_n_0_[1] ;
  wire \q_reg_n_0_[2] ;
  wire \q_reg_n_0_[3] ;
  wire [1:0]sel_IBUF;

  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \mux_out_OBUF[0]_inst_i_3 
       (.I0(\q_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .I4(\mux_out_OBUF[3]_inst_i_1_0 [0]),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mux_out_OBUF[1]_inst_i_3 
       (.I0(\q_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(sel_IBUF[1]),
        .I3(\mux_out_OBUF[3]_inst_i_1 [0]),
        .I4(sel_IBUF[0]),
        .I5(\mux_out_OBUF[3]_inst_i_1_0 [1]),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mux_out_OBUF[2]_inst_i_3 
       (.I0(\q_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(sel_IBUF[1]),
        .I3(\mux_out_OBUF[3]_inst_i_1 [1]),
        .I4(sel_IBUF[0]),
        .I5(\mux_out_OBUF[3]_inst_i_1_0 [2]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mux_out_OBUF[3]_inst_i_3 
       (.I0(\q_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(sel_IBUF[1]),
        .I3(\mux_out_OBUF[3]_inst_i_1 [2]),
        .I4(sel_IBUF[0]),
        .I5(\mux_out_OBUF[3]_inst_i_1_0 [3]),
        .O(\q_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \q[0]_i_1 
       (.I0(\q_reg_n_0_[0] ),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \q[1]_i_1__1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[3] ),
        .I2(\q_reg_n_0_[1] ),
        .I3(\q_reg_n_0_[0] ),
        .O(\q[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q[2]_i_1__1 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[0] ),
        .O(\q[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \q[3]_i_1__2 
       (.I0(\q_reg_n_0_[2] ),
        .I1(\q_reg_n_0_[1] ),
        .I2(\q_reg_n_0_[0] ),
        .I3(\q_reg_n_0_[3] ),
        .O(\q[3]_i_1__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_1 ),
        .D(\q[0]_i_1_n_0 ),
        .Q(\q_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_1 ),
        .D(\q[1]_i_1__1_n_0 ),
        .Q(\q_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_1 ),
        .D(\q[2]_i_1__1_n_0 ),
        .Q(\q_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_1 ),
        .D(\q[3]_i_1__2_n_0 ),
        .Q(\q_reg_n_0_[3] ));
endmodule

module bit_counter
   (Q,
    \counter_out_reg[0]_0 ,
    counter_enable,
    CLK);
  output [3:0]Q;
  input \counter_out_reg[0]_0 ;
  input counter_enable;
  input CLK;

  wire CLK;
  wire [3:0]Q;
  wire counter_enable;
  wire \counter_out_reg[0]_0 ;
  wire [3:0]p_0_in__0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_out[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter_out[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter_out[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .D(p_0_in__0[0]),
        .Q(Q[0]),
        .R(\counter_out_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(\counter_out_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(\counter_out_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_out_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .D(p_0_in__0[3]),
        .Q(Q[3]),
        .R(\counter_out_reg[0]_0 ));
endmodule

module clock_divider
   (clk,
    CLK,
    clk_out_reg_0,
    enable_IBUF,
    pause_IBUF,
    counter_enable);
  output clk;
  input CLK;
  input clk_out_reg_0;
  input enable_IBUF;
  input pause_IBUF;
  input counter_enable;

  wire CLK;
  wire clk;
  wire clk_out_i_1_n_0;
  wire clk_out_reg_0;
  wire [24:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry_n_0;
  wire \counter[24]_i_10_n_0 ;
  wire \counter[24]_i_4_n_0 ;
  wire \counter[24]_i_5_n_0 ;
  wire \counter[24]_i_6_n_0 ;
  wire \counter[24]_i_7_n_0 ;
  wire \counter[24]_i_8_n_0 ;
  wire \counter[24]_i_9_n_0 ;
  wire [24:0]counter_0;
  wire counter_enable;
  wire [24:1]data0;
  wire enable_IBUF;
  wire pause_IBUF;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__4_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF708)) 
    clk_out_i_1
       (.I0(\counter[24]_i_4_n_0 ),
        .I1(enable_IBUF),
        .I2(pause_IBUF),
        .I3(clk),
        .O(clk_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(clk_out_reg_0),
        .D(clk_out_i_1_n_0),
        .Q(clk));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO(NLW_counter0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[11]_i_1 
       (.I0(data0[11]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[12]_i_1 
       (.I0(data0[12]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[13]_i_1 
       (.I0(data0[13]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[14]_i_1 
       (.I0(data0[14]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[15]_i_1 
       (.I0(data0[15]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[16]_i_1 
       (.I0(data0[16]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[17]_i_1 
       (.I0(data0[17]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[18]_i_1 
       (.I0(data0[18]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[19]_i_1 
       (.I0(data0[19]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[20]_i_1 
       (.I0(data0[20]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[21]_i_1 
       (.I0(data0[21]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[22]_i_1 
       (.I0(data0[22]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[23]_i_1 
       (.I0(data0[23]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[23]));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \counter[24]_i_10 
       (.I0(counter[20]),
        .I1(counter[0]),
        .I2(counter[23]),
        .I3(counter[15]),
        .I4(counter[16]),
        .I5(counter[24]),
        .O(\counter[24]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_2 
       (.I0(data0[24]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[24]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \counter[24]_i_4 
       (.I0(\counter[24]_i_5_n_0 ),
        .I1(\counter[24]_i_6_n_0 ),
        .I2(\counter[24]_i_7_n_0 ),
        .I3(\counter[24]_i_8_n_0 ),
        .I4(\counter[24]_i_9_n_0 ),
        .I5(\counter[24]_i_10_n_0 ),
        .O(\counter[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \counter[24]_i_5 
       (.I0(counter[19]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(counter[17]),
        .O(\counter[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[24]_i_6 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[22]),
        .I3(counter[3]),
        .O(\counter[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \counter[24]_i_7 
       (.I0(counter[21]),
        .I1(counter[11]),
        .I2(counter[4]),
        .O(\counter[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[24]_i_8 
       (.I0(counter[14]),
        .I1(counter[7]),
        .I2(counter[18]),
        .I3(counter[8]),
        .O(\counter[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[24]_i_9 
       (.I0(counter[9]),
        .I1(counter[6]),
        .I2(counter[5]),
        .I3(counter[10]),
        .O(\counter[24]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[2]_i_1 
       (.I0(data0[2]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[3]_i_1 
       (.I0(data0[3]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[4]_i_1 
       (.I0(data0[4]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[6]_i_1 
       (.I0(data0[6]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[7]_i_1 
       (.I0(data0[7]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[8]_i_1 
       (.I0(data0[8]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\counter[24]_i_4_n_0 ),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(clk_out_reg_0),
        .D(counter_0[9]),
        .Q(counter[9]));
endmodule

module even_counter
   (Q,
    counter_enable,
    CLK,
    \q_reg[1]_0 );
  output [2:0]Q;
  input counter_enable;
  input CLK;
  input \q_reg[1]_0 ;

  wire CLK;
  wire [2:0]Q;
  wire counter_enable;
  wire [3:1]p_0_in__1;
  wire \q_reg[1]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q[1]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__1[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__1[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__1[3]),
        .Q(Q[2]));
endmodule

module fibonacci_counter
   (counter_enable,
    rst_n,
    Q,
    mux_out_OBUF,
    CLK,
    enable_IBUF,
    pause_IBUF,
    sel_IBUF,
    rst_n_IBUF);
  output counter_enable;
  output rst_n;
  output [3:0]Q;
  output [11:0]mux_out_OBUF;
  input CLK;
  input enable_IBUF;
  input pause_IBUF;
  input [2:0]sel_IBUF;
  input rst_n_IBUF;

  wire CLK;
  wire [3:0]Q;
  wire counter_enable;
  wire enable_IBUF;
  wire [11:0]mux_out_OBUF;
  wire \next_fibo[0]_i_2_n_0 ;
  wire \next_fibo[0]_i_3_n_0 ;
  wire \next_fibo[0]_i_4_n_0 ;
  wire \next_fibo[0]_i_5_n_0 ;
  wire \next_fibo[12]_i_2_n_0 ;
  wire \next_fibo[12]_i_3_n_0 ;
  wire \next_fibo[12]_i_4_n_0 ;
  wire \next_fibo[12]_i_5_n_0 ;
  wire \next_fibo[4]_i_2_n_0 ;
  wire \next_fibo[4]_i_3_n_0 ;
  wire \next_fibo[4]_i_4_n_0 ;
  wire \next_fibo[4]_i_5_n_0 ;
  wire \next_fibo[8]_i_2_n_0 ;
  wire \next_fibo[8]_i_3_n_0 ;
  wire \next_fibo[8]_i_4_n_0 ;
  wire \next_fibo[8]_i_5_n_0 ;
  wire [15:0]next_fibo_reg;
  wire \next_fibo_reg[0]_i_1_n_0 ;
  wire \next_fibo_reg[0]_i_1_n_4 ;
  wire \next_fibo_reg[0]_i_1_n_5 ;
  wire \next_fibo_reg[0]_i_1_n_6 ;
  wire \next_fibo_reg[0]_i_1_n_7 ;
  wire \next_fibo_reg[12]_i_1_n_4 ;
  wire \next_fibo_reg[12]_i_1_n_5 ;
  wire \next_fibo_reg[12]_i_1_n_6 ;
  wire \next_fibo_reg[12]_i_1_n_7 ;
  wire \next_fibo_reg[4]_i_1_n_0 ;
  wire \next_fibo_reg[4]_i_1_n_4 ;
  wire \next_fibo_reg[4]_i_1_n_5 ;
  wire \next_fibo_reg[4]_i_1_n_6 ;
  wire \next_fibo_reg[4]_i_1_n_7 ;
  wire \next_fibo_reg[8]_i_1_n_0 ;
  wire \next_fibo_reg[8]_i_1_n_4 ;
  wire \next_fibo_reg[8]_i_1_n_5 ;
  wire \next_fibo_reg[8]_i_1_n_6 ;
  wire \next_fibo_reg[8]_i_1_n_7 ;
  wire pause_IBUF;
  wire [15:4]q;
  wire rst_n;
  wire rst_n_IBUF;
  wire [2:0]sel_IBUF;
  wire [2:0]\NLW_next_fibo_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_next_fibo_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_next_fibo_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_next_fibo_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \counter[24]_i_1 
       (.I0(enable_IBUF),
        .I1(pause_IBUF),
        .O(counter_enable));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[24]_i_3 
       (.I0(rst_n_IBUF),
        .O(rst_n));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[10]_inst_i_1 
       (.I0(q[10]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[11]_inst_i_1 
       (.I0(q[11]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[12]_inst_i_1 
       (.I0(q[12]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[13]_inst_i_1 
       (.I0(q[13]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[14]_inst_i_1 
       (.I0(q[14]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[15]_inst_i_1 
       (.I0(q[15]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[4]_inst_i_1 
       (.I0(q[4]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[5]_inst_i_1 
       (.I0(q[5]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[6]_inst_i_1 
       (.I0(q[6]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[7]_inst_i_1 
       (.I0(q[7]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[8]_inst_i_1 
       (.I0(q[8]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \mux_out_OBUF[9]_inst_i_1 
       (.I0(q[9]),
        .I1(sel_IBUF[2]),
        .I2(sel_IBUF[1]),
        .I3(sel_IBUF[0]),
        .O(mux_out_OBUF[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[0]_i_2 
       (.I0(Q[3]),
        .I1(next_fibo_reg[3]),
        .O(\next_fibo[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[0]_i_3 
       (.I0(Q[2]),
        .I1(next_fibo_reg[2]),
        .O(\next_fibo[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[0]_i_4 
       (.I0(Q[1]),
        .I1(next_fibo_reg[1]),
        .O(\next_fibo[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[0]_i_5 
       (.I0(Q[0]),
        .I1(next_fibo_reg[0]),
        .O(\next_fibo[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[12]_i_2 
       (.I0(next_fibo_reg[15]),
        .I1(q[15]),
        .O(\next_fibo[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[12]_i_3 
       (.I0(q[14]),
        .I1(next_fibo_reg[14]),
        .O(\next_fibo[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[12]_i_4 
       (.I0(q[13]),
        .I1(next_fibo_reg[13]),
        .O(\next_fibo[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[12]_i_5 
       (.I0(q[12]),
        .I1(next_fibo_reg[12]),
        .O(\next_fibo[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[4]_i_2 
       (.I0(q[7]),
        .I1(next_fibo_reg[7]),
        .O(\next_fibo[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[4]_i_3 
       (.I0(q[6]),
        .I1(next_fibo_reg[6]),
        .O(\next_fibo[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[4]_i_4 
       (.I0(q[5]),
        .I1(next_fibo_reg[5]),
        .O(\next_fibo[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[4]_i_5 
       (.I0(q[4]),
        .I1(next_fibo_reg[4]),
        .O(\next_fibo[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[8]_i_2 
       (.I0(q[11]),
        .I1(next_fibo_reg[11]),
        .O(\next_fibo[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[8]_i_3 
       (.I0(q[10]),
        .I1(next_fibo_reg[10]),
        .O(\next_fibo[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[8]_i_4 
       (.I0(q[9]),
        .I1(next_fibo_reg[9]),
        .O(\next_fibo[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \next_fibo[8]_i_5 
       (.I0(q[8]),
        .I1(next_fibo_reg[8]),
        .O(\next_fibo[8]_i_5_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \next_fibo_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .D(\next_fibo_reg[0]_i_1_n_7 ),
        .PRE(rst_n),
        .Q(next_fibo_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \next_fibo_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\next_fibo_reg[0]_i_1_n_0 ,\NLW_next_fibo_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q),
        .O({\next_fibo_reg[0]_i_1_n_4 ,\next_fibo_reg[0]_i_1_n_5 ,\next_fibo_reg[0]_i_1_n_6 ,\next_fibo_reg[0]_i_1_n_7 }),
        .S({\next_fibo[0]_i_2_n_0 ,\next_fibo[0]_i_3_n_0 ,\next_fibo[0]_i_4_n_0 ,\next_fibo[0]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[10] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[8]_i_1_n_5 ),
        .Q(next_fibo_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[11] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[8]_i_1_n_4 ),
        .Q(next_fibo_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[12] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[12]_i_1_n_7 ),
        .Q(next_fibo_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \next_fibo_reg[12]_i_1 
       (.CI(\next_fibo_reg[8]_i_1_n_0 ),
        .CO(\NLW_next_fibo_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,q[14:12]}),
        .O({\next_fibo_reg[12]_i_1_n_4 ,\next_fibo_reg[12]_i_1_n_5 ,\next_fibo_reg[12]_i_1_n_6 ,\next_fibo_reg[12]_i_1_n_7 }),
        .S({\next_fibo[12]_i_2_n_0 ,\next_fibo[12]_i_3_n_0 ,\next_fibo[12]_i_4_n_0 ,\next_fibo[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[13] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[12]_i_1_n_6 ),
        .Q(next_fibo_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[14] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[12]_i_1_n_5 ),
        .Q(next_fibo_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[15] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[12]_i_1_n_4 ),
        .Q(next_fibo_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[0]_i_1_n_6 ),
        .Q(next_fibo_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[0]_i_1_n_5 ),
        .Q(next_fibo_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[0]_i_1_n_4 ),
        .Q(next_fibo_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[4] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[4]_i_1_n_7 ),
        .Q(next_fibo_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \next_fibo_reg[4]_i_1 
       (.CI(\next_fibo_reg[0]_i_1_n_0 ),
        .CO({\next_fibo_reg[4]_i_1_n_0 ,\NLW_next_fibo_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(q[7:4]),
        .O({\next_fibo_reg[4]_i_1_n_4 ,\next_fibo_reg[4]_i_1_n_5 ,\next_fibo_reg[4]_i_1_n_6 ,\next_fibo_reg[4]_i_1_n_7 }),
        .S({\next_fibo[4]_i_2_n_0 ,\next_fibo[4]_i_3_n_0 ,\next_fibo[4]_i_4_n_0 ,\next_fibo[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[5] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[4]_i_1_n_6 ),
        .Q(next_fibo_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[6] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[4]_i_1_n_5 ),
        .Q(next_fibo_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[7] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[4]_i_1_n_4 ),
        .Q(next_fibo_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[8] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[8]_i_1_n_7 ),
        .Q(next_fibo_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \next_fibo_reg[8]_i_1 
       (.CI(\next_fibo_reg[4]_i_1_n_0 ),
        .CO({\next_fibo_reg[8]_i_1_n_0 ,\NLW_next_fibo_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(q[11:8]),
        .O({\next_fibo_reg[8]_i_1_n_4 ,\next_fibo_reg[8]_i_1_n_5 ,\next_fibo_reg[8]_i_1_n_6 ,\next_fibo_reg[8]_i_1_n_7 }),
        .S({\next_fibo[8]_i_2_n_0 ,\next_fibo[8]_i_3_n_0 ,\next_fibo[8]_i_4_n_0 ,\next_fibo[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \next_fibo_reg[9] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(\next_fibo_reg[8]_i_1_n_6 ),
        .Q(next_fibo_reg[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[10]),
        .Q(q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[11]),
        .Q(q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[12]),
        .Q(q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[13]),
        .Q(q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[14]),
        .Q(q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[15]),
        .Q(q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[4]),
        .Q(q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[5]),
        .Q(q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[6]),
        .Q(q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[7]),
        .Q(q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[8]),
        .Q(q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(rst_n),
        .D(next_fibo_reg[9]),
        .Q(q[9]));
endmodule

module gray_counter
   (mux_out_OBUF,
    sel_IBUF,
    \mux_out[0] ,
    Q,
    \mux_out_OBUF[3]_inst_i_1_0 ,
    \mux_out[3] ,
    \mux_out_OBUF[3]_inst_i_1_1 ,
    \mux_out[2] ,
    \mux_out[1] ,
    counter_enable,
    CLK,
    \binary_count_reg[0]_0 );
  output [3:0]mux_out_OBUF;
  input [2:0]sel_IBUF;
  input \mux_out[0] ;
  input [3:0]Q;
  input [3:0]\mux_out_OBUF[3]_inst_i_1_0 ;
  input \mux_out[3] ;
  input [2:0]\mux_out_OBUF[3]_inst_i_1_1 ;
  input \mux_out[2] ;
  input \mux_out[1] ;
  input counter_enable;
  input CLK;
  input \binary_count_reg[0]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]binary_count_reg;
  wire \binary_count_reg[0]_0 ;
  wire counter_enable;
  wire \mux_out[0] ;
  wire \mux_out[1] ;
  wire \mux_out[2] ;
  wire \mux_out[3] ;
  wire [3:0]mux_out_OBUF;
  wire \mux_out_OBUF[0]_inst_i_2_n_0 ;
  wire \mux_out_OBUF[1]_inst_i_2_n_0 ;
  wire \mux_out_OBUF[1]_inst_i_4_n_0 ;
  wire \mux_out_OBUF[2]_inst_i_2_n_0 ;
  wire \mux_out_OBUF[2]_inst_i_4_n_0 ;
  wire [3:0]\mux_out_OBUF[3]_inst_i_1_0 ;
  wire [2:0]\mux_out_OBUF[3]_inst_i_1_1 ;
  wire \mux_out_OBUF[3]_inst_i_2_n_0 ;
  wire [3:0]p_0_in;
  wire [2:0]sel_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \binary_count[0]_i_1 
       (.I0(binary_count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \binary_count[1]_i_1 
       (.I0(binary_count_reg[0]),
        .I1(binary_count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \binary_count[2]_i_1 
       (.I0(binary_count_reg[2]),
        .I1(binary_count_reg[1]),
        .I2(binary_count_reg[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \binary_count[3]_i_1 
       (.I0(binary_count_reg[3]),
        .I1(binary_count_reg[0]),
        .I2(binary_count_reg[1]),
        .I3(binary_count_reg[2]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_count_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\binary_count_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(binary_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_count_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\binary_count_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(binary_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_count_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\binary_count_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(binary_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \binary_count_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\binary_count_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(binary_count_reg[3]));
  MUXF7 \mux_out_OBUF[0]_inst_i_1 
       (.I0(\mux_out_OBUF[0]_inst_i_2_n_0 ),
        .I1(\mux_out[0] ),
        .O(mux_out_OBUF[0]),
        .S(sel_IBUF[2]));
  LUT6 #(
    .INIT(64'h66006600F0FFF000)) 
    \mux_out_OBUF[0]_inst_i_2 
       (.I0(binary_count_reg[0]),
        .I1(binary_count_reg[1]),
        .I2(Q[0]),
        .I3(sel_IBUF[1]),
        .I4(\mux_out_OBUF[3]_inst_i_1_0 [0]),
        .I5(sel_IBUF[0]),
        .O(\mux_out_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \mux_out_OBUF[1]_inst_i_1 
       (.I0(\mux_out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\mux_out[1] ),
        .O(mux_out_OBUF[1]),
        .S(sel_IBUF[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mux_out_OBUF[1]_inst_i_2 
       (.I0(\mux_out_OBUF[1]_inst_i_4_n_0 ),
        .I1(sel_IBUF[1]),
        .I2(\mux_out_OBUF[3]_inst_i_1_1 [0]),
        .I3(sel_IBUF[0]),
        .I4(\mux_out_OBUF[3]_inst_i_1_0 [1]),
        .O(\mux_out_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \mux_out_OBUF[1]_inst_i_4 
       (.I0(binary_count_reg[1]),
        .I1(binary_count_reg[2]),
        .I2(sel_IBUF[0]),
        .I3(Q[1]),
        .O(\mux_out_OBUF[1]_inst_i_4_n_0 ));
  MUXF7 \mux_out_OBUF[2]_inst_i_1 
       (.I0(\mux_out_OBUF[2]_inst_i_2_n_0 ),
        .I1(\mux_out[2] ),
        .O(mux_out_OBUF[2]),
        .S(sel_IBUF[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \mux_out_OBUF[2]_inst_i_2 
       (.I0(\mux_out_OBUF[2]_inst_i_4_n_0 ),
        .I1(sel_IBUF[1]),
        .I2(\mux_out_OBUF[3]_inst_i_1_1 [1]),
        .I3(sel_IBUF[0]),
        .I4(\mux_out_OBUF[3]_inst_i_1_0 [2]),
        .O(\mux_out_OBUF[2]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \mux_out_OBUF[2]_inst_i_4 
       (.I0(binary_count_reg[2]),
        .I1(binary_count_reg[3]),
        .I2(sel_IBUF[0]),
        .I3(Q[2]),
        .O(\mux_out_OBUF[2]_inst_i_4_n_0 ));
  MUXF7 \mux_out_OBUF[3]_inst_i_1 
       (.I0(\mux_out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\mux_out[3] ),
        .O(mux_out_OBUF[3]),
        .S(sel_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \mux_out_OBUF[3]_inst_i_2 
       (.I0(binary_count_reg[3]),
        .I1(Q[3]),
        .I2(sel_IBUF[1]),
        .I3(\mux_out_OBUF[3]_inst_i_1_1 [2]),
        .I4(sel_IBUF[0]),
        .I5(\mux_out_OBUF[3]_inst_i_1_0 [3]),
        .O(\mux_out_OBUF[3]_inst_i_2_n_0 ));
endmodule

module johnson_counter
   (Q,
    counter_enable,
    CLK,
    \q_reg[3]_0 );
  output [3:0]Q;
  input counter_enable;
  input CLK;
  input \q_reg[3]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire counter_enable;
  wire [3:3]p_0_out;
  wire \q_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q[3]_i_1__0 
       (.I0(Q[3]),
        .O(p_0_out));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[3]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(p_0_out),
        .Q(Q[3]));
endmodule

module odd_counter
   (Q,
    counter_enable,
    CLK,
    \q_reg[1]_0 );
  output [2:0]Q;
  input counter_enable;
  input CLK;
  input \q_reg[1]_0 ;

  wire CLK;
  wire [2:0]Q;
  wire counter_enable;
  wire [3:1]p_0_in__2;
  wire \q_reg[1]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \q[1]_i_1__0 
       (.I0(Q[0]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \q[3]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(p_0_in__2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__2[1]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__2[2]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[1]_0 ),
        .D(p_0_in__2[3]),
        .Q(Q[2]));
endmodule

module ring_counter
   (Q,
    counter_enable,
    CLK,
    \q_reg[3]_0 );
  output [3:0]Q;
  input counter_enable;
  input CLK;
  input \q_reg[3]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire counter_enable;
  wire \q_reg[3]_0 ;

  FDPE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(counter_enable),
        .D(Q[3]),
        .PRE(\q_reg[3]_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[0]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[1]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(counter_enable),
        .CLR(\q_reg[3]_0 ),
        .D(Q[2]),
        .Q(Q[3]));
endmodule

(* ECO_CHECKSUM = "14b38220" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module top_level_counter_mux
   (clk_50MHz,
    rst_n,
    enable,
    pause,
    sel,
    mux_out);
  input clk_50MHz;
  input rst_n;
  input enable;
  input pause;
  input [2:0]sel;
  output [15:0]mux_out;

  wire clk;
  wire clk_50MHz;
  wire clk_50MHz_IBUF;
  wire clk_50MHz_IBUF_BUFG;
  wire clk_BUFG;
  wire cnt_bcd_n_0;
  wire cnt_bcd_n_1;
  wire cnt_bcd_n_2;
  wire cnt_bcd_n_3;
  wire cnt_fib_n_1;
  wire cnt_johnson_n_0;
  wire cnt_johnson_n_1;
  wire cnt_johnson_n_2;
  wire cnt_johnson_n_3;
  wire cnt_ring_n_0;
  wire cnt_ring_n_1;
  wire cnt_ring_n_2;
  wire cnt_ring_n_3;
  wire counter_enable;
  wire [3:0]counter_out_reg;
  wire enable;
  wire enable_IBUF;
  wire [15:0]mux_out;
  wire [15:0]mux_out_OBUF;
  wire pause;
  wire pause_IBUF;
  wire [3:0]q;
  wire [3:1]q_reg;
  wire [3:1]q_reg_0;
  wire rst_n;
  wire rst_n_IBUF;
  wire [2:0]sel;
  wire [2:0]sel_IBUF;

initial begin
 $sdf_annotate("top_level_counter_mux_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_50MHz_IBUF_BUFG_inst
       (.I(clk_50MHz_IBUF),
        .O(clk_50MHz_IBUF_BUFG));
  IBUF clk_50MHz_IBUF_inst
       (.I(clk_50MHz),
        .O(clk_50MHz_IBUF));
  BUFG clk_BUFG_inst
       (.I(clk),
        .O(clk_BUFG));
  clock_divider cll_div
       (.CLK(clk_50MHz_IBUF_BUFG),
        .clk(clk),
        .clk_out_reg_0(cnt_fib_n_1),
        .counter_enable(counter_enable),
        .enable_IBUF(enable_IBUF),
        .pause_IBUF(pause_IBUF));
  BCD_Counter cnt_bcd
       (.CLK(clk_BUFG),
        .Q({cnt_ring_n_0,cnt_ring_n_1,cnt_ring_n_2,cnt_ring_n_3}),
        .counter_enable(counter_enable),
        .\mux_out_OBUF[3]_inst_i_1 (q_reg_0),
        .\mux_out_OBUF[3]_inst_i_1_0 ({cnt_johnson_n_0,cnt_johnson_n_1,cnt_johnson_n_2,cnt_johnson_n_3}),
        .\q_reg[0]_0 (cnt_bcd_n_3),
        .\q_reg[1]_0 (cnt_bcd_n_2),
        .\q_reg[2]_0 (cnt_bcd_n_1),
        .\q_reg[3]_0 (cnt_bcd_n_0),
        .\q_reg[3]_1 (cnt_fib_n_1),
        .sel_IBUF(sel_IBUF[1:0]));
  bit_counter cnt_bit
       (.CLK(clk_BUFG),
        .Q(counter_out_reg),
        .counter_enable(counter_enable),
        .\counter_out_reg[0]_0 (cnt_fib_n_1));
  even_counter cnt_even
       (.CLK(clk_BUFG),
        .Q(q_reg),
        .counter_enable(counter_enable),
        .\q_reg[1]_0 (cnt_fib_n_1));
  fibonacci_counter cnt_fib
       (.CLK(clk_BUFG),
        .Q(q),
        .counter_enable(counter_enable),
        .enable_IBUF(enable_IBUF),
        .mux_out_OBUF(mux_out_OBUF[15:4]),
        .pause_IBUF(pause_IBUF),
        .rst_n(cnt_fib_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .sel_IBUF(sel_IBUF));
  gray_counter cnt_gray
       (.CLK(clk_BUFG),
        .Q(q),
        .\binary_count_reg[0]_0 (cnt_fib_n_1),
        .counter_enable(counter_enable),
        .\mux_out[0] (cnt_bcd_n_3),
        .\mux_out[1] (cnt_bcd_n_2),
        .\mux_out[2] (cnt_bcd_n_1),
        .\mux_out[3] (cnt_bcd_n_0),
        .mux_out_OBUF(mux_out_OBUF[3:0]),
        .\mux_out_OBUF[3]_inst_i_1_0 (counter_out_reg),
        .\mux_out_OBUF[3]_inst_i_1_1 (q_reg),
        .sel_IBUF(sel_IBUF));
  johnson_counter cnt_johnson
       (.CLK(clk_BUFG),
        .Q({cnt_johnson_n_0,cnt_johnson_n_1,cnt_johnson_n_2,cnt_johnson_n_3}),
        .counter_enable(counter_enable),
        .\q_reg[3]_0 (cnt_fib_n_1));
  odd_counter cnt_odd
       (.CLK(clk_BUFG),
        .Q(q_reg_0),
        .counter_enable(counter_enable),
        .\q_reg[1]_0 (cnt_fib_n_1));
  ring_counter cnt_ring
       (.CLK(clk_BUFG),
        .Q({cnt_ring_n_0,cnt_ring_n_1,cnt_ring_n_2,cnt_ring_n_3}),
        .counter_enable(counter_enable),
        .\q_reg[3]_0 (cnt_fib_n_1));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  OBUF \mux_out_OBUF[0]_inst 
       (.I(mux_out_OBUF[0]),
        .O(mux_out[0]));
  OBUF \mux_out_OBUF[10]_inst 
       (.I(mux_out_OBUF[10]),
        .O(mux_out[10]));
  OBUF \mux_out_OBUF[11]_inst 
       (.I(mux_out_OBUF[11]),
        .O(mux_out[11]));
  OBUF \mux_out_OBUF[12]_inst 
       (.I(mux_out_OBUF[12]),
        .O(mux_out[12]));
  OBUF \mux_out_OBUF[13]_inst 
       (.I(mux_out_OBUF[13]),
        .O(mux_out[13]));
  OBUF \mux_out_OBUF[14]_inst 
       (.I(mux_out_OBUF[14]),
        .O(mux_out[14]));
  OBUF \mux_out_OBUF[15]_inst 
       (.I(mux_out_OBUF[15]),
        .O(mux_out[15]));
  OBUF \mux_out_OBUF[1]_inst 
       (.I(mux_out_OBUF[1]),
        .O(mux_out[1]));
  OBUF \mux_out_OBUF[2]_inst 
       (.I(mux_out_OBUF[2]),
        .O(mux_out[2]));
  OBUF \mux_out_OBUF[3]_inst 
       (.I(mux_out_OBUF[3]),
        .O(mux_out[3]));
  OBUF \mux_out_OBUF[4]_inst 
       (.I(mux_out_OBUF[4]),
        .O(mux_out[4]));
  OBUF \mux_out_OBUF[5]_inst 
       (.I(mux_out_OBUF[5]),
        .O(mux_out[5]));
  OBUF \mux_out_OBUF[6]_inst 
       (.I(mux_out_OBUF[6]),
        .O(mux_out[6]));
  OBUF \mux_out_OBUF[7]_inst 
       (.I(mux_out_OBUF[7]),
        .O(mux_out[7]));
  OBUF \mux_out_OBUF[8]_inst 
       (.I(mux_out_OBUF[8]),
        .O(mux_out[8]));
  OBUF \mux_out_OBUF[9]_inst 
       (.I(mux_out_OBUF[9]),
        .O(mux_out[9]));
  IBUF pause_IBUF_inst
       (.I(pause),
        .O(pause_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
  IBUF \sel_IBUF[2]_inst 
       (.I(sel[2]),
        .O(sel_IBUF[2]));
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
