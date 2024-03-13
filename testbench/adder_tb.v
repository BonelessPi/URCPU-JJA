`timescale 1ns / 1ps

module adder_tb;
    parameter DATA_WIDTH = 20;
    reg [DATA_WIDTH-1:0] a;
    reg [DATA_WIDTH-1:0] b;
    reg carry_in;
    wire [DATA_WIDTH-1:0] sum;
    wire carry_out;

    adder uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin
        // Test case 1: Addition without carry
        a = 20'b10101010101010101010;
        b = 20'b01010101010101010101;
        carry_in = 1'b0;
        #10;
        $display("Test case 1 - Sum: %b, Carry Out: %b", sum, carry_out);

        // Test case 2: Addition with carry
        a = 20'b11111111111111111111;
        b = 20'b00000000000000000001;
        carry_in = 1'b1;
        #10;
        $display("Test case 2 - Sum: %b, Carry Out: %b", sum, carry_out);
    end

endmodule
