// Module header:-----------------------------
module main_FSM
(
	input 	logic clk, rst, rx_ready, mready,
	input 	logic [7:0] rx,
	output 	logic WM, RM,
	output logic op
	);

 //Declarations:------------------------------

 //FSM states type:
enum logic [3:0] {IDLE, COMMAND, WRITE, OPERATION, WBRAM, RBRAM} CurrentState, NextState;

 //Statements:--------------------------------

 //FSM state register:
 always_ff @(posedge clk)
	if (rst) CurrentState <= IDLE;
	else CurrentState <= NextState;

 //FSM combinational logic:
 always_comb
 begin
	NextState = IDLE;  //Optional default state assigment
	RM = 0;
	WM = 0;
    op = 0;
	case (CurrentState)
		IDLE: begin
			if (rx_ready && &(~rx)) NextState = WRITE;
			else if (rx_ready && &(rx)) NextState = COMMAND;
		end
 
		COMMAND: begin
			if (rx_ready) NextState = OPERATION;
			else NextState = COMMAND;
		end
 
		WRITE: begin
			if (rx_ready) NextState = WBRAM;
			else NextState = WRITE;
		end

		OPERATION: begin
			op = 1;    // El rx le debe llegar al procesador, op solo dice que lo que le llegó es una operación
			if(rx_ready && ~mready) NextState = RBRAM;
			else if(~rx_ready && ~mready) NextState = OPERATION;
		end

		WBRAM: begin
			WM = 1;
			if(~mready) NextState = WBRAM; 
		end
		
		RBRAM: begin
			RM = 1;
			if(~mready) NextState = RBRAM;
		end
	endcase
 end
 endmodule