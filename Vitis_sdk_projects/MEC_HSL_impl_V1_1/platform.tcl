# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HSL_impl_V1_1\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HSL_impl_V1_1\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MEC_HSL_impl_V1_1}\
-hw {C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vivado_projects\MEC_HLS_implementation\MEC_HSL_impl_V1.1.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {MEC_HSL_impl_V1_1}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
platform active {MEC_HSL_impl_V1_1}
bsp reload
bsp reload
platform generate -domains 
platform generate -domains 
