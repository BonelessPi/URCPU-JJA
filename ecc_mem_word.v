`include "ecc_mem_bit.v"

module ecc_mem_word(input wire clk, input wire WE, input wire [19:0] in, output wire [19:0] out, output wire err);

    wire [19:0] bit_err;

    ecc_mem_bit b0 (clk, WE, in[0], out[0], bit_err[0]);
    ecc_mem_bit b1 (clk, WE, in[1], out[1], bit_err[1]);
    ecc_mem_bit b2 (clk, WE, in[2], out[2], bit_err[2]);
    ecc_mem_bit b3 (clk, WE, in[3], out[3], bit_err[3]);
    ecc_mem_bit b4 (clk, WE, in[4], out[4], bit_err[4]);
    ecc_mem_bit b5 (clk, WE, in[5], out[5], bit_err[5]);
    ecc_mem_bit b6 (clk, WE, in[6], out[6], bit_err[6]);
    ecc_mem_bit b7 (clk, WE, in[7], out[7], bit_err[7]);
    ecc_mem_bit b8 (clk, WE, in[8], out[8], bit_err[8]);
    ecc_mem_bit b9 (clk, WE, in[9], out[9], bit_err[9]);
    ecc_mem_bit b10 (clk, WE, in[10], out[10], bit_err[10]);
    ecc_mem_bit b11 (clk, WE, in[11], out[11], bit_err[11]);
    ecc_mem_bit b12 (clk, WE, in[12], out[12], bit_err[12]);
    ecc_mem_bit b13 (clk, WE, in[13], out[13], bit_err[13]);
    ecc_mem_bit b14 (clk, WE, in[14], out[14], bit_err[14]);
    ecc_mem_bit b15 (clk, WE, in[15], out[15], bit_err[15]);
    ecc_mem_bit b16 (clk, WE, in[16], out[16], bit_err[16]);
    ecc_mem_bit b17 (clk, WE, in[17], out[17], bit_err[17]);
    ecc_mem_bit b18 (clk, WE, in[18], out[18], bit_err[18]);
    ecc_mem_bit b19 (clk, WE, in[19], out[19], bit_err[19]);

    assign err = |bit_err;
                
endmodule