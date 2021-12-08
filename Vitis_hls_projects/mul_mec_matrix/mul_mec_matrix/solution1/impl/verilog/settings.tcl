# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module mul_mec_matrix
set language verilog
set family virtexuplus
set device xcvu11p
set package -flga2577
set speed -1-e
set clock ap_clk
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false
