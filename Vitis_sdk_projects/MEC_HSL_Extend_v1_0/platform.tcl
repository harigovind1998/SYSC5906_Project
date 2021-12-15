# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HSL_Extend_v1_0\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HSL_Extend_v1_0\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MEC_HSL_Extend_v1_0}\
-hw {C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vivado_projects\MEC_HLS_Extend\MEC_HLS_Extend_V1_0.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects}

platform write
platform generate -domains 
platform active {MEC_HSL_Extend_v1_0}
platform generate
domain active {zynqmp_pmufw}
bsp reload
bsp reload
domain active {zynqmp_fsbl}
bsp reload
platform generate -domains 
platform generate
