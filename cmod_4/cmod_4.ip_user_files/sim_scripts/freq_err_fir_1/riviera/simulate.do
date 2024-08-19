transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+freq_err_fir_1  -L xpm -L xbip_utils_v3_0_11 -L axi_utils_v2_0_7 -L fir_compiler_v7_2_20 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.freq_err_fir_1 xil_defaultlib.glbl

do {freq_err_fir_1.udo}

run 1000ns

endsim

quit -force
