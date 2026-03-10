onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/W_CLK
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/i_wrst_n
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/DUT_ASYC_FIFO/U3/mem
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/DUT_ASYC_FIFO/U3/raddr
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/DUT_ASYC_FIFO/U3/waddr
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/DUT_ASYC_FIFO/U3/wdata
add wave -noupdate -expand -group memory /ASYC_FIFO_TB/DUT_ASYC_FIFO/U3/rdata
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wrst_n
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/R_CLK
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wclk
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wptr
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/Gwptr
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/comb_Gwptr
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wq2_rptr
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wfull
add wave -noupdate -expand -group W_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/winc
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rclk
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U1/wclk
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rrst_n
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rptr
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/Grptr
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/comb_Grptr
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rq2_wptr
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rempty
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rinc
add wave -noupdate -expand -group R_DOMAIN /ASYC_FIFO_TB/DUT_ASYC_FIFO/U2/rptr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
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
WaveRestoreZoom {0 ps} {104 ps}
