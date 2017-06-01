// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fsquare_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        in_r_address0,
        in_r_ce0,
        in_r_q0
);

parameter    ap_ST_fsm_state1 = 42'd1;
parameter    ap_ST_fsm_state2 = 42'd2;
parameter    ap_ST_fsm_state3 = 42'd4;
parameter    ap_ST_fsm_state4 = 42'd8;
parameter    ap_ST_fsm_state5 = 42'd16;
parameter    ap_ST_fsm_state6 = 42'd32;
parameter    ap_ST_fsm_state7 = 42'd64;
parameter    ap_ST_fsm_state8 = 42'd128;
parameter    ap_ST_fsm_state9 = 42'd256;
parameter    ap_ST_fsm_state10 = 42'd512;
parameter    ap_ST_fsm_state11 = 42'd1024;
parameter    ap_ST_fsm_state12 = 42'd2048;
parameter    ap_ST_fsm_state13 = 42'd4096;
parameter    ap_ST_fsm_state14 = 42'd8192;
parameter    ap_ST_fsm_state15 = 42'd16384;
parameter    ap_ST_fsm_state16 = 42'd32768;
parameter    ap_ST_fsm_state17 = 42'd65536;
parameter    ap_ST_fsm_state18 = 42'd131072;
parameter    ap_ST_fsm_state19 = 42'd262144;
parameter    ap_ST_fsm_state20 = 42'd524288;
parameter    ap_ST_fsm_state21 = 42'd1048576;
parameter    ap_ST_fsm_state22 = 42'd2097152;
parameter    ap_ST_fsm_state23 = 42'd4194304;
parameter    ap_ST_fsm_state24 = 42'd8388608;
parameter    ap_ST_fsm_state25 = 42'd16777216;
parameter    ap_ST_fsm_state26 = 42'd33554432;
parameter    ap_ST_fsm_state27 = 42'd67108864;
parameter    ap_ST_fsm_state28 = 42'd134217728;
parameter    ap_ST_fsm_state29 = 42'd268435456;
parameter    ap_ST_fsm_state30 = 42'd536870912;
parameter    ap_ST_fsm_state31 = 42'd1073741824;
parameter    ap_ST_fsm_state32 = 42'd2147483648;
parameter    ap_ST_fsm_state33 = 42'd4294967296;
parameter    ap_ST_fsm_state34 = 42'd8589934592;
parameter    ap_ST_fsm_state35 = 42'd17179869184;
parameter    ap_ST_fsm_state36 = 42'd34359738368;
parameter    ap_ST_fsm_state37 = 42'd68719476736;
parameter    ap_ST_fsm_state38 = 42'd137438953472;
parameter    ap_ST_fsm_state39 = 42'd274877906944;
parameter    ap_ST_fsm_state40 = 42'd549755813888;
parameter    ap_ST_fsm_state41 = 42'd1099511627776;
parameter    ap_ST_fsm_state42 = 42'd2199023255552;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [63:0] output_r_d0;
output  [3:0] in_r_address0;
output   in_r_ce0;
input  [63:0] in_r_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg output_r_we0;

