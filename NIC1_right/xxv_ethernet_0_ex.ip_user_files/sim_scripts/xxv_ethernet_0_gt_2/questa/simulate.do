onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xxv_ethernet_0_gt_2_opt

do {wave.do}

view wave
view structure
view signals

do {xxv_ethernet_0_gt_2.udo}

run -all

quit -force
