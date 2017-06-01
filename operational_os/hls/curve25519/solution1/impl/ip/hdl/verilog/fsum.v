// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fsum (
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
        output_r_q0,
        output_r_address1,
        output_r_ce1,
        output_r_we1,
        output_r_d1,
        output_r_q1,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        in_r_address1,
        in_r_ce1,
        in_r_q1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] output_r_address0;
output   output_r_ce0;
output   output_r_we0;
output  [63:0] output_r_d0;
input  [63:0] output_r_q0;
output  [4:0] output_r_address1;
output   output_r_ce1;
output   output_r_we1;
output  [63:0] output_r_d1;
input  [63:0] output_r_q1;
output  [4:0] in_r_address0;
output   in_r_ce0;
input  [63:0] in_r_q0;
output  [4:0] in_r_address1;
output   in_r_ce1;
input  [63:0] in_r_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] output_r_address0;
reg output_r_ce0;
reg output_r_we0;
reg[4:0] output_r_address1;
reg output_r_ce1;
reg output_r_we1;
reg in_r_ce0;
reg in_r_ce1;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [4:0] output_addr_reg_122;
wire    ap_CS_fsm_state2;
wire   [0:0] tmp_fu_75_p2;
reg   [4:0] output_addr_1_reg_132;
wire   [3:0] i_2_fu_99_p2;
reg   [3:0] i_2_reg_142;
reg   [3:0] i_reg_64;
wire    ap_CS_fsm_state3;
wire   [63:0] tmp_s_fu_81_p1;
wire   [63:0] tmp_8_fu_93_p1;
wire   [3:0] tmp_7_fu_87_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_64 <= i_2_reg_142;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_64 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_75_p2 == 1'd1))) begin
        i_2_reg_142 <= i_2_fu_99_p2;
        output_addr_1_reg_132[3 : 1] <= tmp_8_fu_93_p1[3 : 1];
        output_addr_reg_122[3 : 0] <= tmp_s_fu_81_p1[3 : 0];
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (tmp_fu_75_p2 == 1'd0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_75_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_r_ce1 = 1'b1;
    end else begin
        in_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_address0 = output_addr_reg_122;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_r_address0 = tmp_s_fu_81_p1;
    end else begin
        output_r_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_address1 = output_addr_1_reg_132;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        output_r_address1 = tmp_8_fu_93_p1;
    end else begin
        output_r_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3))) begin
        output_r_ce1 = 1'b1;
    end else begin
        output_r_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_we0 = 1'b1;
    end else begin
        output_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        output_r_we1 = 1'b1;
    end else begin
        output_r_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_75_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign i_2_fu_99_p2 = (i_reg_64 + 4'd2);

assign in_r_address0 = tmp_s_fu_81_p1;

assign in_r_address1 = tmp_8_fu_93_p1;

assign output_r_d0 = (in_r_q0 + output_r_q0);

assign output_r_d1 = (in_r_q1 + output_r_q1);

assign tmp_7_fu_87_p2 = (i_reg_64 | 4'd1);

assign tmp_8_fu_93_p1 = tmp_7_fu_87_p2;

assign tmp_fu_75_p2 = ((i_reg_64 < 4'd10) ? 1'b1 : 1'b0);

assign tmp_s_fu_81_p1 = i_reg_64;

always @ (posedge ap_clk) begin
    output_addr_reg_122[4] <= 1'b0;
    output_addr_1_reg_132[0] <= 1'b1;
    output_addr_1_reg_132[4] <= 1'b0;
end

endmodule //fsum
