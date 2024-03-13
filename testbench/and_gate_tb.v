`timescale 1ns / 1ps
`include "and_gate.v"

module and_gate_tb;
    parameter DELAY = 10;
    reg [19:0] a;
    reg [19:0] b;
    wire [19:0] y;

    and_gate dut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        a = 20'b10101010101010101010;
        b = 20'b01010101010101010101;
        #DELAY;
        $display("Test case 1: a = %b, b = %b, y = %b", a, b, y);

        a = 20'b11111111111111111111;
        b = 20'b11111111111111111111;
        #DELAY;
        $display("Test case 2: a = %b, b = %b, y = %b", a, b, y);

        a = 20'b00000000000000000000;
        b = 20'b11111111111111111111;
        #DELAY;
        $display("Test case 3: a = %b, b = %b, y = %b", a, b, y);

        $finish;
    end

endmodule