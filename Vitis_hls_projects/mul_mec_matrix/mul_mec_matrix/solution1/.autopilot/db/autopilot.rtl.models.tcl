set SynModuleInfo {
  {SRCNAME mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L MODELNAME mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L RTLNAME mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L
    SUBMODULES {
      {MODELNAME mul_mec_matrix_udiv_32ns_32ns_32_36_1 RTLNAME mul_mec_matrix_udiv_32ns_32ns_32_36_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_urem_32ns_32ns_32_36_1 RTLNAME mul_mec_matrix_urem_32ns_32ns_32_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_mul_32s_32s_32_1_1 RTLNAME mul_mec_matrix_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_flow_control_loop_pipe_sequential_init RTLNAME mul_mec_matrix_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mul_mec_matrix_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME mul_mec_matrix MODELNAME mul_mec_matrix RTLNAME mul_mec_matrix IS_TOP 1
    SUBMODULES {
      {MODELNAME mul_mec_matrix_udiv_32ns_32s_32_36_seq_1 RTLNAME mul_mec_matrix_udiv_32ns_32s_32_36_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_mul_2ns_32s_32_1_1 RTLNAME mul_mec_matrix_mul_2ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_mul_3ns_32s_32_1_1 RTLNAME mul_mec_matrix_mul_3ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mul_mec_matrix_control_s_axi RTLNAME mul_mec_matrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME mul_mec_matrix_gmem_m_axi RTLNAME mul_mec_matrix_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
