module subtractor(input wire [19:0] a, input wire [19:0] b, input wire carry_in, output wire [19:0] diff, output wire carry_out);

    assign {carry_out, diff} = a - b - carry_in;

endmodule