# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HLS_Impl_1_1_system\_ide\scripts\debugger_mec_hls_impl_1_1-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\University\Masters\Year_1\SYSC5906\SYSC5906_Project\Vitis_sdk_projects\MEC_HLS_Impl_1_1_system\_ide\scripts\debugger_mec_hls_impl_1_1-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source G:/dev_tools/xilinx/Vitis/2021.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT232H 01512" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT232H-01512-14730093-0"}
fpga -file C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects/MEC_HLS_Impl_1_1/_ide/bitstream/MEC_HSL_impl_V1.1.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects/MEC_HSL_impl_V1_1/export/MEC_HSL_impl_V1_1/hw/MEC_HSL_impl_V1.1.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects/MEC_HSL_impl_V1_1/export/MEC_HSL_impl_V1_1/sw/MEC_HSL_impl_V1_1/boot/fsbl.elf
set bp_29_0_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_29_0_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_sdk_projects/MEC_HLS_Impl_1_1/Debug/MEC_HLS_Impl_1_1.elf
configparams force-mem-access 0
bpadd -addr &main
