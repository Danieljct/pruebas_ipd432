transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cordic_1  -L xpm -L xbip_utils_v3_0_13 -L c_reg_fd_v12_0_9 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_pipe_v3_0_9 -L xbip_dsp48_addsub_v3_0_9 -L xbip_addsub_v3_0_9 -L c_addsub_v12_0_18 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L axi_utils_v2_0_9 -L cordic_v6_0_22 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cordic_1 xil_defaultlib.glbl

do {cordic_1.udo}

run 1000ns

endsim

quit -force
