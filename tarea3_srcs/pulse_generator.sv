module pulse_generator (
    input  logic clk,         // Reloj del sistema
    input  logic reset,       // Reset síncrono
    input  logic in,          // Señal de entrada
    output logic pulse_out    // Pulso de salida
);

    // Registro para almacenar el estado anterior de `in`
    logic in_prev;
    
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pulse_out <= 0;
            in_prev   <= 0;
        end else begin
            // Detecta flanco ascendente en `in`
            if (in && !in_prev) begin
                pulse_out <= 1;  // Genera un pulso de un ciclo
            end else begin
                pulse_out <= 0;  // Pulso vuelve a 0
            end
            in_prev <= in;  // Actualiza el valor previo de `in`
        end
    end

endmodule