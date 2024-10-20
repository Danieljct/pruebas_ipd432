module rx_logic(
    input logic clk, reset, 
    input logic [7:0] rx_data,
    input logic SW, op, CMD, WM, rx_ready,
    output logic [7:0] din,
    output logic sel, sel_out,
    output logic [2:0] sel_op
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

endmodule
