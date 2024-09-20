`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 15:40:22
// Design Name: 
// Module Name: testbench
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


module testbench();

    logic CLK100MHZ      ;
    logic CPU_RESETN     ;
    logic [1:0] SW       ;
    logic BTNL, BTNR     ;
     logic [15:0] LED    ;
     logic [7:0] AN      ;
     logic [6:0] segmentos;
     
top_module DUT(.*);

always #1 CLK100MHZ = ~CLK100MHZ;

initial begin    
    CLK100MHZ = 0;
    CPU_RESETN = 1;
    SW = 2'b00;
    #5 
    CPU_RESETN = 0;
    #5
    CPU_RESETN = 1;
    #500 
    BTNL = 1;
end

endmodule
