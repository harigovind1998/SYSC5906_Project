
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common22
Nodegraph reading from file.  2default:default2
00:00:012default:default2
00:00:012default:default2
5446.2772default:default2
0.0002default:defaultZ17-268h px? 
B
-Phase 1 Build RT Design | Checksum: fd6e9f33
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:17 ; elapsed = 00:00:14 . Memory (MB): peak = 5482.164 ; gain = 35.8872default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 4e311dba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 5500.078 ; gain = 53.8012default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 4e311dba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 5513.855 ; gain = 67.5782default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 4e311dba
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 5513.855 ; gain = 67.5782default:defaulth px? 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px? 
N
9Phase 2.4 Global Clock Net Routing | Checksum: 108810bb9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:27 ; elapsed = 00:00:23 . Memory (MB): peak = 5585.844 ; gain = 139.5662default:defaulth px? 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.5 Update Timing | Checksum: 17d6923e1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:20 ; elapsed = 00:00:55 . Memory (MB): peak = 5585.844 ; gain = 139.5662default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=4.426  | TNS=0.000  | WHS=-0.098 | THS=-42.198|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 15b9ec29f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:29 . Memory (MB): peak = 5749.062 ; gain = 302.7852default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 15b9ec29f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:18 ; elapsed = 00:01:31 . Memory (MB): peak = 5749.062 ; gain = 302.7852default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 229fbe6ab
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:53 ; elapsed = 00:01:52 . Memory (MB): peak = 5750.492 ; gain = 304.2152default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
?CLB routing congestion detected. Several CLBs have high routing utilization, which can impact timing closure. Congested CLBs and Nets are dumped in: %s180*route24
 iter_12_CongestedCLBsAndNets.txt2default:defaultZ35-443h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.428  | TNS=0.000  | WHS=-0.017 | THS=-0.202 |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1e7103cd1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:05:57 ; elapsed = 00:03:48 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.428  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1da2f844a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:13 ; elapsed = 00:03:59 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1da2f844a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:13 ; elapsed = 00:04:00 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 170e0e545
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:42 ; elapsed = 00:04:17 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.428  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 170e0e545
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:42 ; elapsed = 00:04:17 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 170e0e545
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:43 ; elapsed = 00:04:18 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 170e0e545
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:06:43 ; elapsed = 00:04:18 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1468d24a3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:04 ; elapsed = 00:04:31 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.428  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1ab049fd5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:05 ; elapsed = 00:04:32 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1ab049fd5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:05 ; elapsed = 00:04:32 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 1a5e30d32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:07 ; elapsed = 00:04:33 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 1a5e30d32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:08 ; elapsed = 00:04:34 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1a5e30d32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:17 ; elapsed = 00:04:44 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
o

Phase %s%s
101*constraints2
10 2default:default2!
Resolve XTalk2default:defaultZ18-101h px? 
B
-Phase 10 Resolve XTalk | Checksum: 1a5e30d32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:18 ; elapsed = 00:04:45 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
t

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=2.428  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 11 Post Router Timing | Checksum: 1a5e30d32
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:29 ; elapsed = 00:04:51 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:07:29 ; elapsed = 00:04:51 . Memory (MB): peak = 5754.152 ; gain = 307.8752default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1502default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:07:592default:default2
00:05:082default:default2
5754.1522default:default2
312.0202default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:322default:default2
00:00:102default:default2
5754.1522default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:152default:default2
00:00:142default:default2
5754.1522default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vivado_projects/MEC_HLS_implementation/MEC_HLS_implementation.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:01:002default:default2
00:00:372default:default2
5754.1522default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vivado_projects/MEC_HLS_implementation/MEC_HLS_implementation.runs/impl_1/design_1_wrapper_drc_routed.rpt?C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vivado_projects/MEC_HLS_implementation/MEC_HLS_implementation.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:572default:default2
00:00:312default:default2
5873.2032default:default2
119.0512default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vivado_projects/MEC_HLS_implementation/MEC_HLS_implementation.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt?C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vivado_projects/MEC_HLS_implementation/MEC_HLS_implementation.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:492default:default2
00:00:272default:default2
5873.2032default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1622default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:582default:default2
00:00:312default:default2
5889.0592default:default2
15.8552default:defaultZ17-268h px? 
?
%s4*runtcl2?
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: E, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:082default:default2
00:00:062default:default2
5961.7932default:default2
72.7342default:defaultZ17-268h px? 
?
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:092default:default2
00:00:082default:default2
5975.9022default:default2
14.1092default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: E, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record