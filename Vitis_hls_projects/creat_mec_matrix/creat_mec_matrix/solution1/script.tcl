############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project creat_mec_matrix
set_top creat_mec_matrix
add_files creat_mec_matrix/creat_mec_matrix.cl
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format sysgen -output C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_hls_projects/creat_mec_matrix/creat_mec_matrix/creat_mec_matrix.zip
#source "./creat_mec_matrix/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen
