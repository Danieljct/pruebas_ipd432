// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Oct  6 11:21:52 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/github/pruebas_ipd432/TAREA_2_UART/TAREA_2_UART.gen/sources_1/ip/ila_real/ila_real_stub.v
// Design      : ila_real
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2024.1" *)
module ila_real(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6)
/* synthesis syn_black_box black_box_pad_pin="probe0[7:0],probe1[7:0],probe2[3:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [7:0]probe0;
  input [7:0]probe1;
  input [3:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
endmodule
