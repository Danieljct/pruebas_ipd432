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
    input logic [15:0] SW, 
    input logic [4:0] BTN,
    input logic CLK100MHZ,
    input logic CPU_RESETN,
    output logic [7:0] AN, 
    output logic CA,CB,CC,CD,CE,CF,CG    
    );

logic clk_nuevo, clk_nuevo_fast; 
logic [31:0] count, salidadd;
logic [6:0] segmentos;
logic [2:0] contador8;
logic [4:0] contador8shift;
logic [3:0] numero_bcd;
// le subi la velocidad para el testbench 1000000 y 10000000, eran 1 y 10000
divisorreloj #(.fin(100000000), .fout(1)) clkdivider(.CLK100MHZ, .reset(~CPU_RESETN), .clkout(clk_nuevo));
divisorreloj #(.fin(100000000), .fout(10000)) clkdividerrapido(.CLK100MHZ, .reset(~CPU_RESETN), .clkout(clk_nuevo_fast));
//blink parpadeo(.LED, .clk(clk_nuevo));
contadorN #(32) cuenta(.clk(clk_nuevo),.reset(~CPU_RESETN), .count);
contadorN #(3) cuentacorta(.clk(clk_nuevo_fast),.reset(~CPU_RESETN), .count(contador8));
dobledable Double_Dabble(.clk(CLK100MHZ), .reset(~CPU_RESETN), .trigger(1'b1), .in(count),.bcd(salidadd));

assign contador8shift = contador8 << 2;
assign numero_bcd =  salidadd >> contador8shift;

led7segmentos conversor(.BCD_in(numero_bcd), .segmentos);
    
assign AN[7:0] = ~(8'b1 << contador8);
assign LED = count[15:0];
assign {CA,CB,CC,CD,CE,CF,CG} = segmentos;



endmodule 



module divisorreloj #(fin=100000000, fout=1)(input logic CLK100MHZ, reset, output logic clkout);
localparam countermax=fin/(2*fout);
localparam delay=$clog2(countermax);
logic [delay-1:0] counter= '0;

always_ff @(posedge CLK100MHZ, posedge reset) begin
    if (reset==1'b1) begin
        counter<='d0;
        clkout<=0;
    end 
    else if (counter==countermax-1) begin
        counter<='d0;
        clkout<=~clkout;
    end 
    else begin
        counter<=counter + 'd1;
        clkout<=clkout;
    end 
end
endmodule


module blink(
    output logic [15:0] LED, 
    input logic clk
    );
always_ff@(posedge clk)
    LED[10] <= ~LED[10]; 
endmodule



module contadorN #(N)(input logic clk,reset, output logic[N-1:0] count);
    always_ff @(posedge clk, posedge reset)
    if (reset)
        count<= 'b0;
    else 
        count<=count+1;
endmodule


module led7segmentos(
    input logic [3:0] BCD_in,
    output logic [6:0] segmentos
    );
    
    always_comb begin
        case (BCD_in)
            4'd0: segmentos=~7'b1111110;
            4'd1: segmentos=~7'b0110000;
            4'd2: segmentos=~7'b1101101;
            4'd3: segmentos=~7'b1111001;
            4'd4: segmentos=~7'b0110011;
            4'd5: segmentos=~7'b1011011;
            4'd6: segmentos=~7'b1011111;
            4'd7: segmentos=~7'b1110000;
            4'd8: segmentos=~7'b1111111;
            4'd9: segmentos=~7'b1111011;
            4'd10: segmentos = ~7'b1110111;
            4'd11: segmentos = ~7'b0011111;
            4'd12: segmentos = ~7'b1001110;
            4'd13: segmentos = ~7'b0111101;
            4'd14: segmentos = ~7'b1001111;
            4'd15: segmentos = ~7'b1000111;
            default: segmentos=~7'd0; 
        endcase
     end
endmodule





module dobledable
(
	input  logic 		    clk, 	 // Reloj
				            reset,   // Reset
	input  logic 		    trigger, // Inicio de conversión
	input  logic [31:0] 	in,      // Número binario de entrada
	output logic  		    idle,    // Si vale 0, indica una conversión en proceso
	output logic [31:0] 	bcd 	 // Resultado de la conversión
);
	 
	localparam COUNTER_MAX = 32;
	(* fsm_encoding = "one_hot" *) enum logic [2:0] {S_IDLE, S_SHIFT, S_ADD3} state, state_next;

	logic [31:0] shift, shift_next;
	logic [31:0] bcd_next;
	logic [5:0] counter, counter_next; /* Contador 6 bit para las iteraciones */

	always_comb begin
		{state_next, shift_next, bcd_next, counter_next} = {state, shift, bcd, counter};
		idle = 1'b0; 
		case (state)
		S_IDLE: begin
			counter_next = 'd1;
			shift_next = 'd0;
			idle = 1'b1;

			if (trigger) begin
				state_next = S_SHIFT;
			end
		end
		S_ADD3: begin
			if (shift[31:28] >= 5)
				shift_next[31:28] = shift[31:28] + 4'd3;

			if (shift[27:24] >= 5)
				shift_next[27:24] = shift[27:24] + 4'd3;

			if (shift[23:20] >= 5)
				shift_next[23:20] = shift[23:20] + 4'd3;

			if (shift[19:16] >= 5)
				shift_next[19:16] = shift[19:16] + 4'd3;

			if (shift[15:12] >= 5)
				shift_next[15:12] = shift[15:12] + 4'd3;

			if (shift[11:8] >= 5)
				shift_next[11:8] = shift[11:8] + 4'd3;

			if (shift[7:4] >= 5)
				shift_next[7:4] = shift[7:4] + 4'd3;

			if (shift[3:0] >= 5)
				shift_next[3:0] = shift[3:0] + 4'd3;

			state_next = S_SHIFT;
		end
		S_SHIFT: begin
			shift_next = {shift[30:0], in[COUNTER_MAX - counter_next]};
			if (counter == COUNTER_MAX) begin
				bcd_next = shift_next;
				state_next = S_IDLE;
			end else
				state_next = S_ADD3;
			counter_next = counter + 'd1;
		end
		default: begin
			state_next = S_IDLE;
		end
		endcase
	end
	always @(posedge clk, posedge reset) begin
		if(reset) begin
			{shift, bcd, counter} <= 'd0;
			state <= S_IDLE;
		end
		else
			{state, shift, bcd, counter} <= {state_next, shift_next, bcd_next, counter_next};
	end

endmodule
