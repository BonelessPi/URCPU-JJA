`include "and_gate.v"

module and_gate_tb;
    reg [19:0] a;
    reg [19:0] b;
    wire [19:0] c;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    and_gate x0 (
        .a (a),
        .b (b),
        .c (c)
    );

    initial begin
        a <= 0;
        b <= 0;

        $dumpfile("and_gate_tb.vcd");
        $dumpvars(1,x0);

        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
            b <= $urandom(SEED);
        end
    end

endmodule