(* fsm_encoding = "none" *) reg   [41:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_306_p2;
reg   [63:0] reg_284;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state24;
reg   [63:0] reg_295;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state9;
reg   [63:0] reg_329;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state37;
reg   [63:0] reg_340;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_351;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state31;
wire   [0:0] tmp_i_fu_628_p2;
reg   [63:0] reg_362;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state28;
reg   [63:0] reg_418;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state41;
wire   [63:0] t_q0;
reg   [63:0] reg_487;
wire   [63:0] t_q1;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state39;
reg   [63:0] reg_494;
wire   [37:0] grp_fu_477_p4;
reg   [37:0] reg_500;
wire    ap_CS_fsm_state3;
wire   [4:0] t_addr_22_reg_805;
wire   [4:0] t_addr_32_reg_864;
reg   [63:0] t_load_38_reg_874;
wire   [4:0] t_addr_37_reg_881;
wire   [4:0] t_addr_34_reg_887;
wire   [4:0] t_addr_36_reg_892;
wire   [4:0] t_addr_2_reg_898;
reg   [63:0] t_load_2_reg_904;
reg   [4:0] t_addr_38_reg_912;
reg   [4:0] t_addr_39_reg_917;
reg   [4:0] t_addr_40_reg_923;
wire   [38:0] tmp_399_i_i_fu_709_p4;
reg   [38:0] tmp_399_i_i_reg_928;
wire   [63:0] tmp_i3_fu_795_p1;
reg   [63:0] tmp_i3_reg_936;
wire   [0:0] exitcond_i_fu_789_p2;
reg   [4:0] t_address0;
reg    t_ce0;
reg    t_we0;
reg   [63:0] t_d0;
reg   [4:0] t_address1;
reg    t_ce1;
reg    t_we1;
reg   [63:0] t_d1;
wire    grp_fsquare_inner_1_fu_469_ap_start;
wire    grp_fsquare_inner_1_fu_469_ap_done;
wire    grp_fsquare_inner_1_fu_469_ap_idle;
wire    grp_fsquare_inner_1_fu_469_ap_ready;
wire   [4:0] grp_fsquare_inner_1_fu_469_output_r_address0;
wire    grp_fsquare_inner_1_fu_469_output_r_ce0;
wire    grp_fsquare_inner_1_fu_469_output_r_we0;
wire   [63:0] grp_fsquare_inner_1_fu_469_output_r_d0;
wire   [3:0] grp_fsquare_inner_1_fu_469_in_r_address0;
wire    grp_fsquare_inner_1_fu_469_in_r_ce0;
wire   [3:0] i_i_phi_fu_288_p4;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state35;
wire   [3:0] i_i2_phi_fu_299_p4;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state42;
reg    ap_reg_grp_fsquare_inner_1_fu_469_ap_start;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_i_11_fu_634_p1;
wire   [63:0] tmp_369_i_fu_645_p1;
wire   [63:0] tmp_373_i_fu_687_p1;
wire    ap_CS_fsm_state27;
wire   [63:0] tmp_367_i_fu_675_p2;
wire   [63:0] tmp_372_i_fu_727_p2;
wire   [63:0] tmp_381_i_fu_777_p2;
reg   [63:0] grp_fu_306_p0;
wire   [63:0] tmp_333_fu_504_p2;
wire   [63:0] tmp_335_fu_518_p2;
wire   [63:0] tmp_337_fu_532_p2;
wire   [63:0] tmp_339_fu_546_p2;
wire   [63:0] tmp_341_fu_560_p2;
wire   [63:0] tmp_343_fu_574_p2;
wire   [63:0] tmp_345_fu_588_p2;
wire   [63:0] tmp_347_fu_602_p2;
wire   [63:0] tmp_349_fu_614_p2;
wire   [63:0] tmp_i10_i_cast_cast_fu_700_p3;
wire   [63:0] tmp_354_fu_745_p2;
wire  signed [63:0] over_4_fu_784_p1;
reg   [63:0] grp_fu_306_p1;
wire   [63:0] tmp_334_fu_511_p2;
wire   [63:0] tmp_336_fu_525_p2;
wire   [63:0] tmp_338_fu_539_p2;
wire   [63:0] tmp_340_fu_553_p2;
wire   [63:0] tmp_342_fu_567_p2;
wire   [63:0] tmp_344_fu_581_p2;
wire   [63:0] tmp_346_fu_595_p2;
wire   [63:0] tmp_348_fu_608_p2;
wire   [63:0] tmp_350_fu_621_p2;
wire   [63:0] tmp_i_i_cast_cast_fu_658_p3;
wire  signed [63:0] over_fu_682_p1;
wire  signed [63:0] over_3_fu_734_p1;
wire   [63:0] tmp_353_fu_738_p2;
wire   [63:0] tmp_i13_i_cast_cast_fu_760_p3;
wire   [3:0] tmp_i_fu_628_p0;
wire   [3:0] tmp_i_11_fu_634_p0;
wire   [3:0] tmp_368_i_fu_639_p0;
wire   [3:0] tmp_368_i_fu_639_p2;
wire   [0:0] tmp_351_fu_650_p3;
wire   [63:0] tmp_366_i_fu_667_p3;
wire   [3:0] tmp_373_i_fu_687_p0;
wire   [0:0] tmp_352_fu_692_p3;
wire   [63:0] tmp_371_i_fu_719_p3;
wire   [0:0] tmp_355_fu_752_p3;
wire   [63:0] tmp_380_i_fu_769_p3;
wire   [3:0] exitcond_i_fu_789_p0;
wire   [3:0] tmp_i3_fu_795_p0;
reg   [41:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 42'd1;
#0 ap_reg_grp_fsquare_inner_1_fu_469_ap_start = 1'b0;
end

fsquare_t #(
    .DataWidth( 64 ),
    .AddressRange( 19 ),
    .AddressWidth( 5 ))
t_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(t_address0),
    .ce0(t_ce0),
    .we0(t_we0),
    .d0(t_d0),
    .q0(t_q0),
    .address1(t_address1),
    .ce1(t_ce1),
    .we1(t_we1),
    .d1(t_d1),
    .q1(t_q1)
);

