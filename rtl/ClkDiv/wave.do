onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB_IO /ClkDiv_TB/rst_n_TB
add wave -noupdate -expand -group TB_IO -expand -group INPUT_CLK -color YELLOW /ClkDiv_TB/ref_clk_TB
add wave -noupdate -expand -group TB_IO -expand -group ENABLE -color BLUE /ClkDiv_TB/clk_en_TB
add wave -noupdate -expand -group TB_IO -expand -group GEN_CLK -color {Medium Orchid} /ClkDiv_TB/div_clk_TB
add wave -noupdate -expand -group TB_IO -expand -group DIV_RATIO /ClkDiv_TB/div_ratio_TB
add wave -noupdate -expand -group TOG_COUNTER /ClkDiv_TB/uut/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {495191 ps} 0} {{Cursor 2} {847512 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {419234 ps} {867378 ps}
