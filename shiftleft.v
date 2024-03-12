module shiftleft(input [19:0] data_in,
                         input [4:0] shift_amount,
                         output reg [19:0] data_out);

always @(*) begin
    data_out = data_in << shift_amount;
end

endmodule