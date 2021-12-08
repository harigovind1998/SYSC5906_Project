# This script segment is generated automatically by AutoPilot

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


