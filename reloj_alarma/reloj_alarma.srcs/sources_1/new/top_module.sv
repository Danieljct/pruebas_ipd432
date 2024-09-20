`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2024 10:20:28
// Design Name: 
// Module Name: top_module
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


module top_module(
    input logic CLK100MHZ,
    input logic CPU_RESETN,
    input logic [1:0] SW,
    input logic BTNL, BTNR,
    output logic [15:0] LED,
    output logic [7:0] AN,
    output logic [6:0] segmentos
    );
    // agregar 2 puntos
    logic [5:0] t;
    logic clk_s, clk_segment;
    logic PBL, PBR;
    logic M, H;
    logic MA, HA;
    logic Bm, Bh;
    
    PB_Debouncer_FSM #(.DELAY(10000))
        BOTON_IZQ (
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(BTNL),
            .PB_pressed_status(PBL)
        );

    PB_Debouncer_FSM #(.DELAY(10000))
        BOTON_DER (
        .clk(CLK100MHZ),
        .rst(~CPU_RESETN),
        .PB(BTNR),
        .PB_pressed_status(PBR)
    );

    divisor_frec #(.fin(100000000), .fout(1)) //le agregué 6 ceros
    frec_div_1seg(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clk_s)
    );
    
    divisor_frec #(.fin(100000000), .fout(10000)) // le agregué 3 ceros
    frec_div_segment(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clk_segment)
    );

    logic Rm, Rt;
     
    ContadorN #(.N(6))
    contador_segundos (
        .clk(clk_s),
        .reset(~CPU_RESETN || Rt),
        .count(t)  
    );

    FSM_botones #(.N(100000000)) // le quite 5 ceros
        FSM_Boton_DER(
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(PBR),
            .more(Bm)
        );
        
    
    FSM_botones #(.N(100000000)) // le quite 5 ceros
        FSM_Boton_IZQ(
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(PBL),
            .more(Bh)
        );


    logic [5:0] T1, T2;
    logic [4:0] T3;
    
    FSM_tiempo #(.N(60))
        FSM_tiempo(
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .*
        );
        
    

    RTC MARCADORDEHORA(
        .clk(CLK100MHZ), 
        .rst(~CPU_RESETN),
        .*
    );

    logic [5:0] T2_alarma;
    logic [4:0] T3_alarma;

    RTC ALARMADEHORA(
        .clk(CLK100MHZ), 
        .rst(~CPU_RESETN),
        .M(MA), .H(HA), .Rm(0),
        .t(0),
        .T2(T2_alarma),
        .T3(T3_alarma)
    );

    logic [2:0] contador8;

    ContadorN #(.N(3))
    anodos(
        .clk(clk_segment),
        .reset(~CPU_RESETN), 
        .count(contador8)
        );


    logic [31:0] hora_display;
    logic [31:0] alarma_display;

    
    Formato_Hora formato(
        .LED(LED[0]),
        .*
    );

    Formato_Hora formato_alarma(
        .T1(0),
        .T2(T2_alarma),
        .T3(T3_alarma),
        .hora_display(alarma_display),
        .LED(),
        .*
    );
    
    
    
    BCD_to_display display(
        .hora_display(SW[1]?alarma_display:hora_display),
        .*
    );

    logic [14:0] LEDs, LEDsf;
    logic clockalarma;
    divisor_frec #(.fin(100000000), .fout(20)) // le agregué 3 ceros
    frecuencia_alarma(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clockalarma)
    );

    always_ff @(posedge clockalarma)
        if(~CPU_RESETN)
            LEDsf <= 15'b101010101010101;
        else
            LEDsf <= ~LEDsf;

    always_comb begin
        if({T2_alarma,T3_alarma} == {T2,T3} && t < 5)
            LEDs = LEDsf;
        else
            LEDs = 15'b000000000000000;
    end

    assign LED = {LEDs,LED[0]};
endmodule
