`timescale 1ns / 1ps
`include "shiftleft.v"

module shiftleft_tb;
    parameter DATA_WIDTH = 20;
    reg [DATA_WIDTH-1:0] data_in;
    reg [DATA_WIDTH-1:0] shift_amount;
    wire [DATA_WIDTH-1:0] data_out;

    shiftleft uut (
        .data_in(data_in),
        .shift_amount(shift_amount),
        .data_out(data_out)
    );

    initial begin
        $dumpfile("shiftleft_tb.vcd");
        $dumpvars(1,uut);

        // Test case 1: Shift left by 3
        data_in = 20'b10101010101010101010;
        shift_amount = 20'b00011;
        #10;
        $display("Test case 1 - Data Out: %b", data_out);

        // Test case 2: Shift left by 7
        data_in = 20'b10001010100010101010;
        shift_amount = 20'b00111;
        #10;
        $display("Test case 2 - Data Out: %b", data_out);
    end

endmodule