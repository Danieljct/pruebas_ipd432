// Autor: Daniel Cubillos
// shift register to paralel input serial output

module PISO
#(
    parameter In_width = 8,
    parameter N_inputs = 16
)    
(
    input logic clk,
    input logic start,
    input logic [In_width-1:0] in [N_inputs-1:0],
    output logic [In_width-1:0] out
);
logic [In_width-1:0] data [N_inputs-1:0];

always_ff @(posedge clk) begin : shift
    if (start) begin
        for (int i = 0; i < N_inputs; i++) begin
            data[i] <= in[i];
        end
    end else begin
        for (int i = N_inputs-1; i > 0; i--) begin
            data[i] <= data[i-1];
        end
        data[0] <= '0;
    end
end: shift

always_ff @(posedge clk) begin : out_write
    out <= data[N_inputs-1];
end: out_write

endmodule
