// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sha512_update_32_HH_
#define _sha512_update_32_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sha512_compress_32_1.h"
#include "sha512_compress_128.h"
#include "sha512_update_32_hbi.h"

namespace ap_rtl {

struct sha512_update_32 : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > md_length_i;
    sc_out< sc_lv<64> > md_length_o;
    sc_out< sc_logic > md_length_o_ap_vld;
    sc_out< sc_lv<3> > md_state_address0;
    sc_out< sc_logic > md_state_ce0;
    sc_out< sc_logic > md_state_we0;
    sc_out< sc_lv<64> > md_state_d0;
    sc_in< sc_lv<64> > md_state_q0;
    sc_in< sc_lv<64> > md_curlen_i;
    sc_out< sc_lv<64> > md_curlen_o;
    sc_out< sc_logic > md_curlen_o_ap_vld;
    sc_out< sc_lv<7> > md_buf_address0;
    sc_out< sc_logic > md_buf_ce0;
    sc_out< sc_logic > md_buf_we0;
    sc_out< sc_lv<8> > md_buf_d0;
    sc_in< sc_lv<8> > md_buf_q0;
    sc_out< sc_lv<5> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<8> > in_r_q0;


    // Module declarations
    sha512_update_32(sc_module_name name);
    SC_HAS_PROCESS(sha512_update_32);

    ~sha512_update_32();

    sc_trace_file* mVcdFile;

