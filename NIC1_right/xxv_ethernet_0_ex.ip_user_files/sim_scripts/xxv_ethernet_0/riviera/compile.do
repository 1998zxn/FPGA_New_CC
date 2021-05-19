vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xxv_ethernet_v3_3_0

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap xxv_ethernet_v3_3_0 riviera/xxv_ethernet_v3_3_0

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_3_0/xxv_ethernet_0_wrapper.v" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_3_0/xxv_ethernet_0_top.v" \

vlog -work xxv_ethernet_v3_3_0  -sv2k12 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/xxv_ethernet_v3_3_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

