module and_gate(
    input [19:0] a,
    input [19:0] b,
    output reg [19:0] y
);

always @* begin
    y = 20'b1;
    y[19:0] = a[19:0] & b[19:0];
end

endmodule