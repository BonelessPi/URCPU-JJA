`include "subtractor.v"

module subtractor_tb;
    parameter DATA_WIDTH = 20;
    reg [DATA_WIDTH-1:0] a;
    reg [DATA_WIDTH-1:0] b;
    reg carry_in;
    wire [DATA_WIDTH-1:0] diff;
    wire carry_out;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    subtractor uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .diff(diff),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("subtractor_tb.vcd");
        $dumpvars(1,uut);
        
        // Test case 1: Addition without carry
        a = 20'b00000000000000000101;
        b = 20'b00000000000000000101;
        carry_in = 1'b0;
        
        for (i = 0; i < NUM_ITERS; i++) begin
            #10;
            a <= $urandom(SEED);
            b <= $urandom(SEED);
            carry_in <= $urandom(SEED);
        end
    end

endmodule
