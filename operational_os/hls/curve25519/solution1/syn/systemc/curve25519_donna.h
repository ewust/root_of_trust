// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _curve25519_donna_HH_
#define _curve25519_donna_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cmult.h"
#include "crecip.h"
#include "fmul_2.h"
#include "fcontract.h"
#include "fexpand.h"
#include "p_memcpy_char.h"
#include "curve25519_donna_bp.h"
#include "curve25519_donna_x.h"
#include "curve25519_donna_z.h"
#include "curve25519_donna_e.h"
#include "curve25519_donna_dEe.h"
#include "curve25519_donna_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 8,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct curve25519_donna : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    curve25519_donna(sc_module_name name);
    SC_HAS_PROCESS(curve25519_donna);

    ~curve25519_donna();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    curve25519_donna_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* curve25519_donna_AXILiteS_s_axi_U;
    curve25519_donna_bp* bp_U;
    curve25519_donna_x* x_U;
    curve25519_donna_z* z_U;
    curve25519_donna_x* zmone_U;
    curve25519_donna_e* e_U;
    curve25519_donna_dEe* mypublic_U;
    curve25519_donna_dEe* secret_U;
    curve25519_donna_dEe* basepoint_U;
    cmult* grp_cmult_fu_216;
    crecip* grp_crecip_fu_234;
    fmul_2* grp_fmul_2_fu_249;
    fcontract* grp_fcontract_fu_256;
    fexpand* grp_fexpand_fu_262;
    p_memcpy_char* grp_p_memcpy_char_fu_268;
    p_memcpy_char* grp_p_memcpy_char_fu_275;
    p_memcpy_char* grp_p_memcpy_char_fu_282;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<16> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > mypublic_in_ce0;
    sc_signal< sc_lv<8> > mypublic_in_q0;
    sc_signal< sc_lv<8> > secret_in_q0;
    sc_signal< sc_lv<8> > basepoint_in_q0;
    sc_signal< sc_logic > mypublic_out_ce0;
    sc_signal< sc_logic > mypublic_out_we0;
    sc_signal< sc_logic > secret_out_ce0;
    sc_signal< sc_logic > secret_out_we0;
    sc_signal< sc_logic > basepoint_out_ce0;
    sc_signal< sc_logic > basepoint_out_we0;
    sc_signal< sc_lv<5> > indvarinc_fu_292_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > i_14_fu_315_p2;
    sc_signal< sc_lv<6> > i_14_reg_378;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > tmp_827_fu_321_p1;
    sc_signal< sc_lv<64> > tmp_827_reg_383;
    sc_signal< sc_lv<1> > exitcond_fu_309_p2;
    sc_signal< sc_lv<5> > e_addr_2_reg_393;
    sc_signal< sc_lv<4> > bp_address0;
    sc_signal< sc_logic > bp_ce0;
    sc_signal< sc_logic > bp_we0;
    sc_signal< sc_lv<26> > bp_q0;
    sc_signal< sc_lv<4> > x_address0;
    sc_signal< sc_logic > x_ce0;
    sc_signal< sc_logic > x_we0;
    sc_signal< sc_lv<64> > x_q0;
    sc_signal< sc_lv<4> > z_address0;
    sc_signal< sc_logic > z_ce0;
    sc_signal< sc_logic > z_we0;
    sc_signal< sc_lv<64> > z_d0;
    sc_signal< sc_lv<64> > z_q0;
    sc_signal< sc_lv<4> > zmone_address0;
    sc_signal< sc_logic > zmone_ce0;
    sc_signal< sc_logic > zmone_we0;
    sc_signal< sc_lv<64> > zmone_q0;
    sc_signal< sc_lv<5> > e_address0;
    sc_signal< sc_logic > e_ce0;
    sc_signal< sc_logic > e_we0;
    sc_signal< sc_lv<8> > e_d0;
    sc_signal< sc_lv<8> > e_q0;
    sc_signal< sc_lv<5> > e_address1;
    sc_signal< sc_logic > e_ce1;
    sc_signal< sc_logic > e_we1;
    sc_signal< sc_lv<8> > e_d1;
    sc_signal< sc_lv<8> > e_q1;
    sc_signal< sc_lv<5> > mypublic_address0;
    sc_signal< sc_logic > mypublic_ce0;
    sc_signal< sc_logic > mypublic_we0;
    sc_signal< sc_lv<8> > mypublic_d0;
    sc_signal< sc_lv<8> > mypublic_q0;
    sc_signal< sc_lv<5> > secret_address0;
    sc_signal< sc_logic > secret_ce0;
    sc_signal< sc_logic > secret_we0;
    sc_signal< sc_lv<8> > secret_q0;
    sc_signal< sc_lv<5> > basepoint_address0;
    sc_signal< sc_logic > basepoint_ce0;
    sc_signal< sc_logic > basepoint_we0;
    sc_signal< sc_lv<8> > basepoint_q0;
    sc_signal< sc_logic > grp_cmult_fu_216_ap_start;
    sc_signal< sc_logic > grp_cmult_fu_216_ap_done;
    sc_signal< sc_logic > grp_cmult_fu_216_ap_idle;
    sc_signal< sc_logic > grp_cmult_fu_216_ap_ready;
    sc_signal< sc_lv<4> > grp_cmult_fu_216_resultx_address0;
    sc_signal< sc_logic > grp_cmult_fu_216_resultx_ce0;
    sc_signal< sc_logic > grp_cmult_fu_216_resultx_we0;
    sc_signal< sc_lv<64> > grp_cmult_fu_216_resultx_d0;
    sc_signal< sc_lv<4> > grp_cmult_fu_216_resultz_address0;
    sc_signal< sc_logic > grp_cmult_fu_216_resultz_ce0;
    sc_signal< sc_logic > grp_cmult_fu_216_resultz_we0;
    sc_signal< sc_lv<64> > grp_cmult_fu_216_resultz_d0;
    sc_signal< sc_lv<5> > grp_cmult_fu_216_n_address0;
    sc_signal< sc_logic > grp_cmult_fu_216_n_ce0;
    sc_signal< sc_lv<4> > grp_cmult_fu_216_q_address0;
    sc_signal< sc_logic > grp_cmult_fu_216_q_ce0;
    sc_signal< sc_logic > grp_crecip_fu_234_ap_start;
    sc_signal< sc_logic > grp_crecip_fu_234_ap_done;
    sc_signal< sc_logic > grp_crecip_fu_234_ap_idle;
    sc_signal< sc_logic > grp_crecip_fu_234_ap_ready;
    sc_signal< sc_lv<4> > grp_crecip_fu_234_out_r_address0;
    sc_signal< sc_logic > grp_crecip_fu_234_out_r_ce0;
    sc_signal< sc_logic > grp_crecip_fu_234_out_r_we0;
    sc_signal< sc_lv<64> > grp_crecip_fu_234_out_r_d0;
    sc_signal< sc_lv<4> > grp_crecip_fu_234_z_address0;
    sc_signal< sc_logic > grp_crecip_fu_234_z_ce0;
    sc_signal< sc_logic > grp_fmul_2_fu_249_ap_start;
    sc_signal< sc_logic > grp_fmul_2_fu_249_ap_done;
    sc_signal< sc_logic > grp_fmul_2_fu_249_ap_idle;
    sc_signal< sc_logic > grp_fmul_2_fu_249_ap_ready;
    sc_signal< sc_lv<4> > grp_fmul_2_fu_249_output_r_address0;
    sc_signal< sc_logic > grp_fmul_2_fu_249_output_r_ce0;
    sc_signal< sc_logic > grp_fmul_2_fu_249_output_r_we0;
    sc_signal< sc_lv<64> > grp_fmul_2_fu_249_output_r_d0;
    sc_signal< sc_lv<4> > grp_fmul_2_fu_249_in_r_address0;
    sc_signal< sc_logic > grp_fmul_2_fu_249_in_r_ce0;
    sc_signal< sc_lv<4> > grp_fmul_2_fu_249_in2_address0;
    sc_signal< sc_logic > grp_fmul_2_fu_249_in2_ce0;
    sc_signal< sc_logic > grp_fcontract_fu_256_ap_start;
    sc_signal< sc_logic > grp_fcontract_fu_256_ap_done;
    sc_signal< sc_logic > grp_fcontract_fu_256_ap_idle;
    sc_signal< sc_logic > grp_fcontract_fu_256_ap_ready;
    sc_signal< sc_lv<5> > grp_fcontract_fu_256_output_r_address0;
    sc_signal< sc_logic > grp_fcontract_fu_256_output_r_ce0;
    sc_signal< sc_logic > grp_fcontract_fu_256_output_r_we0;
    sc_signal< sc_lv<8> > grp_fcontract_fu_256_output_r_d0;
    sc_signal< sc_lv<4> > grp_fcontract_fu_256_input_limbs_address0;
    sc_signal< sc_logic > grp_fcontract_fu_256_input_limbs_ce0;
    sc_signal< sc_logic > grp_fexpand_fu_262_ap_start;
    sc_signal< sc_logic > grp_fexpand_fu_262_ap_done;
    sc_signal< sc_logic > grp_fexpand_fu_262_ap_idle;
    sc_signal< sc_logic > grp_fexpand_fu_262_ap_ready;
    sc_signal< sc_lv<4> > grp_fexpand_fu_262_output_r_address0;
    sc_signal< sc_logic > grp_fexpand_fu_262_output_r_ce0;
    sc_signal< sc_logic > grp_fexpand_fu_262_output_r_we0;
    sc_signal< sc_lv<26> > grp_fexpand_fu_262_output_r_d0;
    sc_signal< sc_lv<5> > grp_fexpand_fu_262_input_r_address0;
    sc_signal< sc_logic > grp_fexpand_fu_262_input_r_ce0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_ap_start;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_ap_done;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_ap_idle;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_ap_ready;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_268_dst_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_dst_ce0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_dst_we0;
    sc_signal< sc_lv<8> > grp_p_memcpy_char_fu_268_dst_d0;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_268_src_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_268_src_ce0;
    sc_signal< sc_lv<8> > grp_p_memcpy_char_fu_268_src_q0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_ap_start;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_ap_done;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_ap_idle;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_ap_ready;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_275_dst_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_dst_ce0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_dst_we0;
    sc_signal< sc_lv<8> > grp_p_memcpy_char_fu_275_dst_d0;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_275_src_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_275_src_ce0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_ap_start;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_ap_done;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_ap_idle;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_ap_ready;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_282_dst_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_dst_ce0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_dst_we0;
    sc_signal< sc_lv<8> > grp_p_memcpy_char_fu_282_dst_d0;
    sc_signal< sc_lv<5> > grp_p_memcpy_char_fu_282_src_address0;
    sc_signal< sc_logic > grp_p_memcpy_char_fu_282_src_ce0;
    sc_signal< sc_lv<5> > invdar_reg_194;
    sc_signal< sc_lv<1> > tmp_s_fu_303_p2;
    sc_signal< sc_lv<6> > i_reg_205;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< bool > ap_block_state3_on_subcall_done;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_reg_grp_cmult_fu_216_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_reg_grp_crecip_fu_234_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_reg_grp_fmul_2_fu_249_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_reg_grp_fcontract_fu_256_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_reg_grp_fexpand_fu_262_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_reg_grp_p_memcpy_char_fu_268_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_reg_grp_p_memcpy_char_fu_275_ap_start;
    sc_signal< sc_logic > ap_reg_grp_p_memcpy_char_fu_282_ap_start;
    sc_signal< sc_lv<64> > tmp_fu_298_p1;
    sc_signal< bool > ap_block_state6_on_subcall_done;
    sc_signal< sc_lv<8> > tmp_825_fu_336_p3;
    sc_signal< sc_lv<8> > tmp_1063_cast_fu_357_p1;
    sc_signal< sc_lv<5> > tmp_629_fu_326_p4;
    sc_signal< sc_lv<6> > tmp_925_fu_345_p1;
    sc_signal< sc_lv<7> > tmp_826_fu_349_p3;
    sc_signal< sc_lv<16> > ap_NS_fsm;
    sc_signal< bool > ap_block_state8_on_subcall_done;
    sc_signal< sc_lv<32> > ap_return;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<16> ap_ST_fsm_state1;
    static const sc_lv<16> ap_ST_fsm_state2;
    static const sc_lv<16> ap_ST_fsm_state3;
    static const sc_lv<16> ap_ST_fsm_state4;
    static const sc_lv<16> ap_ST_fsm_state5;
    static const sc_lv<16> ap_ST_fsm_state6;
    static const sc_lv<16> ap_ST_fsm_state7;
    static const sc_lv<16> ap_ST_fsm_state8;
    static const sc_lv<16> ap_ST_fsm_state9;
    static const sc_lv<16> ap_ST_fsm_state10;
    static const sc_lv<16> ap_ST_fsm_state11;
    static const sc_lv<16> ap_ST_fsm_state12;
    static const sc_lv<16> ap_ST_fsm_state13;
    static const sc_lv<16> ap_ST_fsm_state14;
    static const sc_lv<16> ap_ST_fsm_state15;
    static const sc_lv<16> ap_ST_fsm_state16;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state3_on_subcall_done();
    void thread_ap_block_state6_on_subcall_done();
    void thread_ap_block_state8_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_basepoint_address0();
    void thread_basepoint_ce0();
    void thread_basepoint_out_ce0();
    void thread_basepoint_out_we0();
    void thread_basepoint_we0();
    void thread_bp_address0();
    void thread_bp_ce0();
    void thread_bp_we0();
    void thread_e_addr_2_reg_393();
    void thread_e_address0();
    void thread_e_address1();
    void thread_e_ce0();
    void thread_e_ce1();
    void thread_e_d0();
    void thread_e_d1();
    void thread_e_we0();
    void thread_e_we1();
    void thread_exitcond_fu_309_p2();
    void thread_grp_cmult_fu_216_ap_start();
    void thread_grp_crecip_fu_234_ap_start();
    void thread_grp_fcontract_fu_256_ap_start();
    void thread_grp_fexpand_fu_262_ap_start();
    void thread_grp_fmul_2_fu_249_ap_start();
    void thread_grp_p_memcpy_char_fu_268_ap_start();
    void thread_grp_p_memcpy_char_fu_268_src_q0();
    void thread_grp_p_memcpy_char_fu_275_ap_start();
    void thread_grp_p_memcpy_char_fu_282_ap_start();
    void thread_i_14_fu_315_p2();
    void thread_indvarinc_fu_292_p2();
    void thread_mypublic_address0();
    void thread_mypublic_ce0();
    void thread_mypublic_d0();
    void thread_mypublic_in_ce0();
    void thread_mypublic_out_ce0();
    void thread_mypublic_out_we0();
    void thread_mypublic_we0();
    void thread_secret_address0();
    void thread_secret_ce0();
    void thread_secret_out_ce0();
    void thread_secret_out_we0();
    void thread_secret_we0();
    void thread_tmp_1063_cast_fu_357_p1();
    void thread_tmp_629_fu_326_p4();
    void thread_tmp_825_fu_336_p3();
    void thread_tmp_826_fu_349_p3();
    void thread_tmp_827_fu_321_p1();
    void thread_tmp_925_fu_345_p1();
    void thread_tmp_fu_298_p1();
    void thread_tmp_s_fu_303_p2();
    void thread_x_address0();
    void thread_x_ce0();
    void thread_x_we0();
    void thread_z_address0();
    void thread_z_ce0();
    void thread_z_d0();
    void thread_z_we0();
    void thread_zmone_address0();
    void thread_zmone_ce0();
    void thread_zmone_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
