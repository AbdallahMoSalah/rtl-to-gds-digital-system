onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group input_stage /DATA_SYNC_TB/rst_n
add wave -noupdate -expand -group input_stage /DATA_SYNC_TB/clk
add wave -noupdate -expand -group input_stage /DATA_SYNC_TB/bus_enable
add wave -noupdate -expand -group input_stage /DATA_SYNC_TB/unsync_bus
add wave -noupdate -expand -group intermediate -radix binary /DATA_SYNC_TB/dut/sync_reg
add wave -noupdate -expand -group intermediate -color yellow /DATA_SYNC_TB/dut/pulse_reg
add wave -noupdate -expand -group intermediate -color {Medium Orchid} /DATA_SYNC_TB/dut/comb_enable_pulse
add wave -noupdate -expand -group output /DATA_SYNC_TB/enable_pulse
add wave -noupdate -expand -group output /DATA_SYNC_TB/sync_bus
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {35 ns} 0}
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
WaveRestoreZoom {0 ns} {126 ns}
