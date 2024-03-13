`include "ecc_mem_bit.v"

module ecc_mem_bit_tb;
    reg clk;
    reg inp;
    wire val;
    wire err;

    integer i;
    integer SEED = 4521;

    ecc_mem_bit mem (
        .clk (clk),
        .inp (inp),
        .val (val),
        .err (err)
    );

    initial begin
        clk <= 0;
        inp <= 0;

        $dumpfile("ecc_mem_bit_tb.vcd");
        $dumpvars(1,mem);

        for (i = 1; i <= 25; i++) begin
            clk <= i%2;
            #2;
            inp <= $urandom(SEED);
            #2;
        end

    end

endmodule