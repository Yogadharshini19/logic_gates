transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/quartus\ projects/ripplecarry\ adder {D:/quartus projects/ripplecarry adder/ripplecarry_adder.v}

vlog -vlog01compat -work work +incdir+D:/quartus\ projects/ripplecarry\ adder {D:/quartus projects/ripplecarry adder/ripplecarry_adder_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  ripplecarry_adder_tb

add wave *
view structure
view signals
run -all
