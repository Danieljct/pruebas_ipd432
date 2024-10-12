module testbench();
    logic clk_100M;
    logic reset_n;
    logic uart_rx;   // Declarado como un solo bit
    logic uart_tx_usb;

    TOP_module DUT (
        .clk_100M(clk_100M),
        .reset_n(reset_n),
        .uart_rx(uart_rx),
        .uart_tx_usb(uart_tx_usb)
    );
    
    always #5 clk_100M = ~clk_100M;

    initial begin
        clk_100M = 0;
        reset_n = 0;
        uart_rx = 1'b1;  // UART line idle state is high (1)
        uart_tx_usb = 0;
        #10 reset_n = 1;
        
        // Enviar dos bytes en 0
        send_byte(8'h00);
        send_byte(8'h01);

        #300000
        // Enviar los bytes del 0 al 1023
        for (int i = 0; i < 1024; i++) begin
            send_byte(i[7:0]+100); // Enviar cada byte
        end
        send_byte(8'h00);
        #300000


       send_byte(8'h00);
       send_byte(8'h00);
       
       for (int i = 0; i < 1024; i++) begin
           send_byte(i[7:0]+200); // Enviar cada byte
       end
       
       
       send_byte(8'h01);
       send_byte(8'h01);   
       send_byte(8'h00);   
       send_byte(8'h00);
       send_byte(8'h01);
       
       
       #3000000
       send_byte(8'h01);   
       send_byte(8'h00);   
       send_byte(8'h01);
       send_byte(8'h01);
       
       send_byte(8'h01);     
       send_byte(8'h03);

       
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
