`include "decrement.v"

module decrement_tb;
    reg [19:0] in;
    wire [19:0] out;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 48377;

    decrement_module s (
        .in (in),
        .out (out)
    );

    initial begin
        $dumpfile("decrement_tb.vcd");
        $dumpvars(1,s);

        for (i = 0; i < NUM_ITERS; i++) begin
            in <= $urandom(SEED);
            #10;
        end

    end

endmodule