    sha512_update_32_hbi* temp_buf_U;
    sha512_compress_32_1* grp_sha512_compress_32_1_fu_352;
    sha512_compress_128* grp_sha512_compress_128_fu_364;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<64> > grp_fu_228_p2;
    sc_signal< sc_lv<64> > i_1_reg_241;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<8> > temp_index_2_reg_252;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<8> > temp_index_3_reg_255;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<64> > grp_fu_305_p2;
    sc_signal< sc_lv<64> > inlen_2_reg_290;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_fu_324_p2;
    sc_signal< sc_lv<1> > tmp_reg_452;
    sc_signal< sc_lv<64> > inlen_load_reg_464;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > md_curlen_read_7_reg_476;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > grp_fu_330_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_481;
    sc_signal< sc_lv<64> > n_fu_397_p3;
    sc_signal< sc_lv<64> > n_reg_489;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<9> > tmp_22_fu_404_p1;
    sc_signal< sc_lv<9> > tmp_22_reg_497;
    sc_signal< sc_lv<7> > tmp_23_fu_408_p1;
    sc_signal< sc_lv<7> > tmp_23_reg_502;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > tmp_s_reg_515;
    sc_signal< sc_lv<64> > tmp_9_fu_432_p1;
    sc_signal< sc_lv<64> > tmp_9_reg_522;
    sc_signal< sc_lv<64> > tmp_11_fu_437_p1;
    sc_signal< sc_lv<64> > tmp_11_reg_535;
    sc_signal< sc_lv<7> > temp_buf_address0;
    sc_signal< sc_logic > temp_buf_ce0;
    sc_signal< sc_logic > temp_buf_we0;
    sc_signal< sc_lv<8> > temp_buf_q0;
    sc_signal< sc_logic > temp_buf_ce1;
    sc_signal< sc_lv<8> > temp_buf_q1;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_ap_start;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_ap_done;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_ap_idle;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_ap_ready;
    sc_signal< sc_lv<3> > grp_sha512_compress_32_1_fu_352_md_state_address0;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_md_state_ce0;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_md_state_we0;
    sc_signal< sc_lv<64> > grp_sha512_compress_32_1_fu_352_md_state_d0;
    sc_signal< sc_lv<5> > grp_sha512_compress_32_1_fu_352_buf_r_address0;
    sc_signal< sc_logic > grp_sha512_compress_32_1_fu_352_buf_r_ce0;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_ap_start;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_ap_done;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_ap_idle;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_ap_ready;
    sc_signal< sc_lv<3> > grp_sha512_compress_128_fu_364_md_state_address0;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_md_state_ce0;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_md_state_we0;
    sc_signal< sc_lv<64> > grp_sha512_compress_128_fu_364_md_state_d0;
    sc_signal< sc_lv<7> > grp_sha512_compress_128_fu_364_buf_r_address0;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_buf_r_ce0;
    sc_signal< sc_lv<7> > grp_sha512_compress_128_fu_364_buf_r_address1;
    sc_signal< sc_logic > grp_sha512_compress_128_fu_364_buf_r_ce1;
    sc_signal< sc_lv<64> > p_01_idx_reg_172;
    sc_signal< sc_lv<64> > i_reg_184;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > temp_index_reg_195;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > temp_index_1_reg_206;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > p_pn_reg_217;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_reg_grp_sha512_compress_32_1_fu_352_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > or_cond_fu_392_p2;
    sc_signal< sc_logic > ap_reg_grp_sha512_compress_128_fu_364_ap_start;
    sc_signal< sc_lv<64> > sum2_cast_fu_417_p1;
    sc_signal< sc_lv<64> > tmp_5_cast_fu_427_p1;
    sc_signal< sc_lv<64> > inlen_fu_80;
    sc_signal< sc_lv<64> > grp_fu_228_p0;
    sc_signal< sc_lv<7> > tmp_24_fu_412_p1;
    sc_signal< sc_lv<9> > tmp_25_fu_422_p1;
    sc_signal< sc_lv<64> > grp_fu_228_p1;
    sc_signal< sc_lv<64> > grp_fu_305_p0;
    sc_signal< sc_lv<64> > grp_fu_305_p1;
    sc_signal< sc_lv<64> > grp_fu_330_p0;
    sc_signal< sc_lv<64> > grp_fu_330_p1;
    sc_signal< sc_lv<57> > tmp_21_fu_382_p4;
    sc_signal< sc_lv<1> > icmp_fu_336_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_341_p2;
    sc_signal< sc_lv<7> > sum2_cast_fu_417_p0;
    sc_signal< sc_lv<9> > tmp_5_cast_fu_427_p0;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_fsm_state1;
    static const sc_lv<17> ap_ST_fsm_state2;
    static const sc_lv<17> ap_ST_fsm_state3;
    static const sc_lv<17> ap_ST_fsm_state4;
    static const sc_lv<17> ap_ST_fsm_state5;
    static const sc_lv<17> ap_ST_fsm_state6;
    static const sc_lv<17> ap_ST_fsm_state7;
    static const sc_lv<17> ap_ST_fsm_state8;
    static const sc_lv<17> ap_ST_fsm_state9;
    static const sc_lv<17> ap_ST_fsm_state10;
    static const sc_lv<17> ap_ST_fsm_state11;
    static const sc_lv<17> ap_ST_fsm_state12;
    static const sc_lv<17> ap_ST_fsm_state13;
    static const sc_lv<17> ap_ST_fsm_state14;
    static const sc_lv<17> ap_ST_fsm_state15;
    static const sc_lv<17> ap_ST_fsm_state16;
    static const sc_lv<17> ap_ST_fsm_state17;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<64> ap_const_lv64_80;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_20;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_400;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<64> ap_const_lv64_FFFFFFFFFFFFFF80;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<57> ap_const_lv57_0;
    static const sc_lv<32> ap_const_lv32_3F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_228_p0();
    void thread_grp_fu_228_p1();
    void thread_grp_fu_228_p2();
    void thread_grp_fu_305_p0();
    void thread_grp_fu_305_p1();
    void thread_grp_fu_305_p2();
    void thread_grp_fu_330_p0();
    void thread_grp_fu_330_p1();
    void thread_grp_fu_330_p2();
    void thread_grp_sha512_compress_128_fu_364_ap_start();
    void thread_grp_sha512_compress_32_1_fu_352_ap_start();
    void thread_icmp_fu_336_p2();
    void thread_in_r_address0();
    void thread_in_r_ce0();
    void thread_md_buf_address0();
    void thread_md_buf_ce0();
    void thread_md_buf_d0();
    void thread_md_buf_we0();
    void thread_md_curlen_o();
    void thread_md_curlen_o_ap_vld();
    void thread_md_length_o();
    void thread_md_length_o_ap_vld();
    void thread_md_state_address0();
    void thread_md_state_ce0();
    void thread_md_state_d0();
    void thread_md_state_we0();
    void thread_n_fu_397_p3();
    void thread_or_cond_fu_392_p2();
    void thread_sum2_cast_fu_417_p0();
    void thread_sum2_cast_fu_417_p1();
    void thread_temp_buf_address0();
    void thread_temp_buf_ce0();
    void thread_temp_buf_ce1();
    void thread_temp_buf_we0();
    void thread_tmp_11_fu_437_p1();
    void thread_tmp_21_fu_382_p4();
    void thread_tmp_22_fu_404_p1();
    void thread_tmp_23_fu_408_p1();
    void thread_tmp_24_fu_412_p1();
    void thread_tmp_25_fu_422_p1();
    void thread_tmp_5_cast_fu_427_p0();
    void thread_tmp_5_cast_fu_427_p1();
    void thread_tmp_7_fu_341_p2();
    void thread_tmp_9_fu_432_p1();
    void thread_tmp_fu_324_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
