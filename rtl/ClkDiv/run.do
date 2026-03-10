vlib work
vlog -sv *.*v
vsim -gui work.ClkDiv_TB -voptargs=+acc
do wave.do
run -all
view wave
