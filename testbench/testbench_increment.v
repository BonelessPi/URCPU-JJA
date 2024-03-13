`include "increment.v"

module testbench_increment;
    reg [19:0] in;
    wire [19:0] out;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 48377;

    increment_module s (
        .in (in),
        .out (out)
    );

    initial begin
        $dumpfile("testbench_increment.vcd");
        $dumpvars(1,s);

        for (i = 0; i < NUM_ITERS; i++) begin
            in <= $urandom(SEED);
            #10;
        end

    end

endmodule