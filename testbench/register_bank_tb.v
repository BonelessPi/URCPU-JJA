`include "register_bank.v"

module register_bank_tb;
    reg clk;
    reg WE;
    reg [19:0] data_in;
    reg [3:0] waddr;
    reg [3:0] raddr0;
    reg [3:0] raddr1;
    wire [19:0] data_out0;
    wire [19:0] data_out1;

    integer i;
    integer SEED = 74651;
    integer NUM_ITERS = 25;

    register_bank_16 reg_b (
        .clk(clk),
        .WE(WE),
        .in(data_in),
        .waddr(waddr),
        .raddr0(raddr0),
        .raddr1(raddr1),
        .out0(data_out0),
        .out1(data_out1)
    );

    initial begin
        $dumpfile("register_bank_tb.vcd");
        $dumpvars(3,reg_b);

        WE <= 1;
        for (i = 0; i < NUM_ITERS; i++) begin
            waddr <= $urandom(SEED);
            raddr0 <= $urandom(SEED);
            raddr1 <= $urandom(SEED);
            data_in <= $urandom(SEED);
            clk <= i%2;
            #1;
        end

        WE <= 0;
        for (i = NUM_ITERS; i < 2*NUM_ITERS; i++) begin
            raddr0 <= $urandom(SEED);
            raddr1 <= $urandom(SEED);
            data_in <= $urandom(SEED);
            clk <= i%2;
            #1;
        end
    end

endmodule