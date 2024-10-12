// Module header:-----------------------------
module main_FSM
(
	input 	logic clk, rst, rx_ready, mready, rready, man_ready,
	input 	logic [7:0] rx,
	input   logic [2:0] sel_op,
	output 	logic WM, RM, SW, SR, tx, CMD, Ac,
	output logic op
	);

 //Declarations:------------------------------

 //FSM states type:
enum logic [3:0] {IDLE, COMMAND, NOCOMMAND, WRITE, SEL_mem, OPERATION, DISTANCIA, WBRAM, RBRAM} CurrentState, NextState;

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
    SW = 0;
    SR = 0;
    tx = 0;
    CMD = 0;
	Ac = 0;
	case (CurrentState)
		IDLE: begin
			if (rx_ready && (rx==8'b0)) NextState = WRITE;
			else if (rx_ready && (rx==8'b1)) NextState = COMMAND;
		end
 
		COMMAND: begin
			NextState = NOCOMMAND;
		end

		NOCOMMAND: begin
			CMD = 1;
			SR = 1;
			if (rx_ready) NextState = OPERATION;
			else NextState = NOCOMMAND;
		end
 
		WRITE: begin
		    SW = 1;
			if (rx_ready) NextState = SEL_mem;
			else NextState = WRITE;
		end
		
		SEL_mem: begin
			NextState = WBRAM;
		end
		WBRAM: begin
			WM = 1;
			if(~mready) NextState = WBRAM; 
		end

		OPERATION: begin
			op = 1;    // El rx le debe llegar al procesador, op solo dice que lo que le llegó es una operación
			tx = 1;
			SR = 1;
			if (sel_op == 3'd3 | sel_op == 3'd4) NextState = DISTANCIA;
			else if(rx_ready && ~mready) NextState = RBRAM;
			else if(~rx_ready && ~mready) NextState = OPERATION;
		end

		DISTANCIA: begin
			Ac = 1;
			RM = 1;
			if(~man_ready) NextState = DISTANCIA;
		end

		RBRAM: begin
			RM = 1;
            tx = 1;
			if(~rready) NextState = RBRAM;
		end
	endcase
 end
 endmodule