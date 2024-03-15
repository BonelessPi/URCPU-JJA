`include "not_gate.v"

module not_gate_tb;
    reg [19:0] a;
    wire [19:0] b;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    not_gate x0 (
        .a (a),
        .b (b)
    );

    initial begin
        a <= -1;

        $dumpfile("not_gate_tb.vcd");
        $dumpvars(1,x0);

        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
        end
    end

endmodule