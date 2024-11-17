module signal_delay #(
    parameter dt = 4 // Cantidad de ciclos de reloj para el retraso
) (
    input  logic clk,          // Señal de reloj
    input  logic rst,          // Reset síncrono activo en alto
    input  logic din,          // Señal de entrada
    output logic dout          // Señal de salida retrasada
);
    // Registro de desplazamiento para almacenar los estados intermedios
    logic [dt-1:0] shift_reg;

    // Proceso secuencial controlado por el reloj
    always @(posedge clk) begin
        if (rst) begin
            shift_reg <= 0; // Reinicia el registro a 0
        end else begin
            shift_reg <= {shift_reg[dt-2:0], din}; // Desplaza e inserta la nueva entrada
        end
    end

    // La salida es el bit más antiguo del registro
    assign dout = shift_reg[dt-1];

endmodule
