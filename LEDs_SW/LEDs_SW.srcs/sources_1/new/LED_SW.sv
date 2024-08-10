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
    input logic [15:0] SW
    );

always_comb
begin   
    LED[15:0] = SW[15:0];
end


endmodule
