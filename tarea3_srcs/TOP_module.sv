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


module TOP_module #(parameter baudrate = 115200, parameter clk_base = 94000000, parameter N = 10)(
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


//assign clk = clk_100M;
    
logic tx_start, tx_busy, rx_ready;
logic [7:0]    tx_data; 
logic [7:0]    rx_data; 
logic mready, rready, dist_ready;


uart_basic #(
		.CLK_FREQUENCY(clk_base), // reloj base de entrada
		.BAUD_RATE(baudrate)
	) uart_basic_inst (
		.clk(clk),
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
logic [3:0] estado_actual;
 
main_FSM main_FSM(
	.clk, .rst(reset), .rx_ready, .mready, .rready, .dist_ready,
	.rx(rx_data),
	.WM, .RM, .op, .SW, .SR, .tx, .CMD, .Ac, .sel_op, .estado_actual
	);
 logic [7:0] douta, doutb;
logic [7:0] tx_in;	
logic [15:0] t_sqrteuc, sqrteuc;
logic tm_axis_dout_tvalid;

logic tx_dist, Ac_retarded;
logic [7:0] temp_AN;
logic [7:0] memory_A_out;
logic [7:0] memory_X_out;
logic [N:0] addr_count,addr_count_salida;

memory_unit #(.N(N)) memory_unit_inst (
		.*	
	);
	
assign AN = (sel_op == 3'd3 | sel_op == 3'd4) ? temp_AN : 8'hff;


always_comb begin
	if (RM && tx) begin        //leyendo
		tx_data = tx_in;
		tx_start = ~tx_busy;
	end
	else if (Ac_retarded) begin   // man enviar
	   tx_start = ~tx_busy;
	   tx_data = tx_in;	
	end
	else begin             // no sé
		tx_start = 0;
		tx_data = 8'd11;   //párece que es este
	end
end



//ila_0 your_instance_name (
//	.clk(clk), // input wire clk
//	.probe0(memory_X_out), 
//	.probe1(tx_data),
//	.probe2(rx_data), 
//	.probe3(uart_tx_usb),
//	.probe4(rready),
//	.probe5(estado_actual),
//	.probe6(addr_count_salida),
//	.probe7(tx_start),
//	.probe8(tx_busy)
//	.probe8(uart_tx_usb),
//	.probe9(sel_op)
	
//);

endmodule