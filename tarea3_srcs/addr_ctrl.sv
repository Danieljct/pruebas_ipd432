module addr_ctrl #(N =10)(
    input logic clk, reset, rx_ready, SW, SR, tx_busy, Ac, reset_counter, reset_counter_euc, RM, sel, WM,
    output logic mready, rready, dist_ready, wea, web,
    output logic [N:0] addra, addr_count_rapido,addr_count,addr_count_salida
    );
    
//      logic [N:0] addr_count; los puse en el ila 
//logic [N:0] addr_count_salida;

logic WM_reset;

pulse_generator WM_reset_gen (
    .clk,
    .reset,
    .in(WM), 
    .pulse_out(WM_reset)
    );

EContadorN #(.N(N+1)) address_counter (
    .clk,
    .enable(rx_ready),
    .reset(SW | SR | WM_reset), 
    .count(addr_count)
    );

EContadorN #(.N(N+1)) address_counter_tx (
    .clk,
    .enable(~tx_busy),
    .reset(SR), 
    .count(addr_count_salida)
    );

EContadorN #(.N($clog2(N)+4)) address_counter_rapido (
    .clk,
    .enable(Ac),
    .reset(SR | reset_counter | reset_counter_euc), 
    .count(addr_count_rapido)
    );


        
assign addra = Ac ? addr_count_rapido : {{10-N{1'b0}}, (RM ? addr_count_salida : addr_count)};

logic mready_t;
always_ff @(posedge clk) begin   
    rready <= addr_count_salida >= (1<<N)+1;
    mready_t <= addr_count >= (1<<N);
    mready <= mready_t;
    dist_ready <= addr_count_rapido >= N+8;  
end


assign wea = (addr_count >= (1<<N)) ? 0 :(sel ? 0 : WM);
assign web = (addr_count >= (1<<N)) ? 0 :(~sel ? 0 : WM);


endmodule