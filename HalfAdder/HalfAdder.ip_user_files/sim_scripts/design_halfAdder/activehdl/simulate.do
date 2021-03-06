onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_halfAdder -L util_vector_logic_v2_0_1 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_halfAdder xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {design_halfAdder.udo}

run -all

endsim

quit -force
