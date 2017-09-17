// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "fe_add.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic fe_add::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic fe_add::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<10> fe_add::ap_ST_fsm_state1 = "1";
const sc_lv<10> fe_add::ap_ST_fsm_state2 = "10";
const sc_lv<10> fe_add::ap_ST_fsm_state3 = "100";
const sc_lv<10> fe_add::ap_ST_fsm_state4 = "1000";
const sc_lv<10> fe_add::ap_ST_fsm_state5 = "10000";
const sc_lv<10> fe_add::ap_ST_fsm_state6 = "100000";
const sc_lv<10> fe_add::ap_ST_fsm_state7 = "1000000";
const sc_lv<10> fe_add::ap_ST_fsm_state8 = "10000000";
const sc_lv<10> fe_add::ap_ST_fsm_state9 = "100000000";
const sc_lv<10> fe_add::ap_ST_fsm_state10 = "1000000000";
const sc_lv<32> fe_add::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> fe_add::ap_const_lv32_1 = "1";
const sc_lv<32> fe_add::ap_const_lv32_2 = "10";
const sc_lv<32> fe_add::ap_const_lv32_3 = "11";
const sc_lv<32> fe_add::ap_const_lv32_4 = "100";
const sc_lv<32> fe_add::ap_const_lv32_5 = "101";
const sc_lv<32> fe_add::ap_const_lv32_6 = "110";
const sc_lv<32> fe_add::ap_const_lv32_7 = "111";
const sc_lv<32> fe_add::ap_const_lv32_8 = "1000";
const sc_lv<32> fe_add::ap_const_lv32_9 = "1001";
const bool fe_add::ap_const_boolean_1 = true;

fe_add::fe_add(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( h0_reg_195 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( h1_reg_203 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( h2_reg_211 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_2_preg );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( h3_reg_219 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_3_preg );

    SC_METHOD(thread_ap_return_4);
    sensitive << ( h4_reg_227 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_4_preg );

    SC_METHOD(thread_ap_return_5);
    sensitive << ( h5_reg_235 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_5_preg );

    SC_METHOD(thread_ap_return_6);
    sensitive << ( h6_reg_243 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_6_preg );

    SC_METHOD(thread_ap_return_7);
    sensitive << ( h7_reg_251 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_7_preg );

    SC_METHOD(thread_ap_return_8);
    sensitive << ( h8_reg_259 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_8_preg );

    SC_METHOD(thread_ap_return_9);
    sensitive << ( grp_fu_184_p2 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_return_9_preg );

    SC_METHOD(thread_grp_fu_184_p0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( g_0_read );
    sensitive << ( g_1_read );
    sensitive << ( g_2_read );
    sensitive << ( g_3_read );
    sensitive << ( g_4_read );
    sensitive << ( g_5_read );
    sensitive << ( g_6_read );
    sensitive << ( g_7_read );
    sensitive << ( g_8_read );
    sensitive << ( g_9_read );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_grp_fu_184_p1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( f_0_read );
    sensitive << ( f_1_read );
    sensitive << ( f_2_read );
    sensitive << ( f_3_read );
    sensitive << ( f_4_read );
    sensitive << ( f_5_read );
    sensitive << ( f_6_read );
    sensitive << ( f_7_read );
    sensitive << ( f_8_read );
    sensitive << ( f_9_read );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );

    SC_METHOD(thread_grp_fu_184_p2);
    sensitive << ( grp_fu_184_p0 );
    sensitive << ( grp_fu_184_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_CS_fsm = "0000000001";
    ap_return_0_preg = "00000000000000000000000000000000";
    ap_return_1_preg = "00000000000000000000000000000000";
    ap_return_2_preg = "00000000000000000000000000000000";
    ap_return_3_preg = "00000000000000000000000000000000";
    ap_return_4_preg = "00000000000000000000000000000000";
    ap_return_5_preg = "00000000000000000000000000000000";
    ap_return_6_preg = "00000000000000000000000000000000";
    ap_return_7_preg = "00000000000000000000000000000000";
    ap_return_8_preg = "00000000000000000000000000000000";
    ap_return_9_preg = "00000000000000000000000000000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "fe_add_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, f_0_read, "(port)f_0_read");
    sc_trace(mVcdFile, f_1_read, "(port)f_1_read");
    sc_trace(mVcdFile, f_2_read, "(port)f_2_read");
    sc_trace(mVcdFile, f_3_read, "(port)f_3_read");
    sc_trace(mVcdFile, f_4_read, "(port)f_4_read");
    sc_trace(mVcdFile, f_5_read, "(port)f_5_read");
    sc_trace(mVcdFile, f_6_read, "(port)f_6_read");
    sc_trace(mVcdFile, f_7_read, "(port)f_7_read");
    sc_trace(mVcdFile, f_8_read, "(port)f_8_read");
    sc_trace(mVcdFile, f_9_read, "(port)f_9_read");
    sc_trace(mVcdFile, g_0_read, "(port)g_0_read");
    sc_trace(mVcdFile, g_1_read, "(port)g_1_read");
    sc_trace(mVcdFile, g_2_read, "(port)g_2_read");
    sc_trace(mVcdFile, g_3_read, "(port)g_3_read");
    sc_trace(mVcdFile, g_4_read, "(port)g_4_read");
    sc_trace(mVcdFile, g_5_read, "(port)g_5_read");
    sc_trace(mVcdFile, g_6_read, "(port)g_6_read");
    sc_trace(mVcdFile, g_7_read, "(port)g_7_read");
    sc_trace(mVcdFile, g_8_read, "(port)g_8_read");
    sc_trace(mVcdFile, g_9_read, "(port)g_9_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
    sc_trace(mVcdFile, ap_return_4, "(port)ap_return_4");
    sc_trace(mVcdFile, ap_return_5, "(port)ap_return_5");
    sc_trace(mVcdFile, ap_return_6, "(port)ap_return_6");
    sc_trace(mVcdFile, ap_return_7, "(port)ap_return_7");
    sc_trace(mVcdFile, ap_return_8, "(port)ap_return_8");
    sc_trace(mVcdFile, ap_return_9, "(port)ap_return_9");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_fu_184_p2, "grp_fu_184_p2");
    sc_trace(mVcdFile, h0_reg_195, "h0_reg_195");
    sc_trace(mVcdFile, h1_reg_203, "h1_reg_203");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, h2_reg_211, "h2_reg_211");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, h3_reg_219, "h3_reg_219");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, h4_reg_227, "h4_reg_227");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, h5_reg_235, "h5_reg_235");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, h6_reg_243, "h6_reg_243");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, h7_reg_251, "h7_reg_251");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, h8_reg_259, "h8_reg_259");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, grp_fu_184_p0, "grp_fu_184_p0");
    sc_trace(mVcdFile, grp_fu_184_p1, "grp_fu_184_p1");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_return_2_preg, "ap_return_2_preg");
    sc_trace(mVcdFile, ap_return_3_preg, "ap_return_3_preg");
    sc_trace(mVcdFile, ap_return_4_preg, "ap_return_4_preg");
    sc_trace(mVcdFile, ap_return_5_preg, "ap_return_5_preg");
    sc_trace(mVcdFile, ap_return_6_preg, "ap_return_6_preg");
    sc_trace(mVcdFile, ap_return_7_preg, "ap_return_7_preg");
    sc_trace(mVcdFile, ap_return_8_preg, "ap_return_8_preg");
    sc_trace(mVcdFile, ap_return_9_preg, "ap_return_9_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

fe_add::~fe_add() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void fe_add::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_0_preg = h0_reg_195.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_1_preg = h1_reg_203.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_2_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_2_preg = h2_reg_211.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_3_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_3_preg = h3_reg_219.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_4_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_4_preg = h4_reg_227.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_5_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_5_preg = h5_reg_235.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_6_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_6_preg = h6_reg_243.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_7_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_7_preg = h7_reg_251.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_8_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_8_preg = h8_reg_259.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_9_preg = ap_const_lv32_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
            ap_return_9_preg = grp_fu_184_p2.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        h0_reg_195 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        h1_reg_203 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        h2_reg_211 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        h3_reg_219 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        h4_reg_227 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        h5_reg_235 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        h6_reg_243 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        h7_reg_251 = grp_fu_184_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        h8_reg_259 = grp_fu_184_p2.read();
    }
}

