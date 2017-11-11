# Legal Notice: (C)2017 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_internal_jtag|tckutap}
#set_clock_groups -asynchronous -group {altera_internal_jtag|tckutap}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	HW_Design_For_TheWatch_CPU 	HW_Design_For_TheWatch_CPU:*
set 	HW_Design_For_TheWatch_CPU_oci 	HW_Design_For_TheWatch_CPU_nios2_oci:the_HW_Design_For_TheWatch_CPU_nios2_oci
set 	HW_Design_For_TheWatch_CPU_oci_break 	HW_Design_For_TheWatch_CPU_nios2_oci_break:the_HW_Design_For_TheWatch_CPU_nios2_oci_break
set 	HW_Design_For_TheWatch_CPU_ocimem 	HW_Design_For_TheWatch_CPU_nios2_ocimem:the_HW_Design_For_TheWatch_CPU_nios2_ocimem
set 	HW_Design_For_TheWatch_CPU_oci_debug 	HW_Design_For_TheWatch_CPU_nios2_oci_debug:the_HW_Design_For_TheWatch_CPU_nios2_oci_debug
set 	HW_Design_For_TheWatch_CPU_wrapper 	HW_Design_For_TheWatch_CPU_jtag_debug_module_wrapper:the_HW_Design_For_TheWatch_CPU_jtag_debug_module_wrapper
set 	HW_Design_For_TheWatch_CPU_jtag_tck 	HW_Design_For_TheWatch_CPU_jtag_debug_module_tck:the_HW_Design_For_TheWatch_CPU_jtag_debug_module_tck
set 	HW_Design_For_TheWatch_CPU_jtag_sysclk 	HW_Design_For_TheWatch_CPU_jtag_debug_module_sysclk:the_HW_Design_For_TheWatch_CPU_jtag_debug_module_sysclk
set 	HW_Design_For_TheWatch_CPU_oci_path 	 [format "%s|%s" $HW_Design_For_TheWatch_CPU $HW_Design_For_TheWatch_CPU_oci]
set 	HW_Design_For_TheWatch_CPU_oci_break_path 	 [format "%s|%s" $HW_Design_For_TheWatch_CPU_oci_path $HW_Design_For_TheWatch_CPU_oci_break]
set 	HW_Design_For_TheWatch_CPU_ocimem_path 	 [format "%s|%s" $HW_Design_For_TheWatch_CPU_oci_path $HW_Design_For_TheWatch_CPU_ocimem]
set 	HW_Design_For_TheWatch_CPU_oci_debug_path 	 [format "%s|%s" $HW_Design_For_TheWatch_CPU_oci_path $HW_Design_For_TheWatch_CPU_oci_debug]
set 	HW_Design_For_TheWatch_CPU_jtag_tck_path 	 [format "%s|%s|%s" $HW_Design_For_TheWatch_CPU_oci_path $HW_Design_For_TheWatch_CPU_wrapper $HW_Design_For_TheWatch_CPU_jtag_tck]
set 	HW_Design_For_TheWatch_CPU_jtag_sysclk_path 	 [format "%s|%s|%s" $HW_Design_For_TheWatch_CPU_oci_path $HW_Design_For_TheWatch_CPU_wrapper $HW_Design_For_TheWatch_CPU_jtag_sysclk]
set 	HW_Design_For_TheWatch_CPU_jtag_sr 	 [format "%s|*sr" $HW_Design_For_TheWatch_CPU_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$HW_Design_For_TheWatch_CPU_oci_break_path|break_readreg*] -to [get_keepers *$HW_Design_For_TheWatch_CPU_jtag_sr*]
set_false_path -from [get_keepers *$HW_Design_For_TheWatch_CPU_oci_debug_path|*resetlatch]     -to [get_keepers *$HW_Design_For_TheWatch_CPU_jtag_sr[33]]
set_false_path -from [get_keepers *$HW_Design_For_TheWatch_CPU_oci_debug_path|monitor_ready]  -to [get_keepers *$HW_Design_For_TheWatch_CPU_jtag_sr[0]]
set_false_path -from [get_keepers *$HW_Design_For_TheWatch_CPU_oci_debug_path|monitor_error]  -to [get_keepers *$HW_Design_For_TheWatch_CPU_jtag_sr[34]]
set_false_path -from [get_keepers *$HW_Design_For_TheWatch_CPU_ocimem_path|*MonDReg*] -to [get_keepers *$HW_Design_For_TheWatch_CPU_jtag_sr*]
set_false_path -from *$HW_Design_For_TheWatch_CPU_jtag_sr*    -to *$HW_Design_For_TheWatch_CPU_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$HW_Design_For_TheWatch_CPU_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$HW_Design_For_TheWatch_CPU_oci_debug_path|monitor_go
