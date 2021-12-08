set SynModuleInfo {
  {SRCNAME extend_matrix MODELNAME extend_matrix RTLNAME extend_matrix IS_TOP 1
    SUBMODULES {
      {MODELNAME extend_matrix_mul_32s_32s_32_1_1 RTLNAME extend_matrix_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME extend_matrix_mul_2ns_32s_32_1_1 RTLNAME extend_matrix_mul_2ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME extend_matrix_mul_3ns_32s_32_1_1 RTLNAME extend_matrix_mul_3ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME extend_matrix_control_s_axi RTLNAME extend_matrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME extend_matrix_gmem_m_axi RTLNAME extend_matrix_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
