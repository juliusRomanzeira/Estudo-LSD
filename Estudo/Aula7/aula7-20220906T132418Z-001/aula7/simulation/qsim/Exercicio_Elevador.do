onerror {quit -f}
vlib work
vlog -work work Exercicio_Elevador.vo
vlog -work work Exercicio_Elevador.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Exercicio_Elevador_vlg_vec_tst
vcd file -direction Exercicio_Elevador.msim.vcd
vcd add -internal Exercicio_Elevador_vlg_vec_tst/*
vcd add -internal Exercicio_Elevador_vlg_vec_tst/i1/*
add wave /*
run -all
