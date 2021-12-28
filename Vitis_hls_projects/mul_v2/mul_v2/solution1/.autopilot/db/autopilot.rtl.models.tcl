set SynModuleInfo {
  {SRCNAME mul_v2 MODELNAME mul_v2 RTLNAME mul_v2 IS_TOP 1
    SUBMODULES {
      {MODELNAME mul_v2_mul_6s_6s_6_1_1 RTLNAME mul_v2_mul_6s_6s_6_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_8s_8s_8_1_1 RTLNAME mul_v2_mul_8s_8s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_udiv_1ns_32ns_1_5_seq_1 RTLNAME mul_v2_udiv_1ns_32ns_1_5_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_urem_1ns_32ns_1_5_seq_1 RTLNAME mul_v2_urem_1ns_32ns_1_5_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_3ns_8s_8_1_1 RTLNAME mul_v2_mul_3ns_8s_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_3ns_3ns_6_1_1 RTLNAME mul_v2_mul_3ns_3ns_6_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_3ns_3ns_5_1_1 RTLNAME mul_v2_mul_3ns_3ns_5_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_32s_32s_32_1_1 RTLNAME mul_v2_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mac_muladd_3ns_8s_8ns_8_4_1 RTLNAME mul_v2_mac_muladd_3ns_8s_8ns_8_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_ama_addmuladd_3ns_8ns_8s_8ns_8_4_1 RTLNAME mul_v2_ama_addmuladd_3ns_8ns_8s_8ns_8_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1 RTLNAME mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_v2_I RTLNAME mul_v2_mul_v2_I BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_mul_v2_filter RTLNAME mul_v2_mul_v2_filter BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mul_v2_control_s_axi RTLNAME mul_v2_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mul_v2_gmem_m_axi RTLNAME mul_v2_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
      {MODELNAME mul_v2_flow_control_loop_pipe RTLNAME mul_v2_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mul_v2_flow_control_loop_pipe_U}
    }
  }
}
