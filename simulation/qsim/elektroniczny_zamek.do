onerror {exit -code 1}
vlib work
vcom -work work elektroniczny_zamek.vho
vcom -work work kb_cntrl_sim.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.kb_ctrl_pckg_vhd_vec_tst
vcd file -direction elektroniczny_zamek.msim.vcd
vcd add -internal kb_ctrl_pckg_vhd_vec_tst/*
vcd add -internal kb_ctrl_pckg_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

