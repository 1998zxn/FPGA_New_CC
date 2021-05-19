onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib xxv_ethernet_0_opt

do {wave.do}

view wave
view structure
view signals

do {xxv_ethernet_0.udo}

run -all

quit -force
