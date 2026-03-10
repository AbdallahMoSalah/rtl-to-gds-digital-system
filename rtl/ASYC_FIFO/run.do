vlib work
vlog *.*v
vsim -gui work.ASYC_FIFO_TB -voptargs=+acc
do wave.do
run -all
view wave
