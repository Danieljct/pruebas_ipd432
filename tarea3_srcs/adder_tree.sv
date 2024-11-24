// Autor: Daniel Cubillos

module adder_tree
#(
	parameter In_width = 8,
	parameter N_inputs = 64
)(
	input logic clk,
    input logic [In_width-1:0] in [N_inputs-1:0],
    output logic [In_width+$clog2(N_inputs)-1:0] out
);

genvar i, j;
localparam int Out_width = In_width+$clog2(N_inputs);
localparam int N_levels = $clog2(N_inputs);

logic [Out_width-1:0] sumas [(N_inputs)-2:0];

always_ff @(posedge clk) begin : in_read
    for (int i = 0; i < N_inputs/2; i++) begin
        sumas[i] <= {{(Out_width - In_width){1'b0}}, in[2*i]}+{{(Out_width - In_width){1'b0}}, in[2*i+1]}; //{{(Out_width - In_width){1'b0}}, in[i]};
    end
end: in_read


generate
    for(i = 1; i < N_levels + 1; i++) begin : level
        for(j = 0; j < (N_inputs>>(i+1)); j++) begin : adder
			always_ff @(posedge clk) begin
				sumas[N_inputs - (N_inputs >> i) + j] <= sumas[N_inputs - (2*N_inputs >> i) + 2*j] + sumas[N_inputs - (2*N_inputs >> i) + 2*j + 1];
			end
        end: adder
    end: level
endgenerate

always_ff @(posedge clk) begin : out_write
	out <= sumas[N_inputs - 2];
end: out_write


endmodule
