############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project extend_matrix
set_top extend_matrix
add_files extend_matrix/extend_matrix.cl
open_solution "extend_matrix_soln" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -format sysgen -output C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_hls_projects/extend_matrix/extend_matrix_soln/extend_matrix.zip -rtl verilog -vivado_clock 10
#source "./extend_matrix/extend_matrix_soln/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format sysgen
