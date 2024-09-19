`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 10:20:28
// Design Name: 
// Module Name: FSM_tiempo
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


module FSM_tiempo
    #(
        parameter N = 60)
    (
        input logic clk, 
        input logic rst,
        input logic [5:0] t, T2,
        input logic Bm, Bh,
        output logic M, H
    );

     //FSM states type:
enum logic [2:0] {IDLE, MINUTO, HORA} CurrentState, NextState;


//FSM state register:
always_ff @(posedge clk)
   if (rst) CurrentState <= IDLE;
   else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    NextState = IDLE;  //Optional default state assigment
    M = 0;
    H = 0;
    case (CurrentState)
        IDLE: begin
            if (Bm || t >= N-1) NextState = MINUTO;
            else if (Bh || T2 >= N-1) NextState = HORA;
        end

        MINUTO: begin
            M =1;    
        end

        HORA: begin
            H = 1;
            end
    endcase
end
endmodule


        

