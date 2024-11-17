module vector_calc #(parameter N = 10)(
    input logic clk, reset, SR, Ac, sel_out, tx_busy, tx, RM,
    input logic [7:0] memory_A [(1<<N)-1:0],
    input logic [7:0] memory_B [(1<<N)-1:0],
    input logic [N:0] addr_count_rapido,
    input logic [N:0] addra,
    input logic [2:0] sel_op,
    output logic tx_dist, reset_counter_euc, reset_counter,
    output logic [15:0] sqrteuc,
    output logic [7:0] dout_salida,
    output logic [17:0] man,
    output logic [7:0] memory_X_out
    );

logic [7:0] abs;

always_comb begin
    //if (douta > doutb)
        abs = 1; //douta - doutb; // Si es negativo, se invierte
   // else
   //     abs = 1; //doutb - douta;  // Si es positivo, se deja igual
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
    t_start <= addr_count_rapido > (1<<N);
end

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

logic [7:0] memory_X [(1<<N)-1:0];

assign memory_X_out = memory_X[0];


always_comb begin
    case(sel_op)
        3'd0: begin 
           for (int i = 0; i < (1<<N); i++) begin
               memory_X[i] = sel_out ? memory_B[i] : memory_A[i];
               end  
        end
        3'd1: begin 
            for (int i = 0; i < (1<<N); i++) begin
                memory_X[i] =  memory_B[i] + memory_A[i];
                end  
         end
        3'd2: begin
            for (int i = 0; i < (1<<N); i++) begin
                memory_X[i] =  memory_B[i]/2 + memory_A[i]/2;
                end
            end 
        3'd3: begin
            for (int i = 0; i < (1<<N); i++) begin
                if(memory_A[i] > memory_B[i])
                    memory_X[i] = memory_A[i] - memory_B[i];
                else
                    memory_X[i] = memory_B[i] - memory_A[i];
                end
            end
      //  3'd4: dout_salida = t_sqrteuc[7:0];
        default: begin 
           for (int i = 0; i < (1<<N); i++) begin
               memory_X[i] = 8'hbb;
               end  
        end
    endcase
end

logic [8+N-1:0] manhatan_sum;
logic [7:0] sub_vectors[(1<<N)-1:0];

always_comb 
    for (int i = 0; i <(8+N-1)>>3; i++) 
        sub_vectors[i] = manhatan_sum[i*8 +: 8];


adder_tree 
#(
	.In_width(8),
	.N_inputs(1<<N)
) adder_tree_man (
	.clk,
    .in(memory_X),
    .out(manhatan_sum)
);



logic Ac_retarded;

signal_delay #(
    .dt(N)
) signal_delay_inst (
    .clk,
    .rst(reset),
    .din(Ac),
    .dout(Ac_retarded)
);

logic start_piso;
pulse_generator pulse_generator(
    .clk, .reset, .in(Ac ? Ac_retarded : RM), .pulse_out(start_piso)
    );

PISO #(.In_width(8), .N_inputs((1<<N))) memory_send(
    .clk, .start(start_piso), .enable(~tx_busy),
    .in(Ac ? sub_vectors : memory_X),
    .out(dout_salida)
    );

endmodule
