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
            4'd11: segmentos = ~7'b1110110;
            4'd12: segmentos = ~7'b1100111;
            4'd13: segmentos = ~7'b0111101;
            4'd14: segmentos = ~7'b1001111;
            4'd15: segmentos = ~7'b1000111;
            default: segmentos=~7'd0; 
        endcase
     end
endmodule