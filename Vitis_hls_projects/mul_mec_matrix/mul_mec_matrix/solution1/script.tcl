############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mul_mec_matrix
set_top mul_mec_matrix
add_files mul_mec_matrix/mul_mec_matrix.cl
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format sysgen -output C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Generated_ip/mul_mec_matrix.zip -rtl verilog -vivado_clock 10
#source "./mul_mec_matrix/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Generated_ip/mul_mec_matrix.zip
