`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 21:33:52
// Design Name: 
// Module Name: ContadorN
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


module ContadorN #(N)(input logic clk,reset, output logic[N-1:0] count);
    always_ff @(posedge clk, posedge reset)
    if (reset)
        count<= 'b0;
    else 
        count<=count+1;
endmodule
