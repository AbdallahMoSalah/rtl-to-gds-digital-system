onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /UART_RX_TB/RST_N_TB
add wave -noupdate -color Red /UART_RX_TB/TX_CLK_TB
add wave -noupdate -radix binary /UART_RX_TB/DATA_IN/DATA_I
add wave -noupdate /UART_RX_TB/PAR_EN_TB
add wave -noupdate /UART_RX_TB/RX_IN_TB
add wave -noupdate -color yellow /UART_RX_TB/RX_CLK_TB
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/current_state
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/next_state
add wave -noupdate /UART_RX_TB/P_DATA_TB
add wave -noupdate /UART_RX_TB/data_valid_TB
add wave -noupdate /UART_RX_TB/Prescale_TB
add wave -noupdate /UART_RX_TB/PAR_TYP_TB
add wave -noupdate /UART_RX_TB/Parity_Error_TB
add wave -noupdate /UART_RX_TB/Stop_Error_TB
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/strt_glitch
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/data_valid
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/par_err
add wave -noupdate /UART_RX_TB/DUT/u_fsm_rx/stp_err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {77218 ps} 0} {{Cursor 2} {141764 ps} 0}
quietly wave cursor active 2
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
configure wave -timelineunits ps
update
WaveRestoreZoom {131134 ps} {152312 ps}
