`include "adder.v"

module adder_tb;
    parameter DATA_WIDTH = 20;
    reg [DATA_WIDTH-1:0] a;
    reg [DATA_WIDTH-1:0] b;
    reg carry_in;
    wire [DATA_WIDTH-1:0] sum;
    wire carry_out;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    adder uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("adder_tb.vcd");
        $dumpvars(1,uut);

        // Test case 1: Sum of zero
        a = 0;
        b = 0;
        carry_in = 0;
        
        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
            b <= $urandom(SEED);
            carry_in <= $urandom(SEED);
        end
    end

endmodule
