onerror {exit -code 1}
vlib work
vlog -work work AD_SAR.vo
vlog -work work AD_SAR_Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.AD_SAR_vlg_vec_tst -voptargs="+acc"
vcd file -direction AD_SAR.msim.vcd
vcd add -internal AD_SAR_vlg_vec_tst/*
vcd add -internal AD_SAR_vlg_vec_tst/i1/*
run -all
quit -f
