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
	output logic               uart_tx_usb
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
logic mready, rready;


uart_basic #(
		.CLK_FREQUENCY(100000000), // reloj base de entrada
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
	
logic WM, RM, op, SW, SR, tx, CMD;
main_FSM main_FSM(
	.clk, .rst(reset), .rx_ready, .mready, .rready,
	.rx(rx_data),
	.WM, .RM, .op, .SW, .SR, .tx, .CMD
	);
 logic [7:0] douta, doutb;
logic [7:0] tx_in;	



memory_unit memory_unit(
		.*	
	);

always_comb begin
	if (RM && tx) begin
		tx_data = tx_in;
		tx_start = ~tx_busy;
	end
	else begin
		tx_start = 0;
		tx_data = 8'b0;
	end
end


/*
ila_real your_instance_name (
	.clk(clkila), // input wire clk
	.probe0(rx_data), // input wire [7:0]  probe0  
	.probe1(tx_data), // input wire [7:0]  probe1 
	.probe2(CurrentState), // input wire [3:0]  probe2 
	.probe3(uart_rx), // input wire [0:0]  probe3 
	.probe4(uart_tx_usb), // input wire [0:0]  probe4 
	.probe5(tx_busy), // input wire [0:0]  probe5 
	.probe6(rx_ready) // input wire [0:0]  probe6
);
*/
endmodule