onerror {quit -f}
vlib work
vlog -work work gA8_lab1.vo
vlog -work work gA8_lab1.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.gA8_comp7_vlg_vec_tst
vcd file -direction gA8_lab1.msim.vcd
vcd add -internal gA8_comp7_vlg_vec_tst/*
vcd add -internal gA8_comp7_vlg_vec_tst/i1/*
add wave /*
run -all
