`include "dff.v"

module ecc_mem_bit(input wire clk, input wire WE, input wire in, output wire out, output wire err);

    wire a;
    wire b;
    wire c;

    dff m0(clk, WE, in, a);
    dff m1(clk, WE, in, b);
    dff m2(clk, WE, in, c);

    assign out = a&(b|c) | b&c;
    assign err = ~(a&b&c) & (a|b|c);
                
endmodule