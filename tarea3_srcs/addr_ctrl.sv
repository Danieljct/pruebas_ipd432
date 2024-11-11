module addr_ctrl #(N =10)(
    input logic clk, rx_ready, SW, SR, tx_busy, Ac, reset_counter, reset_counter_euc, RM, sel, WM,
    output logic mready, rready, dist_ready, wea, web,
    output logic [10:0] addra, addr_count_rapido
    );
    
logic [N:0] addr_count;
logic [N:0] addr_count_salida;

EContadorN #(.N(N+1)) address_counter (
    .clk,
    .enable(rx_ready),
    .reset(SW | SR), 
    .count(addr_count)
    );

EContadorN #(.N(N+1)) address_counter_tx (
    .clk,
    .enable(~tx_busy),
    .reset(SR), 
    .count(addr_count_salida)
    );

EContadorN #(.N(11)) address_counter_rapido (
    .clk,
    .enable(Ac),
    .reset(SR | reset_counter | reset_counter_euc), 
    .count(addr_count_rapido)
    );


        
assign addra = Ac ? addr_count_rapido : {{10-N{1'b0}}, (RM ? addr_count_salida : addr_count)};


always_ff @(posedge clk) begin   
    mready <= addr_count >= (1<<N);
end
assign rready = addr_count_salida >= (1<<N)-1;
assign dist_ready = addr_count_rapido == (1<<10)+1;  
assign wea = (addra >= 1<<N) ? 0 :(sel ? 0 : WM);
assign web = (addra >= 1<<N) ? 0 :(~sel ? 0 : WM);


endmodule