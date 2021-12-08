############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project extend_matrix
set_top extend_matrix
add_files extend_matrix/extend_matrix.cl
open_solution "extend_matrix_soln" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./extend_matrix/extend_matrix_soln/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
