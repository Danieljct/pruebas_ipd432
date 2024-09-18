`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 11:47:59
// Design Name: 
// Module Name: bancodepruebas
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


module bancodepruebas();
    logic clk                ;
    logic resetN             ;
    logic PushButton         ;
    logic IncPulse_out       ;

// Module header:-----------------------------
T1_design1 #(.N_DEBOUNCER_DELAY(10), .N_INCREMENT_DELAY_CONTINUOU(5)) DUT (.*); 

always #1 clk = ~clk;

initial begin
    clk = 0;
    resetN = 1;
    PushButton = 0;
    #10 resetN = 0;
    #10 resetN = 1;
    #11 PushButton = 1;
    #28 PushButton = 0; //con 24 es un ciclo
    #20 PushButton = 1;
    #31 PushButton = 0;
    #20 PushButton = 1;
    #32 PushButton = 0;
    #20 PushButton = 1;
    #36 PushButton = 0;
    #20 PushButton = 1;
    #38 PushButton = 0;
    #20 PushButton = 1;
    #44 PushButton = 0;
    #20 PushButton = 1;
    #50 PushButton = 0;
    #20 PushButton = 1;
    #56 PushButton = 0;
    #50 $finish;
end

endmodule
