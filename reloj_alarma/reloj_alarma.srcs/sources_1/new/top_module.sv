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


//   always_comb begin
//       if (t_internal >= 59)
//           t = 0;        
//       else
//           t = t_internal; 
//   end
  

    logic CLK100HZ;
    divisor_frec #(.fin(100000000), .fout(100)) //le agregué 5 ceros
        periodo10ms(
            .CLK100MHZ,
            .reset(~CPU_RESETN),
            .clkout(CLK100HZ)
    );

    FSM_botones #(.N(100000000))
        FSM_Boton_DER(
            .clk(CLK100MHZ),
            .rst(~CPU_RESETN),
            .PB(PBR),
            .more(Bm)
        );
        
    FSM_botones #(.N(100000000))
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

    logic [2:0] contador8;

    ContadorN #(.N(3))
    anodos(
        .clk(clk_segment),
        .reset(~CPU_RESETN), 
        .count(contador8)
        );

    logic [7:0] s_bcd, m_bcd, h_bcd;


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
    unsigned_to_bcd 
    Double_Dabble_horas(
        .clk(CLK100MHZ), 
        .reset(~CPU_RESETN), 
        .trigger(1'b1), 
        .in({27'b0,T3}),
        .bcd(h_bcd)
        );
    const logic [7:0] AM = 8'hAB, PM = 8'hCB;
    
    logic [31:0] hora_display;
    
    assign hora_display = {h_bcd[7:0], m_bcd[7:0], s_bcd[7:0], PM};
   
    logic [4:0] contador8shift;
    logic [3:0] numero_bcd;

    assign contador8shift = contador8 << 2;
    assign numero_bcd =  hora_display >> contador8shift;

    led7segmentos conversor(.BCD_in(numero_bcd), .segmentos);

    assign AN = ~(8'b1 << contador8);


endmodule
