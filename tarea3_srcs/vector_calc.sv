module vector_calc #(parameter N = 3)(
    input logic clk, reset, Ac, sel_out, tx_busy, RM,
    input logic [7:0] memory_A [(1<<N)-1:0],
    input logic [7:0] memory_B [(1<<N)-1:0],
    input logic [2:0] sel_op,
    output logic Ac_retarded,
    output logic [7:0] dout_salida,
    output logic [8+N-1:0] manhatan_sum
    );

//(* use_dsp = "yes" *) logic [7:0] memory_X [(1<<N)-1:0];
logic [7:0] memory_X [(1<<N)-1:0];
// para ver si mejora timing
logic [1:0] sel_op_t;

logic [8:0] memory_x_sum [(1<<N)-1:0];

always_comb 
for (int i = 0; i < (1<<N); i++)
    memory_x_sum[i] = memory_A[i] + memory_B[i];

always_ff @(posedge clk) begin
sel_op_t <= sel_op[1:0];
    case(sel_op_t)
        3'd0: begin 
           for (int i = 0; i < (1<<N); i++) begin
               memory_X[i] <= sel_out ? memory_B[i] : memory_A[i];
               end  
        end
        3'd1: begin 
            for (int i = 0; i < (1<<N); i++) begin
                 memory_X[i] <= memory_x_sum[i][7:0];
                end  
         end
        3'd2: begin
            for (int i = 0; i < (1<<N); i++) begin
                memory_X[i] <=  memory_x_sum[i][8:1];
                end
            end 
        3'd3: begin
            for (int i = 0; i < (1<<N); i++) begin
                if(memory_A[i] > memory_B[i])
                    memory_X[i] <= memory_A[i] - memory_B[i];
                else
                    memory_X[i] <= memory_B[i] - memory_A[i];
                end
            end
      //  3'd4: dout_salida = t_sqrteuc[7:0];
       // default: begin 
       //    for (int i = 0; i < (1<<N); i++) begin
       //        memory_X[i] <= 8'h00;
       //        end  
      //  end
    endcase
end


logic [7:0] sub_vectors[(8+N)/8:0];

always_comb begin
    for (int i = 0; i <= (8+N)/8; i++) begin
        if (i*8 < (8+N)) 
            sub_vectors[i] = manhatan_sum >> (i * 8);
        else 
            sub_vectors[i] = 8'b0;
    end
end

adder_tree 
#(
	.In_width(8),
	.N_inputs(1<<N)
) adder_tree_man (
	.clk,
    .in(memory_X),
    .out(manhatan_sum)
);





signal_delay #(
    .dt(N)
) signal_delay_inst (
    .clk,
    .rst(reset),
    .din(Ac),
    .dout(Ac_retarded)
);



logic start_piso, start_piso_dist;
pulse_generator pulse_generator(
    .clk, .reset, .in(RM), .pulse_out(start_piso)
    );

pulse_generator pulse_generator_dist(
    .clk, .reset, .in(Ac_retarded), .pulse_out(start_piso_dist)
    );

logic [7:0] dout_salida_1, dout_salida_2; 

PISO #(.In_width(8), .N_inputs((1<<N))) memory_send(
    .clk, .start(start_piso), .enable(~tx_busy),
    .in(memory_X),
    .out(dout_salida_1)
    );

PISO #(.In_width(8), .N_inputs((8+N)/8+1)) dist_send(
    .clk, .start(start_piso_dist), .enable(~tx_busy),
    .in(sub_vectors),
    .out(dout_salida_2)
    );

assign dout_salida = Ac ? dout_salida_2 : dout_salida_1;

endmodule
