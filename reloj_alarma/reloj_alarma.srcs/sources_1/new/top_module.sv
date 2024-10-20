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
    
    PB_Debouncer_FSM #(.DELAY(100000))
        PB_Debouncer_L (
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(BTNL),
            .PB_pressed_status(PBL)
        );

    PB_Debouncer_FSM #(.DELAY(100000))
        PB_Debouncer_R (
        .clk(CLK100MHZ),
        .rst(~CPU_RESETN),
        .PB(BTNR),
        .PB_pressed_status(PBR)
    );

    generador_1hz //le agregué 6 ceros para el testbench
    CLK_divider_To_1Hz(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clk_s)
    );
    
    divisor_frec #(.fin(100000000), .fout(10000)) // le agregué 3 ceros para el testbench
    frec_div_10kHz(
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

    FSM_botones #(.N(100000000)) // le quite 5 ceros para el testbench
        FSM_PB_R(
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(PBR),
            .more(Bm)
        );
        
    
    FSM_botones #(.N(100000000)) // le quite 5 ceros para el testbench
        FSM_PB_L(
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
        
    

    RTC Memoria_HORA(
        .clk(CLK100MHZ), 
        .rst(~CPU_RESETN),
        .*
    );

    logic [5:0] T2_alarma;
    logic [4:0] T3_alarma;

    RTC Memoria_ALARMA(
        .clk(CLK100MHZ), 
        .rst(~CPU_RESETN),
        .M(MA), .H(HA), .Rm(0),
        .t(0),
        .T2(T2_alarma),
        .T3(T3_alarma)
    );


    logic [31:0] hora_display;
    logic [31:0] alarma_display;

    
    Formato_Hora Formato_Hora(
        .LED(LED[0]),
        .*
    );

    Formato_Hora Formato_Alarma(
        .T1(0),
        .T2(T2_alarma),
        .T3(T3_alarma),
        .hora_display(alarma_display),
        .LED(),
        .*
    );
    
    
    
    BCD_to_display BCD_to_display(
        .hora_display(SW[1]?alarma_display:hora_display),
        .*
    );

    logic [14:0] LEDs;
    logic clockalarma;
    divisor_frec #(.fin(100000000), .fout(20)) // le agregué 3 ceros
    CLK_divider_to_20hz(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clockalarma)
    );
    
    
    ALARMA_LEDs 
        ALARMA_LEDs(
        .*
        );


    assign LED = {LEDs,LED[0]};
endmodule
