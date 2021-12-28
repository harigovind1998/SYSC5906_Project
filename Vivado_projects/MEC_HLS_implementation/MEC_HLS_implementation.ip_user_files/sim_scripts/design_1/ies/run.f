-makelib ies_lib/xilinx_vip -sv \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "G:/dev_tools/xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_10 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_10 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/bb17/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_control_s_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_gmem_m_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_mul_2ns_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_mul_3ns_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_mul_32s_6ns_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_mul_32s_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_udiv_32ns_32ns_32_36_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix_urem_32ns_32ns_32_36_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/0b6e/hdl/verilog/creat_mec_matrix.v" \
  "../../../bd/design_1/ip/design_1_creat_mec_matrix_0_0/sim/design_1_creat_mec_matrix_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_24 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_23 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_25 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/80cc/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/22b9/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s01tr_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s01sic_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s01a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_sarn_1.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_srn_1.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_sawn_1.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_swn_1.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_sbn_1.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_s02mmu_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_s02tr_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_s02sic_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_s02a2s_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_sarn_2.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_srn_2.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_sawn_2.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_swn_2.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_sbn_2.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m00s2a_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m00arn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m00rn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m00awn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m00wn_0.sv" \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m00bn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m00e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix_control_s_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix_gmem_m_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix_mul_2ns_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix_mul_3ns_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix_mul_32s_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/39d3/hdl/verilog/extend_matrix.v" \
  "../../../bd/design_1/ip/design_1_extend_matrix_0_0/sim/design_1_extend_matrix_0_0.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_control_s_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_gmem_m_axi.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_2ns_8s_2ns_8_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_3ns_8s_3ns_8_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_4ns_8s_4ns_8_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_5ns_8s_5ns_8_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mac_muladd_8s_8s_1ns_8_4_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_2ns_6s_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_3ns_3ns_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_3ns_6s_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_3ns_8s_8_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_4ns_6s_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_5ns_6s_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_6s_6s_6_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_8s_8s_8_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_32s_32s_32_1_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_v2_filter.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_mul_v2_I.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_udiv_1ns_32ns_1_5_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_udiv_3ns_32ns_2_7_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_udiv_4ns_32ns_3_8_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_udiv_5ns_32ns_4_9_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_udiv_6ns_32ns_5_10_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_urem_1ns_32ns_1_5_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_urem_3ns_32ns_2_7_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_urem_4ns_32ns_3_8_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_urem_5ns_32ns_4_9_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2_urem_6ns_32ns_5_10_seq_1.v" \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/e1fc/hdl/verilog/mul_v2.v" \
  "../../../bd/design_1/ip/design_1_mul_v2_0_0/sim/design_1_mul_v2_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_24 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_clock_converter_v2_1_23 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/axi_dwidth_converter_v2_1_24 \
  "../../../../MEC_HLS_implementation.gen/sources_1/bd/design_1/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
  "../../../bd/design_1/ip/design_1_auto_ds_1/sim/design_1_auto_ds_1.v" \
  "../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

