`include "ecc_mem_word.v"

module ecc_mem_word_tb;
    reg clk;
    reg WE;
    reg [19:0] data_in;
    wire [19:0] data_out;
    wire err;
    integer i;
    integer SEED = 87922;

    ecc_mem_word mem (
        .clk(clk),
        .WE(WE),
        .in(data_in),
        .out(data_out),
        .err(err)
    );

    initial begin
        clk <= 0;
        WE <= 1;
        data_in <= $urandom(SEED);

        $dumpfile("ecc_mem_word_tb.vcd");
        $dumpvars(1,ecc_mem_word_tb);

        for (i = 0; i < 25; i++) begin
            WE <= $urandom(SEED);
            #1
            clk <= i%2;
            #1;
            data_in <= $urandom(SEED);
            #1;
        end
    end

endmodule
