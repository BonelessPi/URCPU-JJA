`include "rotright.v"

module rotright_tb;
    parameter DATA_WIDTH = 20;
    reg [DATA_WIDTH-1:0] a;
    reg [DATA_WIDTH-1:0] b;
    wire [DATA_WIDTH-1:0] res;

    integer i;
    integer NUM_ITERS = 10;
    integer SEED = 49448;

    rotright uut (
        .data_in(a),
        .shift_amount(b),
        .data_out(res)
    );

    initial begin
        $dumpfile("rotright_tb.vcd");
        $dumpvars(1,uut);

        a <= 20'b11101100100010000000;
        
        for (i = 0; i < NUM_ITERS; i++) begin
            b <= $urandom(SEED);
            #10;
        end
    end

endmodule
