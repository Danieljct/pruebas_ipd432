`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2024 11:09:11
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



module ejemplo #(parameter OP_WIDTH = 8)(
        output logic [OP_WIDTH-1:0] Y,
        input logic [OP_WIDTH-1:0] A, B,
        input logic clk
    );
    logic [OP_WIDTH-1:0] rA, rB, rC, rD, rE;
    logic [OP_WIDTH-1:0] rAB_sum_X, rC_X;
    
    always_ff @(posedge clk) begin
        rA <= A;
        rB <= B;
        rC <= rA * rA;
        rD <= rB * rB * rB;
        Y <= rC * rD;
    end
    
    
endmodule
