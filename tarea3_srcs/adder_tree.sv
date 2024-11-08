// Autor: Daniel Cubillos

module adder_tree
#(
	parameter In_width = 10,
	parameter N_inputs = 1024
)(
	input logic clk,
    input logic [In_width-1:0] in [N_inputs-1:0],
    output logic [In_width+$clog2(N_inputs)-1:0] out
);

genvar i, j;
localparam int Out_width = In_width+$clog2(N_inputs);
localparam int N_levels = $clog2(N_inputs);

logic [Out_width-1:0] sumas [(2*N_inputs)-2:0];

always_ff @(posedge clk) begin : in_read
    for (int i = 0; i < N_inputs; i++) begin
        sumas[i] <= {{(Out_width - In_width){1'b0}}, in[i]};
    end
end: in_read


generate
    for(i = 0; i < N_levels; i++) begin : level
        for(j = 0; j < (N_inputs>>(i+1)); j++) begin : adder
			always_ff @(posedge clk) begin
				sumas[2*N_inputs - (N_inputs >> i) + j] <= sumas[2*N_inputs - (2*N_inputs >> i) + 2*j] + sumas[2*N_inputs - (2*N_inputs >> i) + 2*j + 1];
			end
        end: adder
    end: level
endgenerate

always_ff @(posedge clk) begin : out_write
	out <= sumas[2*N_inputs - 2];
end: out_write


endmodule
