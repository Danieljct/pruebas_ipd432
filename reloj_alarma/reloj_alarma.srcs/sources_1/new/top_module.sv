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
    output logic [7:0] LED,
    output logic [6:0] AN
    // agregar 2 puntos
    );
    logic [5:0] t;
    logic clk_s, clk_segment;
    logic PBL, PBR;
    logic M, H;
    logic Bm, Bh;
    
    PB_Debouncer_FSM #(.DELAY(1000))
        BOTON_IZQ (
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(BTNL),
            .PB_pressed_status(PBL)
        );

    PB_Debouncer_FSM #(.DELAY(1000))
        BOTON_DER (
        .clk(CLK100MHZ),
        .rst(~CPU_RESETN),
        .PB(BTNR),
        .PB_pressed_status(PBR)
    );

    divisor_frec #(.fin(100000000), .fout(1))
    frec_div_1seg(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clk_s)
    );
    
    divisor_frec #(.fin(100000000), .fout(10000))
    frec_div_segment(
        .CLK100MHZ,
        .reset(~CPU_RESETN),
        .clkout(clk_segment)
    );

    ContadorN #(.N(8))
    contador_segundos(
        .clk(clk_s),
        .reset(~CPU_RESETN),
        .count(t)
    );
    
    always_ff @(posedge CLK100MHZ)
        if(t>=59) t <= 0;
  

    logic CLK100HZ;
    divisor_frec #(.fin(100000000), .fout(100))
        periodo10ms(
            .CLK100MHZ,
            .reset(~CPU_RESETN),
            .clkout(CLK100HZ)
    );

    FSM_botones #(.N(100))
        FSM_Boton_DER(
            .clk(CLK100HZ),
            .rst(~CPU_RESETN),
            .PB(PBR),
            .more(Bm)
        );
        
    FSM_botones #(.N(100))
        FSM_Boton_IZQ(
            .clk(CLK100HZ),
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

    logic [2:0] contador8;
    ContadorN #(3)
    anodos(
        .clk(clk_segment),
        .reset(~CPU_RESETN), 
        .count(contador8)
        );


endmodule
