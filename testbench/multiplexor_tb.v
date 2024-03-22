`include "multiplexor.v"

module multiplexor_tb;
    reg [19:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
    reg [3:0] addr;
    wire [19:0] out;

    integer iter;
    integer SEED = 74651;
    integer NUM_ITERS = 10;

    multiplexor_16x20_4_20 mul (
        .in0(a), .in1(b), .in2(c), .in3(d),
        .in4(e), .in5(f), .in6(g), .in7(h),
        .in8(i), .in9(j), .in10(k), .in11(l),
        .in12(m), .in13(n), .in14(o), .in15(p),
        .addr(addr),
        .out(out)
    );

    initial begin
        a <= $urandom(SEED);
        b <= $urandom(SEED);
        c <= $urandom(SEED);
        d <= $urandom(SEED);
        e <= $urandom(SEED);
        f <= $urandom(SEED);
        g <= $urandom(SEED);
        h <= $urandom(SEED);
        i <= $urandom(SEED);
        j <= $urandom(SEED);
        k <= $urandom(SEED);
        l <= $urandom(SEED);
        m <= $urandom(SEED);
        n <= $urandom(SEED);
        o <= $urandom(SEED);
        p <= $urandom(SEED);

        $dumpfile("multiplexor_tb.vcd");
        $dumpvars(1,mul);

        for (iter = 0; iter < NUM_ITERS; iter++) begin
            addr <= $urandom(SEED);
            #10;
        end
    end

endmodule