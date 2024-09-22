`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.09.2024 15:17:47
// Design Name: 
// Module Name: ALARMA_LEDs
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


module ALARMA_LEDs(
    input logic clockalarma,
    input logic CPU_RESETN,
    input logic [4:0] T2, T2_alarma,
    input logic [3:0] T3, T3_alarma,
    input logic [5:0] t,
    output logic [14:0] LEDs
    );
       
       
   logic [14:0] LEDsf;
    
     always_ff @(posedge clockalarma)
        if(~CPU_RESETN)
            LEDsf <= 15'b101010101010101;
        else
            LEDsf <= ~LEDsf;

    always_comb begin
        if({T2_alarma,T3_alarma} == {T2,T3} && t < 5)
            LEDs = LEDsf;
        else
            LEDs = 15'b000000000000000;
    end
    
endmodule
