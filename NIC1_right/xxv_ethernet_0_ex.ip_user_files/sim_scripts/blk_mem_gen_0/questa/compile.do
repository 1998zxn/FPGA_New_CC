vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
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

vlog -work blk_mem_gen_v8_4_4  "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/blk_mem_gen_0/sim/blk_mem_gen_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

