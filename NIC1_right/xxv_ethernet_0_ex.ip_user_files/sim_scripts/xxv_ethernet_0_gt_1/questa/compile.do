vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/gtwizard_ultrascale_v1_7_9
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap gtwizard_ultrascale_v1_7_9 questa_lib/msim/gtwizard_ultrascale_v1_7_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip  -sv -L xxv_ethernet_v3_3_0 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv -L xxv_ethernet_v3_3_0 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work gtwizard_ultrascale_v1_7_9  "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/sim/gtwizard_ultrascale_v1_7_gthe3_channel.v" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/sim/xxv_ethernet_0_gt_1_gthe3_channel_wrapper.v" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/sim/xxv_ethernet_0_gt_1_gtwizard_gthe3.v" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/sim/xxv_ethernet_0_gt_1_gtwizard_top.v" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0_gt_1/sim/xxv_ethernet_0_gt_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

