module swap_module(input wire [19:0] input_a, input wire [19:0] input_b, output wire [19:0] output_a, output wire [19:0] output_b);

    assign output_a = input_b;
    assign output_b = input_a;

endmodule