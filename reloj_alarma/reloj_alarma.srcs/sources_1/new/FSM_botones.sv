//////////////////////////////////////////////////////////////////////////////////
// Company: USM
// Engineer: Tomás Riveros, Daniel Cubillos
// 
// Create Date: 19.09.2024 10:23:27
// Design Name: Tarea 1.3
// Module Name: T1_design1
// Project Name: Tarea 1.3
// Target Devices: Nexys 4DDR
// Tool Versions: VIVADO 2024.1
// Description: el reloj cuenta hasta 50 y 100 para 0.5 y 1 segundos respectivamente
// 
// Dependencies: 
// 
// Revision: debería estar listo
// Revision 0.01 - File Created
// Additional Comments: cambiamos el de la actividad pasada
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM_botones
#(
    parameter N = 100)
(
    input logic clk,    //RELOJ de 10ms
    input logic rst,
    input logic PB,
    output logic more
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
    more = 0;
    
    case (CurrentState)
        IDLE: begin
            if(PB) NextState = FST_PRESS;
        end

        FST_PRESS: begin
            if (PB && t >= N-1) NextState = LONG_PULSE;
            else if (PB && t < N-1) NextState = FST_PRESS;
            else NextState = SHORT_PULSE;
        end

        SHORT_PULSE: begin
            more = 1;
            NextState = IDLE;
        end
        
        LONG_PULSE: begin
            more = 1;
            if(PB) NextState = LONG_PRESS;
            else NextState = IDLE;
        end
        
        LONG_PRESS: begin
            if (PB && t >= N/2-1) NextState = LONG_PULSE;
            else if (PB && t < N/2-1) NextState = LONG_PRESS;
            else NextState = IDLE;
        end
  endcase
end


endmodule