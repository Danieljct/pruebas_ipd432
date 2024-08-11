`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 16:37:12
// Design Name: 
// Module Name: LED_SW
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


module LED_SW(
    output logic [15:0] LED,
    input logic [15:0] SW, 
    input logic [4:0] BTN,
    input logic CLK100MHZ,
    input logic CPU_RESETN    
    );

logic clk_nuevo; 

divisorreloj #(.fin(100000000), .fout(1)) clkdivider(.CLK100MHZ, .reset(~CPU_RESETN), .clkout(clk_nuevo));
blink parpadeo(.LED, .clk(clk_nuevo));


endmodule



module divisorreloj #(fin=100000000, fout=1)(input logic CLK100MHZ, reset, output logic clkout);
localparam countermax=fin/(2*fout);
localparam delay=$clog2(countermax);
logic [delay-1:0] counter= '0;

always_ff @(posedge CLK100MHZ) begin
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


module blink(
    output logic [15:0] LED, 
    input logic clk
    );
always_ff@(posedge clk)
    LED[10] <= ~LED[10]; 
     

endmodule