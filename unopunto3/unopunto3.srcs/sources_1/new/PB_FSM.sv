`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2024 11:21:39
// Design Name: 
// Module Name: PB_FSM
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


module PB_FSM
#(
    parameter N = 5)
(
    input logic clk,
    input logic rst,
    input logic PB_status,
    output logic IncPulse_out
);
    
 //FSM states type:
enum logic [4:0] {IDLE, FST_PRESS, SHORT_PULSE, LONG_PULSE, LONG_PRESS} CurrentState, NextState;

//Timer-related declarations:

localparam DELAY_WIDTH = $clog2(N);   // Determine the size of the clock cycles counter
logic [DELAY_WIDTH-1:0] t;


//Part 3: Statements:---------------------------------------

//Timer :
always_ff @(posedge clk)
  if (rst) t <= 0;
  else if (CurrentState != NextState) t <= 1; //reset the timer when state changes
  else t <= t + 1;

//FSM state register:
always_ff @(posedge clk)
  if (rst) CurrentState <= IDLE;
  else CurrentState <= NextState;

//FSM combinational logic:
always_comb begin
    NextState = IDLE;
    IncPulse_out = 0;
    
    case (CurrentState)
        IDLE: begin
            if(PB_status) NextState = FST_PRESS;
        end

        FST_PRESS: begin
            if (PB_status && t >= N-1) NextState = LONG_PULSE;
            else if (PB_status && t < N-1) NextState = FST_PRESS;
            else NextState = SHORT_PULSE;
        end

        SHORT_PULSE: begin
            IncPulse_out = 1;
            NextState = IDLE;
        end
        
        LONG_PULSE: begin
            IncPulse_out = 1;
            if(PB_status) NextState = LONG_PRESS;
            else NextState = IDLE;
        end
        
        LONG_PRESS: begin
            if (PB_status && t >= N-1) NextState = LONG_PULSE;
            else if (PB_status && t < N-1) NextState = LONG_PRESS;
            else NextState = IDLE;
        end
  endcase
end


endmodule
