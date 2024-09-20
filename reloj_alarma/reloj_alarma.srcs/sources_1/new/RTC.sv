`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 10:43:57
// Design Name: 
// Module Name: RTC
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


module RTC(
    input logic clk, 
    input logic rst,
    input logic M, H, Rt, Rm,
    input logic [5:0] t,
    output logic [5:0] T1,
    output logic [5:0] T2,
    output logic [4:0] T3
    );
    
    logic [5:0] T1_rom, T2_rom;
    logic [4:0] T3_rom;
    
    
    
    always_ff @(posedge clk)
        if(rst) begin
            T1_rom <= 0;
            T2_rom <= 0;
            T3_rom <= 0;    
        end
        else if (Rm) 
            T2_rom <= 0;
        else begin
            T1_rom <= t;
            T2_rom <= T2_rom + M;
            T3_rom <= T3_rom + H;
        end
    

    assign T1 = T1_rom;
    assign T2 = T2_rom;
    assign T3 = T3_rom;
endmodule