void fe_add::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void fe_add::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void fe_add::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void fe_add::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void fe_add::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void fe_add::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void fe_add::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void fe_add::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void fe_add::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void fe_add::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void fe_add::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void fe_add::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void fe_add::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void fe_add::thread_ap_return_0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_0 = h0_reg_195.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void fe_add::thread_ap_return_1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_1 = h1_reg_203.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void fe_add::thread_ap_return_2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_2 = h2_reg_211.read();
    } else {
        ap_return_2 = ap_return_2_preg.read();
    }
}

void fe_add::thread_ap_return_3() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_3 = h3_reg_219.read();
    } else {
        ap_return_3 = ap_return_3_preg.read();
    }
}

void fe_add::thread_ap_return_4() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_4 = h4_reg_227.read();
    } else {
        ap_return_4 = ap_return_4_preg.read();
    }
}

void fe_add::thread_ap_return_5() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_5 = h5_reg_235.read();
    } else {
        ap_return_5 = ap_return_5_preg.read();
    }
}

void fe_add::thread_ap_return_6() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_6 = h6_reg_243.read();
    } else {
        ap_return_6 = ap_return_6_preg.read();
    }
}

void fe_add::thread_ap_return_7() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_7 = h7_reg_251.read();
    } else {
        ap_return_7 = ap_return_7_preg.read();
    }
}

void fe_add::thread_ap_return_8() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_8 = h8_reg_259.read();
    } else {
        ap_return_8 = ap_return_8_preg.read();
    }
}

void fe_add::thread_ap_return_9() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        ap_return_9 = grp_fu_184_p2.read();
    } else {
        ap_return_9 = ap_return_9_preg.read();
    }
}

void fe_add::thread_grp_fu_184_p0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        grp_fu_184_p0 = g_9_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        grp_fu_184_p0 = g_8_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_fu_184_p0 = g_7_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_184_p0 = g_6_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        grp_fu_184_p0 = g_5_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        grp_fu_184_p0 = g_4_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        grp_fu_184_p0 = g_3_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_184_p0 = g_2_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_184_p0 = g_1_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        grp_fu_184_p0 = g_0_read.read();
    } else {
        grp_fu_184_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void fe_add::thread_grp_fu_184_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        grp_fu_184_p1 = f_9_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        grp_fu_184_p1 = f_8_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_fu_184_p1 = f_7_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        grp_fu_184_p1 = f_6_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        grp_fu_184_p1 = f_5_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        grp_fu_184_p1 = f_4_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        grp_fu_184_p1 = f_3_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_184_p1 = f_2_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_184_p1 = f_1_read.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        grp_fu_184_p1 = f_0_read.read();
    } else {
        grp_fu_184_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void fe_add::thread_grp_fu_184_p2() {
    grp_fu_184_p2 = (!grp_fu_184_p0.read().is_01() || !grp_fu_184_p1.read().is_01())? sc_lv<32>(): (sc_biguint<32>(grp_fu_184_p0.read()) + sc_biguint<32>(grp_fu_184_p1.read()));
}

void fe_add::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<10>) ("XXXXXXXXXX");
            break;
    }
}

}

