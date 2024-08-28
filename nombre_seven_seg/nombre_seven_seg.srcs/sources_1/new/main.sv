`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 21:26:03
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input logic CLK100MHZ,
    output logic [7:0] AN,
    input logic CPU_RESETN,
    output logic CA,CB,CC,CD,CE,CF,CG
    );
 
logic reloj_lento;
logic [2:0] contador8;

divisor_frec #(.fin(100000000), .fout(10000)) divisor_rapido(.CLK100MHZ, .reset(~CPU_RESETN), .clkout(reloj_lento));
ContadorN #(3) cuentacorta(.clk(reloj_lento),.reset(~CPU_RESETN), .count(contador8));
    
assign AN[7:0] = ~(8'b1 << contador8);
letra LETRA(.contador(contador8), .*);



    
endmodule

