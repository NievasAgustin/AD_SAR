transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/xlatch.vhd}
vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/saadc_fsm.vhd}
vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/shiftreg.vhd}
vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/approx_reg.vhd}
vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/SAR.vhd}
vcom -93 -work work {C:/altera/14.1/quartus/bin64/AD_SAR/AD_SAR.vhd}

