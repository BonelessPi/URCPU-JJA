module multiplexor(input wire [19:0] in, input wire [4:0] addr, output wire out);

   wire [31:0] decoder_out;

   decoder d (.addr (addr), .out (decoder_out));
   assign out = |(decoder_out[19:0] & in);

endmodule

module decoder(input wire [4:0] addr, output wire [31:0] out);

   assign out = (1 << addr);

endmodule