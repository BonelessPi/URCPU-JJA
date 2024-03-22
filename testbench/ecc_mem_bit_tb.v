`include "ecc_mem_bit.v"

module ecc_mem_bit_tb;
    reg clk;
    reg WE;
    reg in;
    wire out;
    wire err;

    integer i;
    integer SEED = 4521;

    ecc_mem_bit mem (
        .clk (clk),
        .WE (WE),
        .in (in),
        .out (out),
        .err (err)
    );

    initial begin
        clk <= 0;
        in <= 0;

        $dumpfile("ecc_mem_bit_tb.vcd");
        $dumpvars(1,mem);

        for (i = 1; i <= 25; i++) begin
            WE <= $urandom(SEED);
            clk <= i%2;
            #2;
            in <= $urandom(SEED);
            #2;
        end

    end

endmodule