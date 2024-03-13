`include "dff.v"

module dff_tb;
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

        $dumpfile("dff_tb.vcd");
        $dumpvars(1,d0);

        for (i = 0; i < 25; i++) begin
            d <= $urandom(SEED);
            #1
            clk <= i%2;
            #3;
        end

    end

endmodule