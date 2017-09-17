// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fe_sub_HH_
#define _fe_sub_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct fe_sub : public sc_module {
    // Port declarations 36
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > f_0_read;
    sc_in< sc_lv<32> > f_1_read;
    sc_in< sc_lv<32> > f_2_read;
    sc_in< sc_lv<32> > f_3_read;
    sc_in< sc_lv<32> > f_4_read;
    sc_in< sc_lv<32> > f_5_read;
    sc_in< sc_lv<32> > f_6_read;
    sc_in< sc_lv<32> > f_7_read;
    sc_in< sc_lv<32> > f_8_read;
    sc_in< sc_lv<32> > f_9_read;
    sc_in< sc_lv<32> > g_0_read;
    sc_in< sc_lv<32> > g_1_read;
    sc_in< sc_lv<32> > g_2_read;
    sc_in< sc_lv<32> > g_3_read;
    sc_in< sc_lv<32> > g_4_read;
    sc_in< sc_lv<32> > g_5_read;
    sc_in< sc_lv<32> > g_6_read;
    sc_in< sc_lv<32> > g_7_read;
    sc_in< sc_lv<32> > g_8_read;
    sc_in< sc_lv<32> > g_9_read;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_out< sc_lv<32> > ap_return_3;
    sc_out< sc_lv<32> > ap_return_4;
    sc_out< sc_lv<32> > ap_return_5;
    sc_out< sc_lv<32> > ap_return_6;
    sc_out< sc_lv<32> > ap_return_7;
    sc_out< sc_lv<32> > ap_return_8;
    sc_out< sc_lv<32> > ap_return_9;


    // Module declarations
    fe_sub(sc_module_name name);
    SC_HAS_PROCESS(fe_sub);

    ~fe_sub();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_184_p2;
    sc_signal< sc_lv<32> > h0_reg_195;
    sc_signal< sc_lv<32> > h1_reg_203;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > h2_reg_211;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > h3_reg_219;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > h4_reg_227;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > h5_reg_235;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > h6_reg_243;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > h7_reg_251;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > h8_reg_259;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<32> > grp_fu_184_p0;
    sc_signal< sc_lv<32> > grp_fu_184_p1;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<32> > ap_return_3_preg;
    sc_signal< sc_lv<32> > ap_return_4_preg;
    sc_signal< sc_lv<32> > ap_return_5_preg;
    sc_signal< sc_lv<32> > ap_return_6_preg;
    sc_signal< sc_lv<32> > ap_return_7_preg;
    sc_signal< sc_lv<32> > ap_return_8_preg;
    sc_signal< sc_lv<32> > ap_return_9_preg;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
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
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_ap_return_3();
    void thread_ap_return_4();
    void thread_ap_return_5();
    void thread_ap_return_6();
    void thread_ap_return_7();
    void thread_ap_return_8();
    void thread_ap_return_9();
    void thread_grp_fu_184_p0();
    void thread_grp_fu_184_p1();
    void thread_grp_fu_184_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
