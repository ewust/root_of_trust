// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fe_cmov_1 (
        f_0_read,
        f_1_read,
        f_2_read,
        f_3_read,
        f_4_read,
        f_5_read,
        f_6_read,
        f_7_read,
        f_8_read,
        f_9_read,
        p_read,
        p_read11,
        p_read12,
        p_read13,
        p_read14,
        p_read15,
        p_read16,
        p_read17,
        p_read18,
        p_read19,
        b,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9
);


input  [31:0] f_0_read;
input  [31:0] f_1_read;
input  [31:0] f_2_read;
input  [31:0] f_3_read;
input  [31:0] f_4_read;
input  [31:0] f_5_read;
input  [31:0] f_6_read;
input  [31:0] f_7_read;
input  [31:0] f_8_read;
input  [31:0] f_9_read;
input  [31:0] p_read;
input  [31:0] p_read11;
input  [31:0] p_read12;
input  [31:0] p_read13;
input  [31:0] p_read14;
input  [31:0] p_read15;
input  [31:0] p_read16;
input  [31:0] p_read17;
input  [31:0] p_read18;
input  [31:0] p_read19;
input  [0:0] b;
output  [31:0] ap_return_0;
output  [31:0] ap_return_1;
output  [31:0] ap_return_2;
output  [31:0] ap_return_3;
output  [31:0] ap_return_4;
output  [31:0] ap_return_5;
output  [31:0] ap_return_6;
output  [31:0] ap_return_7;
output  [31:0] ap_return_8;
output  [31:0] ap_return_9;

wire   [31:0] x0_fu_198_p2;
wire   [31:0] b_assign_cast_fu_258_p3;
wire   [31:0] x1_fu_204_p2;
wire   [31:0] x2_fu_210_p2;
wire   [31:0] x3_fu_216_p2;
wire   [31:0] x4_fu_222_p2;
wire   [31:0] x5_fu_228_p2;
wire   [31:0] x6_fu_234_p2;
wire   [31:0] x7_fu_240_p2;
wire   [31:0] x8_fu_246_p2;
wire   [31:0] x9_fu_252_p2;
wire   [31:0] x0_1_fu_266_p2;
wire   [31:0] x1_1_fu_272_p2;
wire   [31:0] x2_1_fu_278_p2;
wire   [31:0] x3_1_fu_284_p2;
wire   [31:0] x4_1_fu_290_p2;
wire   [31:0] x5_1_fu_296_p2;
wire   [31:0] x6_1_fu_302_p2;
wire   [31:0] x7_1_fu_308_p2;
wire   [31:0] x8_1_fu_314_p2;
wire   [31:0] x9_1_fu_320_p2;
wire   [31:0] f_0_write_assign_fu_326_p2;
wire   [31:0] f_1_write_assign_fu_332_p2;
wire   [31:0] f_2_write_assign_fu_338_p2;
wire   [31:0] f_3_write_assign_fu_344_p2;
wire   [31:0] f_4_write_assign_fu_350_p2;
wire   [31:0] f_5_write_assign_fu_356_p2;
wire   [31:0] f_6_write_assign_fu_362_p2;
wire   [31:0] f_7_write_assign_fu_368_p2;
wire   [31:0] f_8_write_assign_fu_374_p2;
wire   [31:0] f_9_write_assign_fu_380_p2;

assign ap_return_0 = f_0_write_assign_fu_326_p2;

assign ap_return_1 = f_1_write_assign_fu_332_p2;

assign ap_return_2 = f_2_write_assign_fu_338_p2;

assign ap_return_3 = f_3_write_assign_fu_344_p2;

assign ap_return_4 = f_4_write_assign_fu_350_p2;

assign ap_return_5 = f_5_write_assign_fu_356_p2;

assign ap_return_6 = f_6_write_assign_fu_362_p2;

assign ap_return_7 = f_7_write_assign_fu_368_p2;

assign ap_return_8 = f_8_write_assign_fu_374_p2;

assign ap_return_9 = f_9_write_assign_fu_380_p2;

assign b_assign_cast_fu_258_p3 = ((b[0:0] === 1'b1) ? 32'd4294967295 : 32'd0);

assign f_0_write_assign_fu_326_p2 = (x0_1_fu_266_p2 ^ f_0_read);

assign f_1_write_assign_fu_332_p2 = (x1_1_fu_272_p2 ^ f_1_read);

assign f_2_write_assign_fu_338_p2 = (x2_1_fu_278_p2 ^ f_2_read);

assign f_3_write_assign_fu_344_p2 = (x3_1_fu_284_p2 ^ f_3_read);

assign f_4_write_assign_fu_350_p2 = (x4_1_fu_290_p2 ^ f_4_read);

assign f_5_write_assign_fu_356_p2 = (x5_1_fu_296_p2 ^ f_5_read);

assign f_6_write_assign_fu_362_p2 = (x6_1_fu_302_p2 ^ f_6_read);

assign f_7_write_assign_fu_368_p2 = (x7_1_fu_308_p2 ^ f_7_read);

assign f_8_write_assign_fu_374_p2 = (x8_1_fu_314_p2 ^ f_8_read);

assign f_9_write_assign_fu_380_p2 = (x9_1_fu_320_p2 ^ f_9_read);

assign x0_1_fu_266_p2 = (x0_fu_198_p2 & b_assign_cast_fu_258_p3);

assign x0_fu_198_p2 = (p_read ^ f_0_read);

assign x1_1_fu_272_p2 = (x1_fu_204_p2 & b_assign_cast_fu_258_p3);

assign x1_fu_204_p2 = (p_read11 ^ f_1_read);

assign x2_1_fu_278_p2 = (x2_fu_210_p2 & b_assign_cast_fu_258_p3);

assign x2_fu_210_p2 = (p_read12 ^ f_2_read);

assign x3_1_fu_284_p2 = (x3_fu_216_p2 & b_assign_cast_fu_258_p3);

assign x3_fu_216_p2 = (p_read13 ^ f_3_read);

assign x4_1_fu_290_p2 = (x4_fu_222_p2 & b_assign_cast_fu_258_p3);

assign x4_fu_222_p2 = (p_read14 ^ f_4_read);

assign x5_1_fu_296_p2 = (x5_fu_228_p2 & b_assign_cast_fu_258_p3);

assign x5_fu_228_p2 = (p_read15 ^ f_5_read);

assign x6_1_fu_302_p2 = (x6_fu_234_p2 & b_assign_cast_fu_258_p3);

assign x6_fu_234_p2 = (p_read16 ^ f_6_read);

assign x7_1_fu_308_p2 = (x7_fu_240_p2 & b_assign_cast_fu_258_p3);

assign x7_fu_240_p2 = (p_read17 ^ f_7_read);

assign x8_1_fu_314_p2 = (x8_fu_246_p2 & b_assign_cast_fu_258_p3);

assign x8_fu_246_p2 = (p_read18 ^ f_8_read);

assign x9_1_fu_320_p2 = (x9_fu_252_p2 & b_assign_cast_fu_258_p3);

assign x9_fu_252_p2 = (p_read19 ^ f_9_read);

endmodule //fe_cmov_1
