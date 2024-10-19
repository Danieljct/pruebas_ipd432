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
        output logic tx_dist, tm_axis_dout_tvalid,
        output logic [15:0] t_sqrteuc, sqrteuc,
        output logic [25:0] euc,
        output logic [2:0] stateW,
        output logic [7:0] douta_salida,
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

assign mready = addr_count_2 == 1<<N;
assign rready = addr_count_salida == 1<<N;
assign dist_ready = addr_count_rapido == (1<<10)+1;

logic [10:0] addra;

assign wea = (addra >= 1<<N) ? 0 :(sel ? 0 : WM);
assign web = (addra >= 1<<N) ? 0 :(~sel ? 0 : WM);

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
    

EContadorN #(.N(N+1)) address_counter_tx (
    .clk,
    .enable(~tx_busy),
    .reset(SR), 
    .count(addr_count_salida)
    );

logic reset_counter;

logic reset_counter_euc;
EContadorN #(.N(11)) address_counter_rapido (
    .clk,
    .enable(Ac),
    .reset(SR | reset_counter | reset_counter_euc), 
    .count(addr_count_rapido)
    );


assign addra = Ac ? addr_count_rapido : {{10-N{1'b0}}, (RM ? addr_count_salida : addr_count_2)};

blk_mem_gen_ff BRAMA(
      .clka(clk),     // input wire clka
      .ena(1),      // input wire ena
      .wea,      // input wire [0 : 0] wea
      .addra(addra[9:0]),  // input wire [9 : 0] addra
      .dina(din),    // input wire [7 : 0] dina
      .douta(douta)  // output wire [7 : 0] douta
    );
    
blk_mem_gen_ff BRAMB(
      .clka(clk),     // input wire clka
      .ena(1),      // input wire ena
      .wea(web),      // input wire [0 : 0] wea
      .addra(addra[9:0]),  // input wire [9 : 0] addra
      .dina(din),    // input wire [7 : 0] dina
      .douta(doutb)  // output wire [7 : 0] douta
    );

// logica leer y calcular distancia
logic [17:0] man;
logic [25:0] euc, t_euc;
logic [15:0] sqrteuc, t_sqrteuc;
logic [7:0] abs;

always_comb begin
    if (douta > doutb)
        abs = douta - doutb; // Si es negativo, se invierte
    else
        abs = doutb - douta;  // Si es positivo, se deja igual
end

logic [4:0] N_shift;
logic [4:0] N_shift_euc;
logic [17:0] auxman;

always_ff @(posedge clk) begin
    auxman <= man >> N_shift;
    t_sqrteuc <= sqrteuc >> N_shift_euc;
       // t_euc  <= euc >> N_shift_euc;
    if (SR || &(~(addra-1))) begin
        man <= 0;
        euc <= 0;
    end
    if (Ac && ~(&(~(addra-1)))) begin
        man <= man + abs;
        euc <= euc + abs*abs;
    end
end

logic m_axis_dout_tvalid;
logic t_start;

always_ff @(posedge clk) begin
    t_start <= addr_count_rapido > (1<<10);
end

//cordic_1 cordic (
//  .aclk(clk),
//  .s_axis_cartesian_tvalid(t_start),  // input wire s_axis_cartesian_tvalid
//  .s_axis_cartesian_tdata({6'b0,euc}),    // input wire [31 : 0] s_axis_cartesian_tdata
//  .m_axis_dout_tvalid(m_axis_dout_tvalid),  // output wire m_axis_dout_tvalid
//  .m_axis_dout_tdata(sqrteuc)              // output wire [15 : 0] m_axis_dout_tdata
//);

sqrt_FSM SQRT(
        .clk,                                   // Reloj para la secuencia
        .rst(reset),                            // Reset activo en alto
        .start(t_start),    // Señal para iniciar el cálculo
        .x({6'b0,euc}),                         // Radicando de 32 bits
        .y(sqrteuc),                            // Parte entera de la raíz cuadrada
        .done(m_axis_dout_tvalid),               // Señal que indica que el cálculo ha terminado
        .stateW(stateW)
    );

logic tm_axis_dout_tvalid;
always_ff @(posedge clk) begin
    tm_axis_dout_tvalid <= m_axis_dout_tvalid;
end

logic tx_dist_man;
logic tx_dist_euc;

dista_FSM euc_FSM (
    .clk,
    .rst(reset),
    .tx_busy,
    .start(tm_axis_dout_tvalid),
    .tx_dist(tx_dist_euc),
    .N(N_shift_euc),
    .reset_counter(reset_counter_euc)
    );

dista_FSM distancia_FSM (
    .clk,
    .rst(reset),
    .tx_busy,
    .start(t_start),
    .tx_dist(tx_dist_man),
    .N(N_shift),
    .reset_counter(reset_counter)
    );

assign tx_dist = (sel_op == 3'd3) ? tx_dist_man : tx_dist_euc;

always_comb begin
    case(sel_op)
        3'd0: douta_salida = sel_out ? doutb : douta;
        3'd1: douta_salida = doutb + douta;
        3'd2: douta_salida = doutb/2 + douta/2;
        3'd3: douta_salida = auxman[7:0];
        3'd4: douta_salida = t_sqrteuc[7:0];
        default: douta_salida = 8'd11;
    endcase
end

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