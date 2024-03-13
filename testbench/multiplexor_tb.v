`include "multiplexor.v"

module multiplexor_tb;
    reg [19:0] data;
    reg [4:0] addr;
    wire out;

    integer e;
    integer i;
    integer SEED = 74651;
    integer NUM_ITERS = 10;

    multiplexor m0 (
        .in (data),
        .addr (addr),
        .out (out)
    );

    initial begin

        $dumpfile("multiplexor_tb.vcd");
        $dumpvars(1,m0);

        for (i = 0; i < 32; i++) begin
            data <= 1<<i;
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