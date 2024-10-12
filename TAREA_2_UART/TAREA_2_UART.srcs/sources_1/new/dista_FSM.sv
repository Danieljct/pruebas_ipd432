// Module header:-----------------------------
module dista_FSM
(
	input 	logic clk, rst, tx_busy, start, 
	output logic tx_dist, reset_counter,
	output logic [3:0] N
	);

 //FSM states type:
enum logic [10:0] {IDLE, N1, N1_REST, N1_wait, N2, N2_REST, N2_wait, N3, N3_REST, N3_wait} CurrentState, NextState;

 //FSM state register:
 always_ff @(posedge clk)
	if (rst) CurrentState <= IDLE;
	else CurrentState <= NextState;

 //FSM combinational logic:
 always_comb begin
	NextState = IDLE;  //Optional default state assigment
	N = 0;
	tx_dist = 0;
	reset_counter = 0;
	case (CurrentState)
		IDLE: begin
			if(start) NextState = N1;
		end
		N1: begin
			N = 8;
			NextState = N1_REST;
			reset_counter = 1;
			tx_dist = 1;
		end
		N1_REST: begin
			NextState = N1_wait;
		end
		N1_wait: begin
			NextState = N1_wait;
			if(~tx_busy) NextState = N2;
		end
		N2: begin
			N = 8;
			NextState = N2_REST;
			tx_dist = 1;
		end
		N2_REST: begin
			NextState = N2_wait;
		end
		N2_wait: begin
			NextState = N2_wait;
			if(~tx_busy) NextState = N3;
		end
		N3: begin
			N = 8;
			NextState = N3_REST;
			tx_dist = 1;
		end
		N3_REST: begin
			NextState = N3_wait;
		end
		N3_wait: begin
			NextState = N3_wait;
			if(~tx_busy) NextState = IDLE;
		end
	endcase
	end
 endmodule