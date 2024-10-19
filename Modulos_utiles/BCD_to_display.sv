`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2024 12:10:34
// Design Name: 
// Module Name: BCD_to_display
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


module BCD_to_display(
    input logic clk_segment,
    input logic CPU_RESETN,
    input logic [31:0] hora_display,
    output logic [7:0] AN,
    output logic [6:0] segmentos
    );
        
    logic [2:0] contador8;
    
    ContadorN #(.N(3))
    contador_anodos(
        .clk(clk_segment),
        .reset(~CPU_RESETN), 
        .count(contador8)
        );
    
    
    logic [4:0] contador8shift;
    logic [3:0] numero_bcd;

    assign contador8shift = contador8 << 2;
    assign numero_bcd =  hora_display >> contador8shift;

    led7segmentos conversor(.BCD_in(numero_bcd), .segmentos);

    assign AN = ~(8'b1 << contador8);
    
    
endmodule
