module EContadorN #(N = 3)(
    input logic clk,reset, enable, 
    output logic[N-1:0] count
    );

    always_ff @(posedge clk, posedge reset)
    if (reset)
        count<= 'b0;
    else if (enable)
        count<=count+1;
    else
        count<=count;
endmodule
