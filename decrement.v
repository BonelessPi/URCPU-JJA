module decrement_module(input wire [19:0] in, output wire [19:0] out, output wire carry_out);

    assign {carry_out, out} = in-1;

endmodule