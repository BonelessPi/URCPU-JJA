module adder(input [19:0] a,
                   input [19:0] b,
                   input carry_in,
                   output reg [19:0] sum,
                   output reg carry_out);

reg [19:0] sum_temp;

always @(*) begin
    {carry_out, sum_temp} = a + b + carry_in;
    sum = sum_temp;
end

endmodule