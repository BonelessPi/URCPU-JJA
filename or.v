module or_word(input wire [19:0] a, input wire [19:0] b, output wire [19:0] c, output wire zero);

   assign c = a|b;
   assign zero = !(|c);

endmodule