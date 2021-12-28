# This script segment is generated automatically by AutoPilot

set name mul_v2_mul_6s_6s_6_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mul_v2_mul_8s_8s_8_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mul_v2_udiv_1ns_32ns_1_5_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {udiv} IMPL {auto_seq} LATENCY 4 ALLOW_PRAGMA 1
}


set name mul_v2_urem_1ns_32ns_1_5_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto_seq} LATENCY 4 ALLOW_PRAGMA 1
}


set name mul_v2_mul_3ns_8s_8_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mul_v2_mul_3ns_3ns_6_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mul_v2_mul_3ns_3ns_5_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mul_v2_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 21
set name mul_v2_mac_muladd_3ns_8s_8ns_8_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 3
set in0_signed 0
set in1_width 8
set in1_signed 1
set in2_width 8
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 8
set arg_lists {i0 {3 0 +} i1 {8 1 +} m {8 1 +} i2 {8 0 +} p {8 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 22
set name mul_v2_ama_addmuladd_3ns_8ns_8s_8ns_8_4_1
set corename simcore_ama
set op ama
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 3
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 8
set in2_signed 1
set in3_width 8
set in3_signed 0
set ce_width 1
set ce_signed 0
set out_width 8
set arg_lists {i0 {3 0 +} i1 {8 0 +} s {8 0 +} i2 {8 1 +} m {8 1 +} i3 {8 0 +} p {8 0 +} c_expval {c} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op ama
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    in3_width ${in3_width} \
    in3_signed ${in3_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 23
set name mul_v2_mac_muladd_3ns_3ns_6ns_6_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 3
set in0_signed 0
set in1_width 3
set in1_signed 0
set in2_width 6
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 6
set arg_lists {i0 {3 0 +} i1 {3 0 +} m {6 1 +} i2 {6 0 +} p {6 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 43
set hasByteEnable 0
set MemName mul_v2_mul_v2_I
set CoreName ap_simcore_mem
set PortList { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 }
set DataWd 32
set AddrRange 152
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000001" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000001" "00000000000000000000000000000010" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000000" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000010" "00000000000000000000000000000000" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000000" "00000000000000000000000000000001" "00000000000000000000000000000011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.237
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 17 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 17 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 44
set hasByteEnable 0
set MemName mul_v2_mul_v2_filter
set CoreName ap_simcore_mem
set PortList { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 }
set DataWd 32
set AddrRange 36
set AddrWd 6
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000011" "00000000000000000000000000000100" "00000000000000000000000000000100" "00000000000000000000000000000011" "00000000000000000000000000000001" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000100" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000100" "00000000000000000000000000000010" "00000000000000000000000000000100" "00000000000000000000000000000001" "00000000000000000000000000000011" "00000000000000000000000000000010" "00000000000000000000000000000100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.237
set ClkPeriod 10
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 17 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 17 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
Inp { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
wi { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 28
	offset_end 35
}
hi { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 36
	offset_end 43
}
ci { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
wk { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 52
	offset_end 59
}
nk { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 60
	offset_end 67
}
O { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
wo { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
ho { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
co { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
s { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 45 \
			corename mul_v2_control_axilite \
			name mul_v2_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_mode default \
			is_flushable 0 \
			is_datawidth64 0 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mul_v2_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 46 \
    corename {m_axi} \
    op interface \
    delay_budget 7.3 \ 
    is_flushable 0 \ 
    mem_style block \ 
    name {mul_v2_gmem_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'gmem'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mul_v2_gmem_m_axi BINDTYPE interface TYPE interface_m_axi
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName mul_v2_flow_control_loop_pipe_U
set CompName mul_v2_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mul_v2_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


