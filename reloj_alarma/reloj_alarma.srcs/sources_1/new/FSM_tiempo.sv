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
        output logic M, H,
        output logic Rt, Rm
    );

     //FSM states type:
enum logic [3:0] {IDLE, MINUTO, HORA, T_min, T_hora} CurrentState, NextState;


//FSM state register:
always_ff @(posedge clk)
   if (rst) CurrentState <= IDLE;
   else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    NextState = IDLE;  //Optional default state assigment
    M = 0;
    H = 0;
    Rt = 0;
    Rm = 0;
    case (CurrentState)
        IDLE: begin
            if (t > N-1) NextState = T_min;
            else if (T2 > N-1) NextState = T_hora;
            else if (Bm) NextState = MINUTO;
            else if (Bh) NextState = HORA;
        end

        T_min: begin
            NextState = MINUTO;
            Rt = 1;
        end

        T_hora: begin
            NextState = HORA;
            Rm = 1;
        end

        MINUTO: begin
            M = 1;   
        end

        HORA: begin
            H = 1;
        end

    endcase
end
endmodule


        

