module sqrt_FSM (
    input logic clk,
    input logic rst,
    input logic start,
    input logic [31:0] x,   // input number
    output logic [15:0] y,   // result
    output logic done
);

    typedef enum logic [2:0] {
        INIT,
        ADD_BASE,
        CHECK,
        SUB_BASE,
        SHIFT_BASE,
        DONE
    } state_t;

    state_t state, next_state;

    logic [15:0] base;
    logic [15:0] y_next;
    logic [5:0] i;

    // Sequential logic (State register)
    always_ff @(posedge clk) begin
        if (rst) begin
            state <= INIT;
            y <= 16'd0;
        end else begin
            state <= next_state;
            y <= y_next;
        end
    end

    // Combinational logic (Next state and output logic)
    always_comb begin
        next_state = state;
        y_next = y;
        done = 1'b0;

        case (state)
            INIT: begin
                if (start) begin
                    base = 1<<15;
                    y_next = 16'd0;
                    i = 6'd1;
                    next_state = ADD_BASE;
                end
            end
            ADD_BASE: begin
                y_next = y + base;
                next_state = CHECK;
            end
            CHECK: begin
                if ((y * y) > x) begin
                    next_state = SUB_BASE;
                end else begin
                    next_state = SHIFT_BASE;
                end
            end
            SUB_BASE: begin
                y_next = y - base;
                next_state = SHIFT_BASE;
            end
            SHIFT_BASE: begin
                if (i < 16) begin
                    base = base >> 1;
                    i = i + 1;
                    next_state = ADD_BASE;
                end else begin
                    next_state = DONE;
                end
            end
            DONE: begin
                done = 1'b1;
                next_state = INIT; // Can go back to INIT or stay in DONE based on requirements
            end
        endcase
    end
endmodule
