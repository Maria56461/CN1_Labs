onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib design_halfAdder_opt

do {wave.do}

view wave
view structure
view signals

do {design_halfAdder.udo}

run -all

quit -force
