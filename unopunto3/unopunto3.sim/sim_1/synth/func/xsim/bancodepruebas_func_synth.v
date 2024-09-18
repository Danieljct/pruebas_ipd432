// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Sep 18 11:58:03 2024
// Host        : DESKTOP-MK895J2 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/github/pruebas_ipd432/unopunto3/unopunto3.sim/sim_1/synth/func/xsim/bancodepruebas_func_synth.v
// Design      : T1_design1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PB_Debouncer_FSM
   (SR,
    Q,
    \FSM_onehot_state_reg[3]_0 ,
    PushButton_IBUF,
    clk_IBUF_BUFG,
    resetN_IBUF,
    \t_reg[2] );
  output [0:0]SR;
  output [0:0]Q;
  output \FSM_onehot_state_reg[3]_0 ;
  input PushButton_IBUF;
  input clk_IBUF_BUFG;
  input resetN_IBUF;
  input [0:0]\t_reg[2] ;

  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire PB_sync;
  wire PB_sync_aux;
  wire PushButton_IBUF;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire \delay_timer[3]_i_1_n_0 ;
  wire \delay_timer[3]_i_3_n_0 ;
  wire \delay_timer[3]_i_4_n_0 ;
  wire [3:0]delay_timer_reg;
  wire [4:0]next_state__0;
  wire [3:0]p_0_in;
  wire resetN_IBUF;
  wire [1:0]state;
  wire [0:0]\t_reg[2] ;

  LUT5 #(
    .INIT(32'hF0F0FFFE)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(PB_sync),
        .O(next_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE0A0)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state[0]),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(PB_sync),
        .I3(state[1]),
        .O(next_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(delay_timer_reg[0]),
        .I1(delay_timer_reg[1]),
        .I2(delay_timer_reg[2]),
        .I3(delay_timer_reg[3]),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(PB_sync),
        .I1(state[1]),
        .I2(delay_timer_reg[3]),
        .I3(delay_timer_reg[2]),
        .I4(delay_timer_reg[1]),
        .I5(delay_timer_reg[0]),
        .O(next_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(PB_sync),
        .O(next_state__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(resetN_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(Q),
        .I1(PB_sync),
        .O(next_state__0[4]));
  (* FSM_ENCODED_STATES = "PB_PRESSED:00100,PB_COUNT:00010,PB_IDLE:00001,PB_STABLE:01000,PB_RELEASED:10000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[0]),
        .Q(state[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "PB_PRESSED:00100,PB_COUNT:00010,PB_IDLE:00001,PB_STABLE:01000,PB_RELEASED:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[1]),
        .Q(state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "PB_PRESSED:00100,PB_COUNT:00010,PB_IDLE:00001,PB_STABLE:01000,PB_RELEASED:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[2]),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "PB_PRESSED:00100,PB_COUNT:00010,PB_IDLE:00001,PB_STABLE:01000,PB_RELEASED:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[3]),
        .Q(Q),
        .R(SR));
  (* FSM_ENCODED_STATES = "PB_PRESSED:00100,PB_COUNT:00010,PB_IDLE:00001,PB_STABLE:01000,PB_RELEASED:10000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[4]),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_CurrentState[1]_i_2 
       (.I0(Q),
        .I1(\t_reg[2] ),
        .O(\FSM_onehot_state_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    PB_sync_aux_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PushButton_IBUF),
        .Q(PB_sync_aux),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    PB_sync_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(PB_sync_aux),
        .Q(PB_sync),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_timer[0]_i_1 
       (.I0(delay_timer_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \delay_timer[1]_i_1 
       (.I0(delay_timer_reg[0]),
        .I1(delay_timer_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \delay_timer[2]_i_1 
       (.I0(delay_timer_reg[1]),
        .I1(delay_timer_reg[0]),
        .I2(delay_timer_reg[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAFAABA)) 
    \delay_timer[3]_i_1 
       (.I0(\delay_timer[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(state[1]),
        .I3(Q),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .I5(\delay_timer[3]_i_4_n_0 ),
        .O(\delay_timer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \delay_timer[3]_i_2 
       (.I0(delay_timer_reg[2]),
        .I1(delay_timer_reg[0]),
        .I2(delay_timer_reg[1]),
        .I3(delay_timer_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1E0E)) 
    \delay_timer[3]_i_3 
       (.I0(state[1]),
        .I1(Q),
        .I2(PB_sync),
        .I3(state[0]),
        .O(\delay_timer[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \delay_timer[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(resetN_IBUF),
        .O(\delay_timer[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_timer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(delay_timer_reg[0]),
        .R(\delay_timer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_timer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(delay_timer_reg[1]),
        .R(\delay_timer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_timer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(delay_timer_reg[2]),
        .R(\delay_timer[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \delay_timer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(delay_timer_reg[3]),
        .R(\delay_timer[3]_i_1_n_0 ));
endmodule

module PB_FSM
   (IncPulse_out_OBUF,
    Q,
    \FSM_sequential_CurrentState_reg[0]_0 ,
    \t_reg[2]_0 ,
    SR,
    clk_IBUF_BUFG,
    resetN_IBUF);
  output IncPulse_out_OBUF;
  output [0:0]Q;
  input [0:0]\FSM_sequential_CurrentState_reg[0]_0 ;
  input \t_reg[2]_0 ;
  input [0:0]SR;
  input clk_IBUF_BUFG;
  input resetN_IBUF;

  wire [1:0]CurrentState;
  wire [0:0]\FSM_sequential_CurrentState_reg[0]_0 ;
  wire IncPulse_out_OBUF;
  wire [2:0]NextState__0;
  wire [0:0]Q;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire [2:2]p_1_in;
  wire resetN_IBUF;
  wire [2:0]t;
  wire \t[0]_i_1_n_0 ;
  wire \t[1]_i_1_n_0 ;
  wire \t[1]_i_2_n_0 ;
  wire \t[2]_i_1_n_0 ;
  wire \t[2]_i_3_n_0 ;
  wire \t[2]_i_4_n_0 ;
  wire \t[2]_i_5_n_0 ;
  wire \t_reg[2]_0 ;

  LUT6 #(
    .INIT(64'h000057FF00000000)) 
    \FSM_sequential_CurrentState[0]_i_1 
       (.I0(CurrentState[0]),
        .I1(t[1]),
        .I2(t[0]),
        .I3(t[2]),
        .I4(Q),
        .I5(\FSM_sequential_CurrentState_reg[0]_0 ),
        .O(NextState__0[0]));
  LUT6 #(
    .INIT(64'hFFFFA80000000000)) 
    \FSM_sequential_CurrentState[1]_i_1 
       (.I0(t[2]),
        .I1(t[0]),
        .I2(t[1]),
        .I3(CurrentState[0]),
        .I4(CurrentState[1]),
        .I5(\t_reg[2]_0 ),
        .O(NextState__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_CurrentState[2]_i_1 
       (.I0(CurrentState[1]),
        .I1(CurrentState[0]),
        .I2(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I3(Q),
        .O(NextState__0[2]));
  (* FSM_ENCODED_STATES = "SHORT_PULSE:100,FST_PRESS:001,LONG_PULSE:010,IDLE:000,LONG_PRESS:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState__0[0]),
        .Q(CurrentState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "SHORT_PULSE:100,FST_PRESS:001,LONG_PULSE:010,IDLE:000,LONG_PRESS:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState__0[1]),
        .Q(CurrentState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "SHORT_PULSE:100,FST_PRESS:001,LONG_PULSE:010,IDLE:000,LONG_PRESS:011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_CurrentState_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(NextState__0[2]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    IncPulse_out_OBUF_inst_i_1
       (.I0(Q),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(IncPulse_out_OBUF));
  LUT6 #(
    .INIT(64'h0000000000004404)) 
    \t[0]_i_1 
       (.I0(t[0]),
        .I1(resetN_IBUF),
        .I2(\t_reg[2]_0 ),
        .I3(\t[2]_i_3_n_0 ),
        .I4(\t[2]_i_4_n_0 ),
        .I5(\t[2]_i_5_n_0 ),
        .O(\t[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \t[1]_i_1 
       (.I0(t[1]),
        .I1(t[0]),
        .I2(resetN_IBUF),
        .I3(\t[1]_i_2_n_0 ),
        .I4(\t[2]_i_4_n_0 ),
        .I5(\t[2]_i_5_n_0 ),
        .O(\t[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \t[1]_i_2 
       (.I0(Q),
        .I1(\FSM_sequential_CurrentState_reg[0]_0 ),
        .I2(t[2]),
        .I3(t[0]),
        .I4(t[1]),
        .O(\t[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008808)) 
    \t[2]_i_1 
       (.I0(p_1_in),
        .I1(resetN_IBUF),
        .I2(\t_reg[2]_0 ),
        .I3(\t[2]_i_3_n_0 ),
        .I4(\t[2]_i_4_n_0 ),
        .I5(\t[2]_i_5_n_0 ),
        .O(\t[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \t[2]_i_2 
       (.I0(t[1]),
        .I1(t[0]),
        .I2(t[2]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \t[2]_i_3 
       (.I0(t[1]),
        .I1(t[0]),
        .I2(t[2]),
        .O(\t[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \t[2]_i_4 
       (.I0(Q),
        .I1(CurrentState[1]),
        .I2(CurrentState[0]),
        .O(\t[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h050E)) 
    \t[2]_i_5 
       (.I0(CurrentState[0]),
        .I1(CurrentState[1]),
        .I2(Q),
        .I3(\FSM_sequential_CurrentState_reg[0]_0 ),
        .O(\t[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\t[0]_i_1_n_0 ),
        .Q(t[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\t[1]_i_1_n_0 ),
        .Q(t[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\t[2]_i_1_n_0 ),
        .Q(t[2]),
        .R(1'b0));
endmodule

(* N_DEBOUNCER_DELAY = "10" *) (* N_INCREMENT_DELAY_CONTINUOUS = "5" *) 
(* NotValidForBitStream *)
module T1_design1
   (clk,
    resetN,
    PushButton,
    IncPulse_out);
  input clk;
  input resetN;
  input PushButton;
  output IncPulse_out;

  wire [2:2]CurrentState;
  wire IncPulse_out;
  wire IncPulse_out_OBUF;
  wire PB_Debouncer_inst_n_0;
  wire PB_Debouncer_inst_n_2;
  wire PB_status;
  wire PushButton;
  wire PushButton_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire resetN;
  wire resetN_IBUF;

  OBUF IncPulse_out_OBUF_inst
       (.I(IncPulse_out_OBUF),
        .O(IncPulse_out));
  PB_Debouncer_FSM PB_Debouncer_inst
       (.\FSM_onehot_state_reg[3]_0 (PB_Debouncer_inst_n_2),
        .PushButton_IBUF(PushButton_IBUF),
        .Q(PB_status),
        .SR(PB_Debouncer_inst_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .resetN_IBUF(resetN_IBUF),
        .\t_reg[2] (CurrentState));
  PB_FSM PB_FSM_inst
       (.\FSM_sequential_CurrentState_reg[0]_0 (PB_status),
        .IncPulse_out_OBUF(IncPulse_out_OBUF),
        .Q(CurrentState),
        .SR(PB_Debouncer_inst_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .resetN_IBUF(resetN_IBUF),
        .\t_reg[2]_0 (PB_Debouncer_inst_n_2));
  IBUF PushButton_IBUF_inst
       (.I(PushButton),
        .O(PushButton_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF resetN_IBUF_inst
       (.I(resetN),
        .O(resetN_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
