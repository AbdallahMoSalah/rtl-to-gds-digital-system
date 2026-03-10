
force -freeze sim:/SYS_CTRL/RST 1'h0 0
run
run
force -freeze sim:/SYS_CTRL/CLK 1 0, 0 {50 ns} -r 100
run
run
run
run
force -freeze sim:/SYS_CTRL/RST 1'h1 0
run
run
run
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h1 0
force -freeze sim:/SYS_CTRL/RX_P_DATA 8'h09 0
run
run
noforce sim:/SYS_CTRL/RX_D_VLD
run
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h0 0
run
run
run
run
force -freeze sim:/SYS_CTRL/RX_P_DATA 8'haa 0
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h1 0
run
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h0 0
run
run
force -freeze sim:/SYS_CTRL/RX_P_DATA 8'h00 0
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h1 0
run
force -freeze sim:/SYS_CTRL/RX_D_VLD 1'h0 0
run
