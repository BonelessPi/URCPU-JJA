module multiplexor_16x20_4_20(input wire [19:0] a, input wire [19:0] b, input wire [19:0] c,
    input wire [19:0] d, input wire [19:0] e, input wire [19:0] f, input wire [19:0] g,
    input wire [19:0] h, input wire [19:0] i, input wire [19:0] j, input wire [19:0] k,
    input wire [19:0] l, input wire [19:0] m, input wire [19:0] n, input wire [19:0] o,
    input wire [19:0] p, input wire [3:0] addr, output wire [19:0] out);

    wire [19:0] out0, out1, out2, out3;
    multiplexor_4x20_2_20 m0 (.a(a), .b(b), .c(c), .d(d), .addr(addr[1:0]), .out(out0));
    multiplexor_4x20_2_20 m1 (.a(e), .b(f), .c(g), .d(h), .addr(addr[1:0]), .out(out1));
    multiplexor_4x20_2_20 m2 (.a(i), .b(j), .c(k), .d(l), .addr(addr[1:0]), .out(out2));
    multiplexor_4x20_2_20 m3 (.a(m), .b(n), .c(o), .d(p), .addr(addr[1:0]), .out(out3));
    multiplexor_4x20_2_20 mfinal (.a(out0), .b(out1), .c(out2), .d(out3), .addr(addr[3:2]), .out(out));

endmodule

module multiplexor_4x20_2_20(input wire [19:0] a,input wire [19:0] b,input wire [19:0] c,
    input wire [19:0] d, input wire [1:0] addr, output wire [19:0] out);

    assign out = (addr == 2'b00) ? a : (addr == 2'b01) ? b : (addr == 2'b10) ? c : d;

endmodule
