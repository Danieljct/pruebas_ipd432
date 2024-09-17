`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 11:25:25
// Design Name: 
// Module Name: ejemplo
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


module ejemplo #(parameter OP_WIDTH = 15)(
        output logic [OP_WIDTH-1:0] Y,
        input logic [OP_WIDTH-1:0] A, B,
        input logic clk
    );
    logic [OP_WIDTH-1:0] rA, rB, rC, rD, rE;
    logic [OP_WIDTH-1:0] rAB_sum_X, rC_X;
    
    always_ff @(posedge clk) begin
        rA <= A;
        rB <= B;
        Y <= rA * rA * rB * rB * rB;
    end
    
    
endmodule
