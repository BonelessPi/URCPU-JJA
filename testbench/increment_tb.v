`include "increment.v"

module increment_tb;
    reg [19:0] in;
    wire [19:0] out;
    wire carry_out;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 48377;

    increment_module s (
        .in (in),
        .out (out),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("increment_tb.vcd");
        $dumpvars(1,s);

        for (i = 0; i < NUM_ITERS; i++) begin
            in <= $urandom(SEED);
            #10;
        end
        in <= -1;
        #10;

    end

endmodule