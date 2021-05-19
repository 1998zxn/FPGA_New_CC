onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+xxv_ethernet_0 -L xilinx_vip -L xpm -L xil_defaultlib -L xxv_ethernet_v3_3_0 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xxv_ethernet_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xxv_ethernet_0.udo}

run -all

endsim

quit -force
