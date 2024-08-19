vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_8
vlib modelsim_lib/msim/xlslice_v1_0_3
vlib modelsim_lib/msim/microblaze_v11_0_12
vlib modelsim_lib/msim/lmb_v10_v3_0_13
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_23
vlib modelsim_lib/msim/blk_mem_gen_v8_4_7
vlib modelsim_lib/msim/generic_baseblocks_v2_1_1
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_29
vlib modelsim_lib/msim/fifo_generator_v13_2_9
vlib modelsim_lib/msim/axi_data_fifo_v2_1_28
vlib modelsim_lib/msim/axi_crossbar_v2_1_30
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/axi_intc_v4_1_18
vlib modelsim_lib/msim/xlconcat_v2_1_5
vlib modelsim_lib/msim/mdm_v3_2_25
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_14
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_31

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_8 modelsim_lib/msim/xlconstant_v1_1_8
vmap xlslice_v1_0_3 modelsim_lib/msim/xlslice_v1_0_3
vmap microblaze_v11_0_12 modelsim_lib/msim/microblaze_v11_0_12
vmap lmb_v10_v3_0_13 modelsim_lib/msim/lmb_v10_v3_0_13
vmap lmb_bram_if_cntlr_v4_0_23 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_23
vmap blk_mem_gen_v8_4_7 modelsim_lib/msim/blk_mem_gen_v8_4_7
vmap generic_baseblocks_v2_1_1 modelsim_lib/msim/generic_baseblocks_v2_1_1
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 modelsim_lib/msim/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 modelsim_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 modelsim_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 modelsim_lib/msim/axi_crossbar_v2_1_30
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_18 modelsim_lib/msim/axi_intc_v4_1_18
vmap xlconcat_v2_1_5 modelsim_lib/msim/xlconcat_v2_1_5
vmap mdm_v3_2_25 modelsim_lib/msim/mdm_v3_2_25
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 modelsim_lib/msim/proc_sys_reset_v5_0_14
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_31 modelsim_lib/msim/axi_gpio_v2_0_31

vlog -work xpm  -incr -mfcu  -sv "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_xadc_wiz_0_0/design_1_xadc_wiz_0_0.vhd" \

vlog -work xlconstant_v1_1_8  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work xlslice_v1_0_3  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/217a/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1/design_1_clk_wiz_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_consts_0_0/sim/design_1_axi_gpio_consts_0_0.vhd" \
"../../../bd/design_1/ip/design_1_manchester_rs_compos_0_0/sim/design_1_manchester_rs_compos_0_0.vhd" \
"../../../bd/design_1/ip/design_1_agc_cdr_sm_3_1_0/sim/design_1_agc_cdr_sm_3_1_0.vhd" \
"../../../bd/design_1/ip/design_1_rs_decoder_init_rst_0_0/sim/design_1_rs_decoder_init_rst_0_0.vhd" \
"../../../bd/design_1/ip/design_1_msg_detected_led_1_0_0/sim/design_1_msg_detected_led_1_0_0.vhd" \

vcom -work microblaze_v11_0_12  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/f557/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_13  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ae24/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_23  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/1ca4/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_7  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/3c0c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_1  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_18  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/d764/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_microblaze_0_axi_intc_0/sim/design_1_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_5  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/147b/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/c2c6" "+incdir+../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_microblaze_0_xlconcat_0/sim/design_1_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_25  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/347d/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_156M_0/sim/design_1_rst_clk_wiz_156M_0.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_31  -93  \
"../../../../cmod_4.gen/sources_1/bd/design_1/ipshared/6fbe/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_0/sim/design_1_axi_gpio_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_1_1/sim/design_1_axi_gpio_1_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_4_0/sim/design_1_axi_gpio_4_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_5_0/sim/design_1_axi_gpio_5_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_6_0/sim/design_1_axi_gpio_6_0.vhd" \
"../../../bd/design_1/ipshared/aad8/hdl/decoded_data_mem_map_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/aad8/hdl/decoded_data_mem_map_v1_0.vhd" \
"../../../bd/design_1/ip/design_1_decoded_data_mem_map_0_3/sim/design_1_decoded_data_mem_map_0_3.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

