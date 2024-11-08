// Autor: Daniel Cubillos
// shift register to serial input parallel output
module SIPO
#(
    parameter In_width = 8,
    parameter N_inputs = 16
)    
(
    input logic clk,
    input logic [In_width:0] in,
    output logic [In_width-1:0] out [N_inputs-1:0] 
);

always_ff @(posedge clk) begin : shift
    for (int i = N_inputs-1; i > 0; i--) begin
        out[i] <= out[i-1];
    end
    out[0] <= in;
end: shift



endmodule
