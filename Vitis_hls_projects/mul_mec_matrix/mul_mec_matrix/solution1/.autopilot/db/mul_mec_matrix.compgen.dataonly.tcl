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
I { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
wi { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 76
	offset_end 83
}
hi { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 84
	offset_end 91
}
ci { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 92
	offset_end 99
}
K { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
wk { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
nk { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
O { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 128
	offset_end 139
}
wo { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 140
	offset_end 147
}
ho { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 148
	offset_end 155
}
co { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 156
	offset_end 163
}
s { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 164
	offset_end 171
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


