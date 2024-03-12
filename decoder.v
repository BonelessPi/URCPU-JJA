module decoder(
    input [19:0] input_bits,
    output [1048575:0] output_bits
);

assign output_bits = (1 << input_bits);

endmodule