`include "swap.v"

module testbench_swap;
    reg [19:0] i_1;
    reg [19:0] i_2;
    wire [19:0] o_1;
    wire [19:0] o_2;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 18424;

    swap_module s (
        .input_a (i_1),
        .input_b (i_2),
        .output_a (o_1),
        .output_b (o_2)
    );

    initial begin
        $dumpfile("testbench_swap.vcd");
        $dumpvars(1,s);

        for (i = 0; i < NUM_ITERS; i++) begin
            i_1 <= $urandom(SEED);
            i_2 <= $urandom(SEED);
            #10;
        end

    end

endmodule