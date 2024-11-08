`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 21:29:25
// Design Name: 
// Module Name: divisor_frec
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module divisor_frec #(fin=100000000, fout=1)(input logic CLK100MHZ, reset, output logic clkout);
localparam countermax=fin/(2*fout);
localparam delay=$clog2(countermax);
logic [delay-1:0] counter= '0;

always_ff @(posedge CLK100MHZ, posedge reset) begin
    if (reset==1'b1) begin
        counter<='d0;
        clkout<=0;
    end 
    else if (counter==countermax-1) begin
        counter<='d0;
        clkout<=~clkout;
    end 
    else begin
        counter<=counter + 'd1;
        clkout<=clkout;
    end 
end
endmodule
