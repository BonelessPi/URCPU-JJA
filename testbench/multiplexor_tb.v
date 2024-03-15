`include "multiplexor.v"

module multiplexor_tb;
    reg [19:0] a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
    reg [3:0] addr;
    wire [19:0] out;

    integer iter;
    integer SEED = 74651;
    integer NUM_ITERS = 10;

    multiplexor_16x20_4_20 mul (
        .a(a), .b(b), .c(c), .d(d),
        .e(e), .f(f), .g(g), .h(h),
        .i(i), .j(j), .k(k), .l(l),
        .m(m), .n(n), .o(o), .p(p),
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