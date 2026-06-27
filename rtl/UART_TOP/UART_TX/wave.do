onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group UART_TB /UART_TX_TB/n_RST_TB
add wave -noupdate -expand -group UART_TB -color Cyan /UART_TX_TB/CLK_TB
add wave -noupdate -expand -group UART_TB -color Red /UART_TX_TB/busy_TB
add wave -noupdate -expand -group UART_TB -color Gold /UART_TX_TB/TX_OUT_TB
add wave -noupdate -expand -group UART_TB /UART_TX_TB/Data_Valid_TB
add wave -noupdate -expand -group UART_TB /UART_TX_TB/DUT/U2/DATA
add wave -noupdate -expand -group UART_TB /UART_TX_TB/P_DATA_TB
add wave -noupdate -expand -group UART_TB /UART_TX_TB/DUT/U0/idle_flag
add wave -noupdate -expand -group UART_TB /UART_TX_TB/parity_enable_TB
add wave -noupdate -expand -group UART_TB /UART_TX_TB/parity_type_TB
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/current_state
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/next_state
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/mux_sel
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/n_RST
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/ser_done
add wave -noupdate -expand -group FSM /UART_TX_TB/DUT/U0/ser_en
add wave -noupdate -expand -group serializer /UART_TX_TB/DUT/U2/counter
add wave -noupdate -expand -group serializer /UART_TX_TB/DUT/U2/n_RST
add wave -noupdate -expand -group serializer /UART_TX_TB/DUT/U2/ser_data
add wave -noupdate -expand -group serializer /UART_TX_TB/DUT/U2/ser_done
add wave -noupdate -expand -group serializer /UART_TX_TB/DUT/U2/ser_en
add wave -noupdate -expand -group parityCalc /UART_TX_TB/DUT/U3/DATA
add wave -noupdate -expand -group parityCalc /UART_TX_TB/DUT/U3/idle_flag
add wave -noupdate -expand -group parityCalc /UART_TX_TB/DUT/U3/P_DATA
add wave -noupdate -expand -group parityCalc /UART_TX_TB/DUT/U3/par_bit
add wave -noupdate -expand -group parityCalc /UART_TX_TB/DUT/U3/PAR_TYP
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {59727 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {519498 ns}
