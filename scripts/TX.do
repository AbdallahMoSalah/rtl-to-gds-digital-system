vlib work
vlog -sv *.v *.sv
vsim -gui work.UART_TX_TB -voptargs=+acc
do wave.do
run -all