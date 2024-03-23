module UrCPU_Program_1 (
    input wire clk,
    input wire rst,
    output reg [31:0] memory[0:255]
);

reg [31:0] R1, R2, R3;

parameter ADDR_OP1 = 8'h100;
parameter ADDR_OP2 = 8'h101;
parameter ADDR_RESULT = 8'h102;

typedef enum logic [1:0] {
    STATE_FETCH_OP1,
    STATE_FETCH_OP2,
    STATE_ADD,
    STATE_STORE_RESULT,
    STATE_HALT
} state_type;
state_type state;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        // Reset
        state <= STATE_FETCH_OP1;
        R1 <= 32'h0;
        R2 <= 32'h0;
        R3 <= 32'h0;
    end else begin
        // State machine
        case(state)
            STATE_FETCH_OP1: begin
                R1 <= memory[ADDR_OP1];
                state <= STATE_FETCH_OP2;
            end
            STATE_FETCH_OP2: begin
                R2 <= memory[ADDR_OP2];
                state <= STATE_ADD;
            end
            STATE_ADD: begin
                R3 <= R1 + R2;
                state <= STATE_STORE_RESULT;
            end
            STATE_STORE_RESULT: begin
                memory[ADDR_RESULT] <= R3;
                state <= STATE_HALT;
            end
            STATE_HALT: begin
            end
        endcase
    end
end

endmodule
