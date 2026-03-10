vlib work
vlog -sv *.v *.sv
vsim -gui work.UART_RX_TB -voptargs=+acc
do wave.do
run -all
view wave
