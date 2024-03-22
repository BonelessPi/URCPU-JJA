`include "alu.v"

module alu_tb;
    reg [19:0] arg0;
    reg [19:0] arg1;
    reg [4:0] instruction;
    reg enable;
    wire [19:0] res0;
    wire [19:0] res1;
    wire zero_out;
    wire sign_out;
    wire carry_out;
    wire underflow_out;
    wire overflow_out;

    integer i;
    integer NUM_ITERS = 14;
    integer SEED = 49448;

    alu a (
        .enable(enable),
        .instruction(instruction),
        .arg0(arg0),
        .arg1(arg1),
        .carry_in(0),
        .res0(res0),
        .res1(res1),
        .carry_out(carry_out),
        .overflow_out(overflow_out),
        .underflow_out(underflow_out),
        .sign_out(sign_out),
        .zero_out(zero_out)
    );

    initial begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(1,alu_tb);
        
        for (i = 0; i < NUM_ITERS; i++) begin
            enable = 0;
            instruction <= i;
            arg0 <= $urandom(SEED);
            arg1 <= $urandom(SEED);
            #1;
            enable <= 1;
            #10;
        end
    end

endmodule
