`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 17:46:59
// Design Name: 
// Module Name: num2display
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


module num2display(
    input logic clk, reset, 
    input logic [2:0] sel_op,
    input logic [17:0] man,
    input logic [15:0] sqrteuc,
    output logic [7:0] temp_AN,
    output logic [6:0] segmentos
    );
    
    
    
logic clkout;
divisor_frec #(.fin(100000000), .fout(10000)) divisor_freq(
    .CLK100MHZ(clk),
    .reset,
    .clkout
);

logic [31:0] to_disp;
unsigned_to_bcd(
    .clk(clk),
    .reset,
    .trigger(1),
    .in((sel_op == 3'd3) ? {14'b0, man} : {16'b0, sqrteuc}),
    .bcd(to_disp)
);

BCD_to_display(
    .clk_segment(clkout),
    .CPU_RESETN(~reset),
    .hora_display(to_disp),
    .AN(temp_AN),
    .segmentos   
);

endmodule 