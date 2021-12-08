set SynModuleInfo {
  {SRCNAME creat_mec_matrix MODELNAME creat_mec_matrix RTLNAME creat_mec_matrix IS_TOP 1
    SUBMODULES {
      {MODELNAME creat_mec_matrix_mul_32s_6ns_32_1_1 RTLNAME creat_mec_matrix_mul_32s_6ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_mul_32s_32s_32_1_1 RTLNAME creat_mec_matrix_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_udiv_32ns_32ns_32_36_1 RTLNAME creat_mec_matrix_udiv_32ns_32ns_32_36_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_urem_32ns_32ns_32_36_1 RTLNAME creat_mec_matrix_urem_32ns_32ns_32_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_mul_2ns_32s_32_1_1 RTLNAME creat_mec_matrix_mul_2ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_mul_3ns_32s_32_1_1 RTLNAME creat_mec_matrix_mul_3ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME creat_mec_matrix_control_s_axi RTLNAME creat_mec_matrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME creat_mec_matrix_gmem_m_axi RTLNAME creat_mec_matrix_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
