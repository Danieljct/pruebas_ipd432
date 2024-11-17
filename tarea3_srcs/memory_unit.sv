`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2024 09:48:33
// Design Name: 
// Module Name: memory_unit
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


module memory_unit #(parameter N = 10) (
        input logic clk, reset,
        input logic rx_ready, SW, SR, RM, WM, op, tx_busy, CMD, Ac, tx,
        input logic [7:0] rx_data,
        output logic mready, rready, dist_ready,
        output logic [2:0] sel_op,
        output logic [7:0]  tx_in,
        output logic tx_dist, Ac_retarded,
        output logic [7:0] temp_AN,
        output logic [6:0] segmentos,
        output logic [7:0] memory_A_out,
        output logic [7:0] memory_X_out,
        output logic [N:0] addr_count,addr_count_salida
    );

logic wea;
logic web;
logic [7:0] din;
logic [N:0] addr_count_2;
logic sel, sel_out;
logic [N:0] addr_count_rapido;
logic reset_counter;
logic reset_counter_euc;
logic [N:0] addra;

addr_ctrl #(.N(N)) addr_ctrl (
    .clk, .reset, .rx_ready, .SW, .SR, .tx_busy, .Ac, .reset_counter, .reset_counter_euc, .RM, .sel, .WM, .Ac_retarded,
    .mready, .rready, .dist_ready, .wea, .web,
    .addra, .addr_count_rapido, .addr_count, .addr_count_salida //para ver en ila
    );
    

rx_logic rx_logic(
    .clk, .reset, 
    .rx_data,
    .SW, .op, .CMD, .WM, .rx_ready,
    .din,
    .sel, .sel_out,
    .sel_op
    );

logic [7:0] memory_A [(1<<N)-1:0]; // memorias de 1024x8
logic [7:0] memory_B [(1<<N)-1:0];
assign memory_A_out = memory_A[0];
 
SIPO #(.In_width(8), .N_inputs(1<<N)) memoryA (
    .clk, .enable(rx_ready & wea), 
    .in(rx_data), 
    .out(memory_A)
    );
    
SIPO #(.In_width(8), .N_inputs(1<<N)) memoryB (
    .clk, .enable(rx_ready & web), 
    .in(rx_data), 
    .out(memory_B)
    );
   


// logica leer y calcular distancia
logic [17:0] man;
logic [7:0] dout_salida;
logic [15:0] sqrteuc;
logic [8+N-1:0] manhatan_sum;

vector_calc #(.N(N)) vector_calc(
    .clk, .reset, .SR, .Ac, .sel_out, .tx_busy, .tx, .RM,
    .memory_B, .memory_A,
    .sel_op,
    .dout_salida,
    .memory_X_out,
    .Ac_retarded,
    .manhatan_sum
    );

assign tx_in = dout_salida;

num2display num2display(
    .clk, .reset, 
    .sel_op,
    .man({{(32-(8+N)){1'b0}},manhatan_sum}),
    .sqrteuc,
    .temp_AN,
    .segmentos
   );
   
 
endmodule