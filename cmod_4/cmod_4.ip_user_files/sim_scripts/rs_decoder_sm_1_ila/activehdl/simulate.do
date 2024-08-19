transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+rs_decoder_sm_1_ila  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.rs_decoder_sm_1_ila xil_defaultlib.glbl

do {rs_decoder_sm_1_ila.udo}

run 1000ns

endsim

quit -force
