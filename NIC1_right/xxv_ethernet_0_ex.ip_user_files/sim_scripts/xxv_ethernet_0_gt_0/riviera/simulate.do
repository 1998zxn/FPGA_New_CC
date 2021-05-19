onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xxv_ethernet_0_gt_0 -L xilinx_vip -L xpm -L gtwizard_ultrascale_v1_7_9 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xxv_ethernet_0_gt_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xxv_ethernet_0_gt_0.udo}

run -all

endsim

quit -force
