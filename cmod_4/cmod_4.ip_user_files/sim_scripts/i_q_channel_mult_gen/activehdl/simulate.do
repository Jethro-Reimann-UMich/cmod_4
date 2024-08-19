transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+i_q_channel_mult_gen  -L xpm -L xbip_utils_v3_0_11 -L xbip_pipe_v3_0_7 -L xbip_bram18k_v3_0_7 -L mult_gen_v12_0_19 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.i_q_channel_mult_gen xil_defaultlib.glbl

do {i_q_channel_mult_gen.udo}

run 1000ns

endsim

quit -force
