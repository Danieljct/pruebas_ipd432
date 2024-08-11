`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 22:55:10
// Design Name: 
// Module Name: testbench
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


module testbench();
    logic [15:0] LED;
    logic [15:0] SW;
    logic [4:0] BTN;
    logic CLK100MHZ;
    logic CPU_RESETN;
    logic [7:0] AN;
    logic CA,CB,CC,CD,CE,CF,CG;
      
LED_SW DUT(.*);

always #1 CLK100MHZ=~CLK100MHZ;
initial begin
CLK100MHZ = 0;
CPU_RESETN = 0;
LED = '0;
SW = '0;
BTN = '1;
AN = '1;
{CA,CB,CC,CD,CE,CF,CG} = '1;
#100
CPU_RESETN = 1;
#10000 $finish;
end

endmodule
