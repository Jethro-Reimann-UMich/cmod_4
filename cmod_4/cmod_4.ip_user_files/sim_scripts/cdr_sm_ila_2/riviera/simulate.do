transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cdr_sm_ila_2  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cdr_sm_ila_2 xil_defaultlib.glbl

do {cdr_sm_ila_2.udo}

run 1000ns

endsim

quit -force
