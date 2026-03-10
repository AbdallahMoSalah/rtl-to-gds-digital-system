vlib work
vlog *.*v
vsim -gui work.DATA_SYNC_TB -voptargs=+acc
do wave.do
run -all
view wave
