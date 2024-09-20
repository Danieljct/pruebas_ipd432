module Formato_Hora(
    input logic CLK100MHZ,
    input logic CPU_RESETN,
    input logic [1:0] SW,
    input logic [5:0] T1,
    input logic [5:0] T2,
    input logic [4:0] T3,
    output logic LED,
    output logic [31:0] hora_display
);

    const logic [7:0] AM = 8'hAB, PM = 8'hCB;
   
    logic [31:0] s_bcd, m_bcd, h_bcd;
    logic [7:0] tipo_hora;
    logic [4:0] T3_2;


    unsigned_to_bcd 
    Double_Dabble_segundos(
        .clk(CLK100MHZ), 
        .reset(~CPU_RESETN), 
        .trigger(1'b1), 
        .in({26'b0,T1}),
        .bcd(s_bcd)
        );

    unsigned_to_bcd 
    Double_Dabble_minutos(
        .clk(CLK100MHZ), 
        .reset(~CPU_RESETN), 
        .trigger(1'b1), 
        .in({26'b0,T2}),
        .bcd(m_bcd)
        );

    always_ff @(posedge CLK100MHZ)
        if(SW[0])
            begin
                if (T3 > 12) 
                    T3_2 <= T3 - 12;
                else
                    T3_2 <= T3;
                if(T3>=12) 
                    begin
                        tipo_hora <= PM;
                        
                        LED <= 1;
                    end
                else
                    begin
                        T3_2 <= T3; 
                        tipo_hora <= AM;
                        LED <= 0;
                    end
            end
        else 
            begin
                T3_2 <= T3;
                tipo_hora <= 8'hFF;
                LED <= 0;
            end

    unsigned_to_bcd 
    Double_Dabble_horas(
        .clk(CLK100MHZ), 
        .reset(~CPU_RESETN), 
        .trigger(1'b1), 
        .in({27'b0,T3_2}),
        .bcd(h_bcd)
        );


    assign hora_display = {h_bcd[7:0], m_bcd[7:0], s_bcd[7:0], tipo_hora};

endmodule