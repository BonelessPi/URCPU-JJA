module shiftright(input wire [19:0] data_in, input wire [19:0] shift_amount, output wire [19:0] data_out);

    assign data_out = data_in >>> shift_amount;

endmodule