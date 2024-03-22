`include "dff.v"

module register_word(input wire clk, input WE, input wire [19:0] in, output wire [19:0] out);

    dff d0(clk, WE, in[0], out[0]);
    dff d1(clk, WE, in[1], out[1]);
    dff d2(clk, WE, in[2], out[2]);
    dff d3(clk, WE, in[3], out[3]);
    dff d4(clk, WE, in[4], out[4]);
    dff d5(clk, WE, in[5], out[5]);
    dff d6(clk, WE, in[6], out[6]);
    dff d7(clk, WE, in[7], out[7]);
    dff d8(clk, WE, in[8], out[8]);
    dff d9(clk, WE, in[9], out[9]);
    dff d10(clk, WE, in[10], out[10]);
    dff d11(clk, WE, in[11], out[11]);
    dff d12(clk, WE, in[12], out[12]);
    dff d13(clk, WE, in[13], out[13]);
    dff d14(clk, WE, in[14], out[14]);
    dff d15(clk, WE, in[15], out[15]);
    dff d16(clk, WE, in[16], out[16]);
    dff d17(clk, WE, in[17], out[17]);
    dff d18(clk, WE, in[18], out[18]);
    dff d19(clk, WE, in[19], out[19]);
                
endmodule