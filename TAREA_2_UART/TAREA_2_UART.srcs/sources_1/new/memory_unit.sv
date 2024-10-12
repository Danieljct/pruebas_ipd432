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
        output logic mready, rready, man_ready,
        output logic [2:0] sel_op,
        output logic [7:0] douta, doutb, tx_in,
        output logic tx_dist
    );
localparam N = 10; 
logic wea;
logic web;
logic [7:0] din;
logic [N:0] addr_count, addr_count_2;
logic sel, sel_out;
logic [N:0] addr_count_salida;
logic [10:0] addr_count_rapido;

assign mready = addr_count_2 == 1<<N;
assign rready = addr_count_salida == 1<<N;
assign man_ready = addr_count_rapido == 1<<10;


assign wea = sel ? 0 : WM;
assign web = ~sel ? 0 : WM;

EContadorN #(.N(N+1)) address_counter (
    .clk,
    .enable(rx_ready),
    .reset(SW | SR), 
    .count(addr_count)
    );

always_ff @(posedge clk) begin 
	if (reset)
		din <= 8'b0;
	else if (WM && rx_ready)
		din <= rx_data;

	if (SW)
		sel <= rx_data[0];
	if (op)
		sel_out <= rx_data[0];
    if (CMD)
        sel_op <= rx_data[2:0];
end
always_ff @(posedge clk)
    if (rx_ready)
        addr_count_2 <= addr_count;
    

EContadorN #(.N(N+1)) address_counter_test (
    .clk,
    .enable(~tx_busy),
    .reset(SR), 
    .count(addr_count_salida)
    );

logic reset_counter;
logic [7:0] douta_salida;

EContadorN #(.N(N+1)) address_counter_rapido (
    .clk,
    .enable(Ac),
    .reset(SR | reset_counter), 
    .count(addr_count_rapido)
    );


blk_mem_gen_ff BRAMA(
      .clka(clk),     // input wire clka
      .ena(1),      // input wire ena
      .wea,      // input wire [0 : 0] wea
      .addra(Ac ? addr_count_rapido : {{10-N{1'b0}}, (RM ? addr_count_salida : addr_count_2)}),  // input wire [9 : 0] addra
      .dina(din),    // input wire [7 : 0] dina
      .douta(douta)  // output wire [7 : 0] douta
    );
    
blk_mem_gen_ff BRAMB(
      .clka(clk),     // input wire clka
      .ena(1),      // input wire ena
      .wea(web),      // input wire [0 : 0] wea
      .addra(Ac ? addr_count_rapido : {{10-N{1'b0}}, (RM ? addr_count_salida : addr_count_2)}),  // input wire [9 : 0] addra
      .dina(din),    // input wire [7 : 0] dina
      .douta(doutb)  // output wire [7 : 0] douta
    );

// logica leer y calcular distancia
logic [17:0] man, euc;
logic [7:0] abs;

always_comb begin
    if (douta > doutb)
        abs = douta - doutb; // Si es negativo, se invierte
    else
        abs = doutb - douta;  // Si es positivo, se deja igual
end

logic [3:0] N_shift;

always_ff @(posedge clk) begin
    man <= man >> N_shift;
    if (SR) begin
        man <= 0;
        euc <= 0;
    end
    if (Ac) 
        man <= man + abs;
end


dista_FSM distancia_FSM (
    .clk,
    .rst(reset),
    .tx_busy,
    .tx_dist,
    .start(addr_count_rapido >= (1<<10)),
    .N(N_shift),
    .reset_counter(reset_counter)
    );



always_comb begin
    case(sel_op)
        3'd0: douta_salida = sel_out ? doutb : douta;
        3'd1: douta_salida = doutb + douta;
        3'd2: douta_salida = doutb/2 + douta/2;
        3'd3: douta_salida = man[7:0];
        default: douta_salida = 8'd11;
    endcase
end

assign tx_in = douta_salida;


endmodule
