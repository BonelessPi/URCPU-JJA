`include "or.v"

module testbench_or;
    reg [19:0] a;
    reg [19:0] b;
    wire [19:0] c;
    wire zero;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    or_word x0 (
        .a (a),
        .b (b),
        .c (c),
        .zero (zero)
    );

    initial begin
        a <= 0;
        b <= 0;

        $dumpfile("testbench_or.vcd");
        $dumpvars(1,x0);
        $monitor("a: 0b%0b - b: 0b%0b - c: 0b%0b - zero: 0b%0b", a, b, c, zero);

        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
            b <= $urandom(SEED);
        end
    end

endmodule