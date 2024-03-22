`include "dff.v"

module dff_tb;
    reg clk;
    reg d;
    reg WE;
    wire q;

    integer i;
    integer SEED = 1712;

    dff d0 (
        .clk (clk),
        .WE (WE),
        .d (d),
        .q (q)
    );

    initial begin
        clk <= 0;
        d <= 0;

        $dumpfile("dff_tb.vcd");
        $dumpvars(1,d0);

        for (i = 0; i < 25; i++) begin
            d <= $urandom(SEED);
            WE <= $urandom(SEED);
            clk <= i%2;
            #1;
        end

    end

endmodule