module vector_calc(
    input logic clk, reset, SR, Ac, sel_out, tx_busy,
    input logic [7:0] douta, doutb,
    input logic [10:0] addr_count_rapido,
    input logic [10:0] addra,
    input logic [2:0] sel_op,
    output logic tx_dist, reset_counter_euc, reset_counter,
    output logic [15:0] sqrteuc,
    output logic [7:0] douta_salida,
    output logic [17:0] man
    );

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
logic [15:0] t_sqrteuc;
logic [25:0] euc;

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
        .done(m_axis_dout_tvalid)               // Señal que indica que el cálculo ha terminado
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

endmodule
