module rx_logic(
    input logic clk, 
    input logic [2:0] rx_data,
    input logic SW, op, CMD,
    output logic sel, sel_out,
    output logic [2:0] sel_op
    );
    
always_ff @(posedge clk) begin 
	if (SW)
		sel <= rx_data[0];
	if (op)
		sel_out <= rx_data[0];
    if (CMD)
        sel_op <= rx_data[2:0];
end

endmodule
