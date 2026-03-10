
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/SYSTEM/DFT/SYS_TOP.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

############################  Search PATH ################################

lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys
lappend search_path /home/IC/SYSTEM/RTL/ALU
lappend search_path /home/IC/SYSTEM/RTL/ASYC_FIFO
lappend search_path /home/IC/SYSTEM/RTL/CLKDIV_MUX
lappend search_path /home/IC/SYSTEM/RTL/ClkDiv
lappend search_path /home/IC/SYSTEM/RTL/Clock_Gating
lappend search_path /home/IC/SYSTEM/RTL/DATA_SYNC
lappend search_path /home/IC/SYSTEM/RTL/RegFile
lappend search_path /home/IC/SYSTEM/RTL/RST_SYNC
lappend search_path /home/IC/SYSTEM/RTL/SYS_CTRL
lappend search_path /home/IC/SYSTEM/RTL/UART_TOP/UART_RX
lappend search_path /home/IC/SYSTEM/RTL/UART_TOP/UART_TX
lappend search_path /home/IC/SYSTEM/RTL/UART_TOP
lappend search_path /home/IC/SYSTEM/RTL/DFT_TOP
######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]
## Read Reference Design Files
read_verilog -container Ref "ALU.v"
read_verilog -container Ref "synchronizer.v"
read_verilog -container Ref "FIFO_MEM.v"
read_verilog -container Ref "FIFO_rptr_n_empty.v"
read_verilog -container Ref "FIFO_wptr_n_full.v"
read_verilog -container Ref "ASYC_FIFO.v"
read_verilog -container Ref "CLKDIV_MUX.v"
read_verilog -container Ref "ClkDiv.v"
read_verilog -container Ref "CLK_GATE.v"
read_verilog -container Ref "DATA_SYNC.v"
read_verilog -container Ref "RegFile.v"
read_verilog -container Ref "RST_SYNC.v"
read_verilog -container Ref "SYS_CTRL.v"
read_verilog -container Ref "data_sampling.v"
read_verilog -container Ref "deserializer.v"
read_verilog -container Ref "edge_bit_counter.v"
read_verilog -container Ref "parityCheck.v"
read_verilog -container Ref "StopCheck.v"
read_verilog -container Ref "strtCheck.v"
read_verilog -container Ref "UART_RX.v"
read_verilog -container Ref "FSM_RX.v"
read_verilog -container Ref "UMUX.v"
read_verilog -container Ref "parityCalc.v"
read_verilog -container Ref "serializer.v"
read_verilog -container Ref "FSM.v"
read_verilog -container Ref "UART_TX.v"
read_verilog -container Ref "UART_TOP.v"
read_verilog -container Ref "SYS_TOP_dft.v"
read_verilog -container Ref "mux2X1.v"

## set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP

######################## Implementation Container #########################

## Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/SYSTEM/DFT/netlists/SYS_TOP.v"
## set the top Implementation Design

set_implementation_design SYS_TOP
set_top SYS_TOP
############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in


#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO*
set_dont_verify_points -type port Imp:/WORK/*/SO*


############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
