`include "dff.v"

module testbench_dff;
    reg clk;
    reg d;
    wire q;

    integer i;
    integer SEED = 1712;

    dff d0 (
        .clk (clk),
        .d (d),
        .q (q)
    );

    initial begin
        clk <= 0;
        d <= 0;

        $dumpfile("testbench_dff.vcd");
        $dumpvars(1,d0);

        for (i = 0; i < 25; i++) begin
            d <= $urandom(SEED);
            #1
            clk <= i%2;
            #3;
        end

    end

endmodule