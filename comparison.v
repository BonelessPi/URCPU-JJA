module comparison(input wire [19:0] a, input wire [19:0] b, output wire lt, output wire eq, output wire gt);

    assign lt = a<b;
    assign eq = a==b;
    assign gt = a>b;

endmodule