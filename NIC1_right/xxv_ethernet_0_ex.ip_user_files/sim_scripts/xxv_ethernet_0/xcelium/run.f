-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado_2020.2/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_3_0/xxv_ethernet_0_wrapper.v" \
  "../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_v3_3_0/xxv_ethernet_0_top.v" \
-endlib
-makelib xcelium_lib/xxv_ethernet_v3_3_0 -sv \
  "../../../ipstatic/hdl/xxv_ethernet_v3_3_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../xxv_ethernet_0_ex.gen/sources_1/ip/xxv_ethernet_0/xxv_ethernet_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

