module decoder_20x1048576(input [19:0] input_bits, output [1048575:0] output_bits);

    assign output_bits = (1 << input_bits);

endmodule

module decoder_5x32(input wire [4:0] addr, output wire [31:0] out);

   assign out = (1 << addr);

endmodule

module decoder_4x16(input wire [3:0] addr, output wire [15:0] out);

   assign out = (1 << addr);

endmodule
