`include "dff.v"

module ecc_mem_bit(input wire clk, input wire inp, output wire val, output wire err);

    wire a;
    wire b;
    wire c;

    dff m0(clk, inp, a);
    dff m1(clk, inp, b);
    dff m2(clk, inp, c);

    assign val = a&(b|c) | b&c;
    assign err = ~(a&b&c) & (a|b|c);
                
endmodule