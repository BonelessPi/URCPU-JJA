`include "demultiplexor.v"

module demultiplexor_tb;
    reg [19:0] data;
    reg [3:0] addr;
    wire [19:0] out0;
    wire [19:0] out1;
    wire [19:0] out2;
    wire [19:0] out3;
    wire [19:0] out4;
    wire [19:0] out5;
    wire [19:0] out6;
    wire [19:0] out7;
    wire [19:0] out8;
    wire [19:0] out9;
    wire [19:0] out10;
    wire [19:0] out11;
    wire [19:0] out12;
    wire [19:0] out13;
    wire [19:0] out14;
    wire [19:0] out15;

    integer e;
    integer i;
    integer SEED = 74651;
    integer NUM_ITERS = 10;

    demultiplexor_20_4_16x20 m0 (
        .in (data),
        .addr (addr),
        .out0 (out0),
        .out1 (out1),
        .out2 (out2),
        .out3 (out3),
        .out4 (out4),
        .out5 (out5),
        .out6 (out6),
        .out7 (out7),
        .out8 (out8),
        .out9 (out9),
        .out10 (out10),
        .out11 (out11),
        .out12 (out12),
        .out13 (out13),
        .out14 (out14),
        .out15 (out15)
    );

    initial begin

        $dumpfile("demultiplexor_tb.vcd");
        $dumpvars(1,m0);

        data <= $urandom(SEED);

        for (i = 0; i < 16; i++) begin
            addr <= i;
            #10;
        end

        for (i = 0; i < NUM_ITERS; i++) begin
            data <= $urandom(SEED);
            addr <= $urandom(SEED);
            #10;
        end
    end

endmodule