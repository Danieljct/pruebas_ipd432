transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+../../../../TAREA_2_UART.gen/sources_1/ip/ila_0_2/hdl/verilog" -l xpm -l xil_defaultlib \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../TAREA_2_UART.gen/sources_1/ip/ila_0_2/hdl/verilog" -l xpm -l xil_defaultlib \
"../../../../TAREA_2_UART.gen/sources_1/ip/ila_0_2/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

