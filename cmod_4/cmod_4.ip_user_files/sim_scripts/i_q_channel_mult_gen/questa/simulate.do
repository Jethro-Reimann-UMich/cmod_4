onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib i_q_channel_mult_gen_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {i_q_channel_mult_gen.udo}

run 1000ns

quit -force
