`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 20:55:13
// Design Name: 
// Module Name: generador_1hz
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


module generador_1hz (input logic CLK100MHZ, reset, output logic clkout);

localparam delay=$clog2(100000000);

logic [delay-1:0] counter = '0;

always_ff @(posedge CLK100MHZ, posedge reset) begin
    if (reset==1'b1) begin
        counter<='d0;
        clkout<=0;
    end 
    else if (counter>=100000000-1) begin
        counter<='d0;
        clkout<=~clkout;
    end 
    else begin
        counter<=counter + 'd1;
        clkout<=clkout;
    end 
end
endmodule