`include "ecc_mem_bit.v"

module testbench_ecc_mem_bit;
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

        $dumpfile("testbench_ecc_mem_bit.vcd");
        $dumpvars(1,mem);

        for (i = 1; i <= 25; i++) begin
            clk <= i%2;
            #2;
            inp <= $urandom(SEED);
            #2;
        end

    end

endmodule