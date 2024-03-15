`include "comparison.v"

module comparison_tb;
    reg [19:0] a;
    reg [19:0] b;
    wire lt;
    wire eq;
    wire gt;
    wire le = !gt;
    wire ne = !eq;
    wire ge = !lt;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    comparison c0 (
        .a (a),
        .b (b),
        .lt (lt),
        .eq (eq),
        .gt (gt)
    );

    initial begin
        a <= 0;
        b <= 0;

        $dumpfile("comparison_tb.vcd");
        $dumpvars(1,comparison_tb);

        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
            b <= $urandom(SEED);
        end
    end

endmodule