# This script segment is generated automatically by AutoPilot

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


