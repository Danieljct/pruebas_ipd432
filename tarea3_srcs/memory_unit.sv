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


module memory_unit (
        input logic clk, reset,
        input logic rx_ready, SW, SR, RM, WM, op, tx_busy, CMD, Ac,
        input logic [7:0] rx_data,
        output logic mready, rready, dist_ready,
        output logic [2:0] sel_op,
        output logic [7:0] douta, doutb, tx_in,
        output logic tx_dist,
        output logic [7:0] temp_AN,
        output logic [6:0] segmentos
    );
    
    
localparam N = 10;
logic wea;
logic web;
logic [7:0] din;
logic [N:0] addr_count, addr_count_2;
logic sel, sel_out;
logic [N:0] addr_count_salida;
logic [10:0] addr_count_rapido;
logic reset_counter;
logic reset_counter_euc;
logic [10:0] addra;
logic [7:0] memory_A [(1<<N)-1:0];
logic [7:0] memory_B [(1<<N)-1:0];

addr_ctrl #(.N(10)) addr_ctrl (
    .clk, .rx_ready, .SW, .SR, .tx_busy, .Ac, .reset_counter, .reset_counter_euc, .RM, .sel, .WM,
    .mready, .rready, .dist_ready, .wea, .web,
    .addra, .addr_count_rapido
    );
    

rx_logic rx_logic(
    .clk, .reset, 
    .rx_data,
    .SW, .op, .CMD, .WM, .rx_ready,
    .din,
    .sel, .sel_out,
    .sel_op
    );


SIPO #(.In_width(8), .N_inputs(1024)) memoryA (
    .clk, .enable(rx_ready & wea), 
    .in(din), 
    .out(memory_A)
    );
    
SIPO #(.In_width(8), .N_inputs(1024)) memoryB (
    .clk, .enable(rx_ready & web), 
    .in(din), 
    .out(memory_B)
    );
   


// logica leer y calcular distancia
logic [17:0] man;
logic [7:0] douta_salida;
logic [15:0] sqrteuc;

vector_calc vector_calc(
    .clk, .reset, .SR, .Ac, .sel_out, .tx_busy,
    .douta, .doutb,
    .addra,
    .addr_count_rapido,
    .sel_op,
    .reset_counter_euc, .reset_counter, 
    .tx_dist,
    .sqrteuc,
    .man,
    .douta_salida
    );
	

assign tx_in = douta_salida;

num2display num2display(
    .clk, .reset, 
    .sel_op,
    .man,
    .sqrteuc,
    .temp_AN,
    .segmentos
   );
   
 
endmodule