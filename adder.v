module adder(input wire [19:0] a, input wire [19:0] b, input wire carry_in, output wire [19:0] sum, output wire carry_out);

    assign {carry_out, sum} = a + b + carry_in;

endmodule