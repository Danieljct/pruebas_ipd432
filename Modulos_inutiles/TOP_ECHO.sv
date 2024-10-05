`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 21:59:03
// Design Name: 
// Module Name: TOP_ECHO
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


module TOP_ECHO(
	input  logic               clk_100M,
	input  logic               reset_n,
	input  logic               button_c,
	
	input  logic               uart_rx,
	//output logic               uart_tx_busy,
	output logic               uart_tx_usb




);

	logic [7:0]    tx_data; 
	logic [7:0]    rx_data; 

	logic uart_tx;
	logic [1:0]    reset_sr;
	logic reset;
	assign reset = reset_sr[1];
	
	always_ff @(posedge clk_100M)
		reset_sr <= {reset_sr[0], ~reset_n};

    assign uart_tx_usb = uart_tx;





uart_basic #(
		.CLK_FREQUENCY(100000000), // reloj base de entrada
		.BAUD_RATE(115200)
	) uart_basic_inst (
		.clk(clk_100M),
		.reset(reset),
		.rx(uart_rx),
		.rx_data(rx_data),
		.rx_ready(rx_ready),
		.tx(uart_tx),
		.tx_start(1),
		.tx_data(tx_data),
		.tx_busy(tx_busy)
	);

    assign tx_data = rx_data;
    
ila_1 your_instance_name (
	.clk(clk_100M), // input wire clk


	.probe0(tx_data), // input wire [7:0]  probe0  
	.probe1(rx_data), // input wire [7:0]  probe1 
	.probe2(uart_rx), // input wire [0:0]  probe2 
	.probe3(uart_tx_usb), // input wire [0:0]  probe3 
	.probe4(button_c) // input wire [0:0]  probe4
);




endmodule