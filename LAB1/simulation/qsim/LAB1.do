onerror {quit -f}
vlib work
vlog -work work LAB1.vo
vlog -work work LAB1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.TIME13_vlg_vec_tst
vcd file -direction LAB1.msim.vcd
vcd add -internal TIME13_vlg_vec_tst/*
vcd add -internal TIME13_vlg_vec_tst/i1/*
add wave /*
run -all
