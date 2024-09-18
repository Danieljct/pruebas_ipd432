//////////////////////////////////////////////////////////////////////////////////
// Company: USM
// Engineer: Tómas Riveros, Daniel Cubillos
// 
// Create Date: 18.09.2024 11:10:27
// Design Name: Tarea 1.3
// Module Name: T1_design1
// Project Name: Tarea 1.3
// Target Devices: Nexys 4DDR
// Tool Versions: VIVADO 2024.1
// Description: FSM to detect a pressed button over time.
// 
// Dependencies: none for now
// 
// Revision: 18/09/2024
// Revision 0.01 - File Created
// Additional Comments: Falta todo
// 
//////////////////////////////////////////////////////////////////////////////////


//Timed Moore machine 

// Module header:-----------------------------
module T1_design1
#(
    parameter N_DEBOUNCER_DELAY = 10,
    parameter N_INCREMENT_DELAY_CONTINUOUS = 5)
(
    input logic clk,
    input logic resetN,
    input logic PushButton,
    output logic IncPulse_out
);
logic PB_status;

PB_Debouncer_FSM #(.DELAY(N_DEBOUNCER_DELAY)) PB_Debouncer_inst(.clk, .rst(~resetN), .PB(PushButton), .PB_pressed_status(PB_status));
PB_FSM #(.N(N_INCREMENT_DELAY_CONTINUOUS)) PB_FSM_inst (.rst(~resetN), .*);

 //Declarations:------------------------------



 endmodule
