module rotleft(input [19:0] data_in, input [19:0] shift_amount, output wire [19:0] data_out);

    wire [19:0] mod_res = shift_amount%20;
    assign data_out = (data_in << mod_res) | (data_in >> (20 - mod_res));

endmodule