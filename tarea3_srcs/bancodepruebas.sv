`timescale 1ns / 1ps

// Autor: Daniel Cubillos


module bancodepruebas();
    localparam In_width = 10;
	localparam N_inputs = 1024;
	logic clk;
    logic [In_width-1:0] in [N_inputs-1:0];
    logic [In_width+$clog2(N_inputs)-1:0] out;

adder_tree #(.In_width(In_width), .N_inputs(N_inputs)) DUT(.*);

always #1 clk = ~clk;

   initial begin
      clk = 0;
           for (int i = 0; i < 1024; i++) begin
           in[i] = '1;
        end
   end

endmodule