fsquare_inner_1 grp_fsquare_inner_1_fu_469(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fsquare_inner_1_fu_469_ap_start),
    .ap_done(grp_fsquare_inner_1_fu_469_ap_done),
    .ap_idle(grp_fsquare_inner_1_fu_469_ap_idle),
    .ap_ready(grp_fsquare_inner_1_fu_469_ap_ready),
    .output_r_address0(grp_fsquare_inner_1_fu_469_output_r_address0),
    .output_r_ce0(grp_fsquare_inner_1_fu_469_output_r_ce0),
    .output_r_we0(grp_fsquare_inner_1_fu_469_output_r_we0),
    .output_r_d0(grp_fsquare_inner_1_fu_469_output_r_d0),
    .in_r_address0(grp_fsquare_inner_1_fu_469_in_r_address0),
    .in_r_ce0(grp_fsquare_inner_1_fu_469_in_r_ce0),
    .in_r_q0(in_r_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_fsquare_inner_1_fu_469_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_reg_grp_fsquare_inner_1_fu_469_ap_start <= 1'b1;
        end else if ((1'b1 == grp_fsquare_inner_1_fu_469_ap_ready)) begin
            ap_reg_grp_fsquare_inner_1_fu_469_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        reg_284 <= reg_351;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        reg_284 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_284 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        reg_295 <= reg_418;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        reg_295 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_295 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state39))) begin
        reg_487 <= t_q1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state36))) begin
        reg_487 <= t_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state37))) begin
        reg_329 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state33))) begin
        reg_340 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1)))) begin
        reg_351 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_362 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state41))) begin
        reg_418 <= grp_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_494 <= t_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state39))) begin
        reg_500 <= {{grp_fu_306_p2[63:26]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1))) begin
        t_addr_38_reg_912[3 : 0] <= tmp_i_11_fu_634_p1[3 : 0];
        t_addr_39_reg_917[3 : 1] <= tmp_369_i_fu_645_p1[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        t_addr_40_reg_923[3 : 0] <= tmp_373_i_fu_687_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        t_load_2_reg_904 <= t_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        t_load_38_reg_874 <= t_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        tmp_399_i_i_reg_928 <= {{grp_fu_306_p2[63:25]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state41) & (exitcond_i_fu_789_p2 == 1'd0))) begin
        tmp_i3_reg_936[3 : 0] <= tmp_i3_fu_795_p1[3 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state41) & (1'd1 == exitcond_i_fu_789_p2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state41) & (1'd1 == exitcond_i_fu_789_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_306_p0 = i_i2_phi_fu_299_p4;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_306_p0 = over_4_fu_784_p1;
    end else if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state39))) begin
        grp_fu_306_p0 = reg_418;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_306_p0 = tmp_354_fu_745_p2;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_306_p0 = tmp_i10_i_cast_cast_fu_700_p3;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_306_p0 = reg_487;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_306_p0 = i_i_phi_fu_288_p4;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_306_p0 = tmp_349_fu_614_p2;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_306_p0 = t_load_2_reg_904;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_306_p0 = tmp_347_fu_602_p2;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_306_p0 = reg_494;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_306_p0 = tmp_345_fu_588_p2;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_306_p0 = reg_284;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_306_p0 = tmp_343_fu_574_p2;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_306_p0 = t_q0;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_306_p0 = reg_362;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_306_p0 = tmp_341_fu_560_p2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_306_p0 = reg_351;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_306_p0 = tmp_339_fu_546_p2;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_306_p0 = reg_340;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_306_p0 = tmp_337_fu_532_p2;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9))) begin
        grp_fu_306_p0 = reg_329;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_306_p0 = tmp_335_fu_518_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_306_p0 = reg_295;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_306_p0 = tmp_333_fu_504_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_306_p0 = t_q1;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_306_p1 = 4'd1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_306_p1 = tmp_i13_i_cast_cast_fu_760_p3;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_306_p1 = tmp_353_fu_738_p2;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_306_p1 = t_q1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_306_p1 = over_3_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_306_p1 = over_fu_682_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_306_p1 = tmp_i_i_cast_cast_fu_658_p3;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_306_p1 = 4'd2;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_306_p1 = tmp_350_fu_621_p2;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_306_p1 = tmp_348_fu_608_p2;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_306_p1 = t_load_38_reg_874;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_306_p1 = tmp_346_fu_595_p2;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_306_p1 = reg_494;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_306_p1 = reg_362;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_306_p1 = tmp_344_fu_581_p2;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state40))) begin
        grp_fu_306_p1 = reg_487;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_306_p1 = reg_351;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_306_p1 = tmp_342_fu_567_p2;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_306_p1 = reg_340;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_306_p1 = tmp_340_fu_553_p2;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_306_p1 = reg_329;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_306_p1 = tmp_338_fu_539_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_306_p1 = reg_295;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_306_p1 = tmp_336_fu_525_p2;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state24))) begin
        grp_fu_306_p1 = reg_284;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_306_p1 = tmp_334_fu_511_p2;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16))) begin
        grp_fu_306_p1 = t_q0;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        t_address0 = tmp_i3_fu_795_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        t_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        t_address0 = t_addr_39_reg_917;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        t_address0 = t_addr_38_reg_912;
    end else if (((1'b1 == ap_CS_fsm_state36) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd0)))) begin
        t_address0 = t_addr_37_reg_881;
    end else if (((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1))) begin
        t_address0 = tmp_i_11_fu_634_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        t_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        t_address0 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        t_address0 = t_addr_32_reg_864;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        t_address0 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        t_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        t_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        t_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        t_address0 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        t_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        t_address0 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        t_address0 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        t_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_address0 = grp_fsquare_inner_1_fu_469_output_r_address0;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state40))) begin
        t_address1 = t_addr_36_reg_892;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        t_address1 = t_addr_40_reg_923;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        t_address1 = tmp_373_i_fu_687_p1;
    end else if (((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1))) begin
        t_address1 = tmp_369_i_fu_645_p1;
    end else if (((1'b1 == ap_CS_fsm_state30) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd0)))) begin
        t_address1 = t_addr_2_reg_898;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        t_address1 = t_addr_34_reg_887;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        t_address1 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        t_address1 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        t_address1 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        t_address1 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        t_address1 = t_addr_22_reg_805;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        t_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        t_address1 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        t_address1 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        t_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        t_address1 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        t_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        t_address1 = 64'd8;
    end else begin
        t_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1)) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state27) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd0)))) begin
        t_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_ce0 = grp_fsquare_inner_1_fu_469_output_r_ce0;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd1)) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state27) | ((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd0)))) begin
        t_ce1 = 1'b1;
    end else begin
        t_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        t_d0 = tmp_381_i_fu_777_p2;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        t_d0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        t_d0 = tmp_372_i_fu_727_p2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        t_d0 = tmp_367_i_fu_675_p2;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        t_d0 = grp_fu_306_p2;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        t_d0 = reg_351;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        t_d0 = reg_295;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        t_d0 = reg_340;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23))) begin
        t_d0 = reg_329;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_d0 = grp_fsquare_inner_1_fu_469_output_r_d0;
    end else begin
        t_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state40))) begin
        t_d1 = grp_fu_306_p2;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        t_d1 = 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state27))) begin
        t_d1 = reg_284;
    end else begin
        t_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state27))) begin
        t_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_we0 = grp_fsquare_inner_1_fu_469_output_r_we0;
    end else begin
        t_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state27))) begin
        t_we1 = 1'b1;
    end else begin
        t_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_fsquare_inner_1_fu_469_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            if (((1'b1 == ap_CS_fsm_state31) & (tmp_i_fu_628_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            if (((1'b1 == ap_CS_fsm_state41) & (1'd1 == exitcond_i_fu_789_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state42;
            end
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];

assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];

assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];

assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];

assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];

assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];

assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];

assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];

assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];

assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];

assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];

assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];

assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];

assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];

assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond_i_fu_789_p0 = reg_295;

assign exitcond_i_fu_789_p2 = ((exitcond_i_fu_789_p0 == 4'd10) ? 1'b1 : 1'b0);

assign grp_fsquare_inner_1_fu_469_ap_start = ap_reg_grp_fsquare_inner_1_fu_469_ap_start;

assign grp_fu_306_p2 = (grp_fu_306_p0 + grp_fu_306_p1);

assign grp_fu_477_p4 = {{grp_fu_306_p2[63:26]}};

assign i_i2_phi_fu_299_p4 = reg_295;

assign i_i_phi_fu_288_p4 = reg_284;

assign in_r_address0 = grp_fsquare_inner_1_fu_469_in_r_address0;

assign in_r_ce0 = grp_fsquare_inner_1_fu_469_in_r_ce0;

assign output_r_address0 = tmp_i3_reg_936;

assign output_r_d0 = t_q0;

assign over_3_fu_734_p1 = $signed(tmp_399_i_i_reg_928);

assign over_4_fu_784_p1 = $signed(reg_500);

assign over_fu_682_p1 = $signed(reg_500);

assign t_addr_22_reg_805 = 64'd8;

assign t_addr_2_reg_898 = 64'd0;

assign t_addr_32_reg_864 = 64'd3;

assign t_addr_34_reg_887 = 64'd2;

assign t_addr_36_reg_892 = 64'd1;

assign t_addr_37_reg_881 = 64'd10;

assign tmp_333_fu_504_p2 = reg_487 << 64'd4;

assign tmp_334_fu_511_p2 = reg_487 << 64'd1;

assign tmp_335_fu_518_p2 = reg_487 << 64'd4;

assign tmp_336_fu_525_p2 = reg_487 << 64'd1;

assign tmp_337_fu_532_p2 = reg_487 << 64'd4;

assign tmp_338_fu_539_p2 = reg_487 << 64'd1;

assign tmp_339_fu_546_p2 = reg_487 << 64'd4;

assign tmp_340_fu_553_p2 = reg_487 << 64'd1;

assign tmp_341_fu_560_p2 = reg_487 << 64'd4;

assign tmp_342_fu_567_p2 = reg_487 << 64'd1;

assign tmp_343_fu_574_p2 = reg_487 << 64'd4;

assign tmp_344_fu_581_p2 = reg_487 << 64'd1;

assign tmp_345_fu_588_p2 = reg_494 << 64'd4;

assign tmp_346_fu_595_p2 = reg_494 << 64'd1;

assign tmp_347_fu_602_p2 = t_load_38_reg_874 << 64'd4;

assign tmp_348_fu_608_p2 = t_load_38_reg_874 << 64'd1;

assign tmp_349_fu_614_p2 = reg_487 << 64'd4;

assign tmp_350_fu_621_p2 = reg_487 << 64'd1;

assign tmp_351_fu_650_p3 = t_q0[32'd63];

assign tmp_352_fu_692_p3 = reg_340[32'd63];

assign tmp_353_fu_738_p2 = reg_487 << 64'd4;

assign tmp_354_fu_745_p2 = reg_487 << 64'd1;

assign tmp_355_fu_752_p3 = reg_418[32'd63];

assign tmp_366_i_fu_667_p3 = {{grp_fu_477_p4}, {26'd0}};

assign tmp_367_i_fu_675_p2 = (t_q0 - tmp_366_i_fu_667_p3);

assign tmp_368_i_fu_639_p0 = reg_284;

assign tmp_368_i_fu_639_p2 = (tmp_368_i_fu_639_p0 | 4'd1);

assign tmp_369_i_fu_645_p1 = tmp_368_i_fu_639_p2;

assign tmp_371_i_fu_719_p3 = {{tmp_399_i_i_fu_709_p4}, {25'd0}};

assign tmp_372_i_fu_727_p2 = (reg_340 - tmp_371_i_fu_719_p3);

assign tmp_373_i_fu_687_p0 = reg_351;

assign tmp_373_i_fu_687_p1 = tmp_373_i_fu_687_p0;

assign tmp_380_i_fu_769_p3 = {{grp_fu_477_p4}, {26'd0}};

assign tmp_381_i_fu_777_p2 = (reg_418 - tmp_380_i_fu_769_p3);

assign tmp_399_i_i_fu_709_p4 = {{grp_fu_306_p2[63:25]}};

assign tmp_i10_i_cast_cast_fu_700_p3 = ((tmp_352_fu_692_p3[0:0] === 1'b1) ? 64'd33554431 : 64'd0);

assign tmp_i13_i_cast_cast_fu_760_p3 = ((tmp_355_fu_752_p3[0:0] === 1'b1) ? 64'd67108863 : 64'd0);

assign tmp_i3_fu_795_p0 = reg_295;

assign tmp_i3_fu_795_p1 = tmp_i3_fu_795_p0;

assign tmp_i_11_fu_634_p0 = reg_284;

assign tmp_i_11_fu_634_p1 = tmp_i_11_fu_634_p0;

assign tmp_i_fu_628_p0 = reg_284;

assign tmp_i_fu_628_p2 = ((tmp_i_fu_628_p0 < 4'd10) ? 1'b1 : 1'b0);

assign tmp_i_i_cast_cast_fu_658_p3 = ((tmp_351_fu_650_p3[0:0] === 1'b1) ? 64'd67108863 : 64'd0);

always @ (posedge ap_clk) begin
    t_addr_38_reg_912[4] <= 1'b0;
    t_addr_39_reg_917[0] <= 1'b1;
    t_addr_39_reg_917[4] <= 1'b0;
    t_addr_40_reg_923[4] <= 1'b0;
    tmp_i3_reg_936[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //fsquare_1
