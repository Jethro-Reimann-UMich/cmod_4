onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib rs_decoder_sm_1_ila_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {rs_decoder_sm_1_ila.udo}

run 1000ns

quit -force
