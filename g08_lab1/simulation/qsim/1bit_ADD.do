onerror {quit -f}
vlib work
vlog -work work 1bit_ADD.vo
vlog -work work 1bit_ADD.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.1bit_ADD_vlg_vec_tst
vcd file -direction 1bit_ADD.msim.vcd
vcd add -internal 1bit_ADD_vlg_vec_tst/*
vcd add -internal 1bit_ADD_vlg_vec_tst/i1/*
add wave /*
run -all
