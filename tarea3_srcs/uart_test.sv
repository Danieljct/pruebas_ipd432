`timescale 1ns / 1ps

module uart_test#(parameter baudrate = 115200)();

    logic clk_100M;
    logic reset_n;
    logic uart_rx;   
    logic uart_tx_usb;
    logic uart_rx , rx_ready,tx_start,tx_busy;
    logic [7:0]    tx_data; 
    logic [7:0]    rx_data;

uart_basic #(
		.CLK_FREQUENCY(100000000), // reloj base de entrada
		.BAUD_RATE(baudrate)
	) uart_basic_inst (
		.clk(clk_100M),
		.reset(~reset_n),
		.rx(uart_rx),
		.rx_data(rx_data),
		.rx_ready(rx_ready),
		.tx(uart_tx_usb),
		.tx_start(tx_start),
		.tx_data(tx_data),
		.tx_busy(tx_busy)
	);


    always #5 clk_100M = ~clk_100M;

    initial begin
        clk_100M = 0;
        reset_n = 0;
        uart_rx = 1'b1;  // UART line idle state is high (1)
        uart_tx_usb = 0;
        #20 reset_n = 1;
        #600000
        // Enviar dos bytes en 0
        send_byte(8'h00);
        send_byte(8'h00);
        send_byte(8'h00);
        
        send_byte(8'h01);

        #600000
        // Enviar los bytes del 0 al 1023
        for (int i = 0; i < 1024; i++) begin
            send_byte(i); // Enviar cada byte
        end
        send_byte(8'h00);
        #600000


       send_byte(8'h00);
       send_byte(8'h00);
       
       for (int i = 0; i < 1024; i++) begin
           send_byte(255); // Enviar cada byte
       end
       
       
       send_byte(8'h01);
    //   send_byte(8'h01);   
    //   send_byte(8'h00);   
    //   send_byte(8'h00);
    //   send_byte(8'h01);
    //   
    //   
    //   #3000000
    //   send_byte(8'h01);   
    //   send_byte(8'h00);   
    //   send_byte(8'h01);
    //   send_byte(8'h01);
        #6000000
        
       send_byte(8'h01);     
       send_byte(8'h04);

       
       end

    // Declaración de tarea para enviar un byte por UART
    task send_byte(input logic [7:0] dato);  // Pasar uart_rx como argumento de salida
        int j;  // Declarar la variable del bucle 'j' explícitamente como un entero
        begin
            // Start bit (0)
            uart_rx = 1'b0;  // Asignación explícita de 1 bit
            #8680;
            
            // Enviar los 8 bits de datos, LSB primero
            for (j = 0; j < 8; j++) begin  // Usar la variable 'j' ya declarada
                uart_rx = dato[j];  // Asignación de bits de 'byte' a 'uart_rx'
                #8680;
            end
            
            // Stop bit (1)
            uart_rx = 1'b1;  // Asignación explícita de 1 bit
            #8680;
        end
    endtask
endmodule
