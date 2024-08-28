`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 21:40:43
// Design Name: 
// Module Name: letra
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


module letra(
    input logic [2:0] contador,
    output logic CA,CB,CC,CD,CE,CF,CG
    );
    
logic [6:0] segmentos;
always_comb begin
    case(contador)
        3'd0: segmentos = ~7'b1001110;
        3'd1: segmentos = ~7'b0000000;
        3'd2: segmentos = ~7'b0001110;
        3'd3: segmentos = ~7'b1001111;
        3'd4: segmentos = ~7'b0000110;
        3'd5: segmentos = ~7'b0010101;
        3'd6: segmentos = ~7'b1110111;
        3'd7: segmentos = ~7'b0111101;
        default:  segmentos=~7'd0; 
    endcase
end  
assign {CA,CB,CC,CD,CE,CF,CG} = segmentos;

    

  
  
endmodule
