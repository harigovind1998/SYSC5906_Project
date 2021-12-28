// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1__HH__
#define __mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1__HH__
#include "mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2 mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U;

    SC_CTOR(mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1):  mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U ("mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U") {
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.clk(clk);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.rst(reset);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.ce(ce);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.in0(din0);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.in1(din1);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.in2(din2);
        mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
