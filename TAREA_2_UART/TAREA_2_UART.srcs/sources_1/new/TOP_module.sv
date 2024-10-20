`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 21:59:03
// Design Name: 
// Module Name: 
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


module TOP_module(
	input  logic               clk_100M,
	input  logic               reset_n,
	input  logic               uart_rx,
	//output logic               uart_tx_busy,
	output logic               uart_tx_usb,
    output logic [7:0] AN,
    output logic [6:0] segmentos
);
logic clk;
logic reset;
assign reset = ~reset_n;
 clk_wiz_0 clk100MHZ
   (
    .clk_out1(clk),  // output clk_out1
    .reset,         // input reset
    .locked(),       // output locked
    .clk_in1(clk_100M)      // input clk_in1
);


    
logic tx_start, tx_busy, rx_ready;
logic [7:0]    tx_data; 
logic [7:0]    rx_data; 
logic mready, rready, dist_ready;


uart_basic #(
		.CLK_FREQUENCY(80000000), // reloj base de entrada
		.BAUD_RATE(115200)
	) uart_basic_inst (
		.clk,
		.reset,
		.rx(uart_rx),
		.rx_data(rx_data),
		.rx_ready(rx_ready),
		.tx(uart_tx_usb),
		.tx_start(tx_start),
		.tx_data(tx_data),
		.tx_busy(tx_busy)
	);
	
logic WM, RM, op, SW, SR, tx, CMD, Ac;
logic [2:0] sel_op;

main_FSM main_FSM(
	.clk, .rst(reset), .rx_ready, .mready, .rready, .dist_ready,
	.rx(rx_data),
	.WM, .RM, .op, .SW, .SR, .tx, .CMD, .Ac, .sel_op
	);
 logic [7:0] douta, doutb;
logic [7:0] tx_in;	
logic [15:0] t_sqrteuc, sqrteuc;
logic tm_axis_dout_tvalid;

logic tx_dist;
logic [7:0] temp_AN;

memory_unit memory_unit(
		.*	
	);
	
assign AN = (sel_op == 3'd3 | sel_op == 3'd4) ? temp_AN : 8'hff;

always_comb begin
	if (RM && tx) begin        //leyendo
		tx_data = tx_in;
		tx_start = ~tx_busy;
	end
	else if (tx_dist)begin   // man enviar
	   tx_start = tx_dist;
	   tx_data = tx_in;	
	end
	else begin             // no sé
		tx_start = 0;
		tx_data = 8'd11;   //párece que es este
	end
end



//ila_0 your_instance_name (
//	.clk(clk), // input wire clk
//	.probe0(t_sqrteuc), // input wire [15:0]  probe0  
//	.probe1(tx_data), // input wire [7:0]  probe1 
//	.probe3(tx_in), // input wire [7:0]  probe3 
//	.probe4(sqrteuc),
//	.probe6(stateW),
//	.probe7(tx_dist),
//	.probe8(uart_tx_usb),
//	.probe9(sel_op)
	
//);

endmodule