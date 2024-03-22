`include "register_word.v"

module register_word_tb;
    reg clk;
    reg WE;
    reg [19:0] data_in;
    wire [19:0] data_out;
    integer i;
    integer SEED = 87922;

    register_word mem (
        .clk(clk),
        .WE(WE),
        .in(data_in),
        .out(data_out)
    );

    initial begin
        clk <= 0;
        WE <= 1;
        data_in <= $urandom(SEED);

        $dumpfile("register_word_tb.vcd");
        $dumpvars(1,register_word_tb);

        for (i = 0; i < 25; i++) begin
            WE <= $urandom(SEED);
            data_in <= $urandom(SEED);
            clk <= i%2;
            #1;
        end
    end

endmodule
