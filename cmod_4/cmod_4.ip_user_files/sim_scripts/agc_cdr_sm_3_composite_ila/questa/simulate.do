onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib agc_cdr_sm_3_composite_ila_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {agc_cdr_sm_3_composite_ila.udo}

run 1000ns

quit -force
