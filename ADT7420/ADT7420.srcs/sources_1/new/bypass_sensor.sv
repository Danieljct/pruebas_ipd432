`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 14:02:34
// Design Name: 
// Module Name: bypass_sensor
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


module bypass_sensor(
    input   C17,
    output  C14,
    inout   C15,
    inout   D18
    );

assign C14 = C17;
assign C15 = D18;
assign D18 = C15;
    
endmodule
