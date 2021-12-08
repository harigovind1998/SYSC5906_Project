# This script segment is generated automatically by AutoPilot

set name creat_mec_matrix_mul_32s_6ns_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name creat_mec_matrix_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name creat_mec_matrix_udiv_32ns_32ns_32_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {udiv} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
}


set name creat_mec_matrix_urem_32ns_32ns_32_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
}


set name creat_mec_matrix_mul_2ns_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name creat_mec_matrix_mul_3ns_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
group_id_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
group_id_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
group_id_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
global_offset_x { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
global_offset_y { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
global_offset_z { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
A { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
wa { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 76
	offset_end 83
}
ha { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 84
	offset_end 91
}
B { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
wb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
hb { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
s { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
k { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
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
			id 78 \
			corename creat_mec_matrix_control_axilite \
			name creat_mec_matrix_control_s_axi \
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
	::AP::rtl_comp_handler creat_mec_matrix_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

# Native M_AXI:
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::m_axi_gen] == "::AESL_LIB_XILADAPTER::m_axi_gen"} {
eval "::AESL_LIB_XILADAPTER::m_axi_gen { \
    id 79 \
    corename {m_axi} \
    op interface \
    delay_budget 7.3 \ 
    is_flushable 0 \ 
    mem_style block \ 
    name {creat_mec_matrix_gmem_m_axi} \
} "
} else {
puts "@W \[IMPL-110\] Cannot find AXI interface model in the library. Ignored generation of AXI interface for 'gmem'"
}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler creat_mec_matrix_gmem_m_axi BINDTYPE interface TYPE interface_m_axi
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


