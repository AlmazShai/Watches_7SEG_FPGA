////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : schematic.vf
// /___/   /\     Timestamp : 01/16/2022 22:32:04
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -verilog schematic.vf -w E:/projects/Xilinx/OMDAZZ_project_RTC/XilinxISE/schematic.sch
//Design Name: schematic
//Device: spartan6
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module schematic(clk, 
                 key1, 
                 key2, 
                 key3, 
                 key4, 
                 rst, 
                 A, 
                 B, 
                 C, 
                 CE, 
                 D, 
                 DOT, 
                 E, 
                 F, 
                 G, 
                 SCLK, 
                 SEL0, 
                 SEL1, 
                 SEL2, 
                 SEL3, 
                 SEL4, 
                 SEL5, 
                 data);

    input clk;
    input key1;
    input key2;
    input key3;
    input key4;
    input rst;
   output A;
   output B;
   output C;
   output CE;
   output D;
   output DOT;
   output E;
   output F;
   output G;
   output SCLK;
   output SEL0;
   output SEL1;
   output SEL2;
   output SEL3;
   output SEL4;
   output SEL5;
    inout data;
   
   wire [3:0] XLXN_1;
   wire [3:0] XLXN_2;
   wire [3:0] XLXN_3;
   wire [3:0] XLXN_4;
   wire [3:0] XLXN_5;
   wire [3:0] XLXN_7;
   wire [3:0] XLXN_8;
   wire [3:0] XLXN_9;
   wire [3:0] XLXN_10;
   wire [3:0] XLXN_11;
   wire [3:0] XLXN_12;
   wire [3:0] XLXN_13;
   wire [3:0] XLXN_14;
   wire [3:0] XLXN_15;
   wire [3:0] XLXN_16;
   wire [3:0] XLXN_17;
   wire [3:0] XLXN_18;
   wire [3:0] XLXN_19;
   wire [7:0] XLXN_20;
   wire XLXN_21;
   wire XLXN_24;
   wire [7:0] XLXN_27;
   wire [7:0] XLXN_34;
   wire XLXN_67;
   wire XLXN_68;
   wire [2:0] XLXN_69;
   
   I2C_serial  XLXI_1 (.adress_in(XLXN_34[7:0]), 
                      .clk(clk), 
                      .data_in(XLXN_27[7:0]), 
                      .rst(rst), 
                      .send(XLXN_24), 
                      .ce(CE), 
                      .data_out(XLXN_20[7:0]), 
                      .ready(XLXN_21), 
                      .sclk(SCLK), 
                      .data(data));
   set_get_time  XLXI_2 (.clk(clk), 
                        .key1(key1), 
                        .key2(key2), 
                        .key3(key3), 
                        .key4(key4), 
                        .ready(XLXN_21), 
                        .rst(rst), 
                        .RTC_data(XLXN_20[7:0]), 
                        .adress(XLXN_34[7:0]), 
                        .blink(XLXN_69[2:0]), 
                        .data(XLXN_27[7:0]), 
                        .days(XLXN_15[3:0]), 
                        .days10(XLXN_14[3:0]), 
                        .hours(XLXN_9[3:0]), 
                        .hours10(XLXN_8[3:0]), 
                        .minutes(XLXN_11[3:0]), 
                        .minutes10(XLXN_10[3:0]), 
                        .mouths(XLXN_17[3:0]), 
                        .mouths10(XLXN_16[3:0]), 
                        .seconds(XLXN_13[3:0]), 
                        .seconds10(XLXN_12[3:0]), 
                        .send(XLXN_24), 
                        .time_date_sw(XLXN_68), 
                        .time_date_sw_en(XLXN_67), 
                        .years(XLXN_19[3:0]), 
                        .years10(XLXN_18[3:0]));
   switch_led  XLXI_3 (.clk(clk), 
                      .number0(XLXN_1[3:0]), 
                      .number1(XLXN_2[3:0]), 
                      .number2(XLXN_3[3:0]), 
                      .number3(XLXN_4[3:0]), 
                      .number4(XLXN_5[3:0]), 
                      .number5(XLXN_7[3:0]), 
                      .rst(rst), 
                      .A(A), 
                      .B(B), 
                      .C(C), 
                      .D(D), 
                      .DOT(DOT), 
                      .E(E), 
                      .F(F), 
                      .G(G), 
                      .SEL0(SEL0), 
                      .SEL1(SEL1), 
                      .SEL2(SEL2), 
                      .SEL3(SEL3), 
                      .SEL4(SEL4), 
                      .SEL5(SEL5));
   time_date_mux  XLXI_5 (.blink(XLXN_69[2:0]), 
                         .clk(clk), 
                         .days(XLXN_15[3:0]), 
                         .days10(XLXN_14[3:0]), 
                         .hours(XLXN_9[3:0]), 
                         .hours10(XLXN_8[3:0]), 
                         .minutes(XLXN_11[3:0]), 
                         .minutes10(XLXN_10[3:0]), 
                         .mouths(XLXN_17[3:0]), 
                         .mouths10(XLXN_16[3:0]), 
                         .rst(rst), 
                         .seconds(XLXN_13[3:0]), 
                         .seconds10(XLXN_12[3:0]), 
                         .time_date_sw(XLXN_68), 
                         .time_date_sw_en(XLXN_67), 
                         .years(XLXN_19[3:0]), 
                         .years10(XLXN_18[3:0]), 
                         .number0(XLXN_1[3:0]), 
                         .number1(XLXN_2[3:0]), 
                         .number2(XLXN_3[3:0]), 
                         .number3(XLXN_4[3:0]), 
                         .number4(XLXN_5[3:0]), 
                         .number5(XLXN_7[3:0]));
endmodule
