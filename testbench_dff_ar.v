`include "dff_ar.v"

module testbench_dff_ar;
    reg clk;
    reg reset;
    reg d;
    wire q;

    integer i;
    integer SEED = 458;

    dff_ar d0 (
        .clk (clk),
        .reset (reset),
        .d (d),
        .q (q)
    );

    initial begin
        clk <= 0;
        d <= 0;
        reset <= 0;

        $dumpfile("testbench_dff_ar.vcd");
        $dumpvars(1,d0);

        for (i = 0; i < 25; i++) begin
            d <= $urandom(SEED);
            #1
            clk <= i%2;
            #1;
            reset <= $urandom(SEED);
            #1;
        end

    end

endmodule