transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib REVERB
vmap REVERB REVERB
vlog -vlog01compat -work REVERB +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/REVERB/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/REVERB/synthesis/submodules/altera_avalon_sc_fifo.v}
vlib ADC
vmap ADC ADC
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/ADC_modular_adc_0.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/altera_modular_adc_control.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/altera_modular_adc_control_avrg_fifo.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/altera_modular_adc_control_fsm.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/chsel_code_converter_sw_to_hw.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/fiftyfivenm_adcblock_primitive_wrapper.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/fiftyfivenm_adcblock_top_wrapper.v}
vlog -vlog01compat -work ADC +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/submodules/ADC_altpll_0.v}
vlib SDRAMtest
vmap SDRAMtest SDRAMtest
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/SDRAMtest_mm_interconnect_0.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/SDRAMtest_sys_sdram_pll_0.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_up_avalon_reset_from_locked_signal.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_up_altpll.v}
vlog -vlog01compat -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/SDRAMtest_new_sdram_controller_0.v}
vlog -sv -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work SDRAMtest +incdir+D:/UNAM/Servicio\ Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/conv.vhd}
vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC_simple.vhd}
vcom -93 -work ADC {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/ADC/synthesis/ADC.vhd}
vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/RAM_Controller.vhd}
vcom -93 -work SDRAMtest {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/SDRAMtest/synthesis/SDRAMtest.vhd}
vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/Effect_Pedal.vhd}
vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/pwm.vhd}

vcom -93 -work work {D:/UNAM/Servicio Social/Trabajo/DE10_AudioFun/Effects_Pedal/FIR_testbench.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -L REVERB -L ADC -L SDRAMtest -voptargs="+acc"  test_bench

add wave *
view structure
view signals
run -all
