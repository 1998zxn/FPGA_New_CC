onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xxv_ethernet_0_gt_3_opt

do {wave.do}

view wave
view structure
view signals

do {xxv_ethernet_0_gt_3.udo}

run -all

quit -force
