`include "mem_bank.v"

module mem_bank_tb;
    reg clk;
    reg WE;
    reg [19:0] data_in;
    reg [5:0] addr;
    wire [19:0] data_out;
    wire err;

    integer i;
    integer SEED = 74651;
    integer NUM_ITERS = 50;

    mem_bank_64 mem (
        .clk(clk),
        .WE(WE),
        .in(data_in),
        .addr(addr),
        .out(data_out),
        .err(err)
    );

    initial begin
        $dumpfile("mem_bank_tb.vcd");
        $dumpvars(1,mem);

        clk <= 0;
        addr <= 0;
        data_in <= 0;
        WE <= 1;
        for (i = 0; i < NUM_ITERS; i++) begin
            addr <= $urandom(SEED);
            data_in <= $urandom(SEED);
            clk <= i%2;
            #1;
        end

        WE <= 0;
        for (i = 0; i < NUM_ITERS; i++) begin
            data_in <= $urandom(SEED);
            addr <= $urandom(SEED);
            clk <= i%2;
            #1;
        end
    end

endmodule