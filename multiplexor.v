module multiplexor_16x20_4_20(input wire [19:0] in0, input wire [19:0] in1, input wire [19:0] in2,
    input wire [19:0] in3, input wire [19:0] in4, input wire [19:0] in5, input wire [19:0] in6,
    input wire [19:0] in7, input wire [19:0] in8, input wire [19:0] in9, input wire [19:0] in10,
    input wire [19:0] in11, input wire [19:0] in12, input wire [19:0] in13, input wire [19:0] in14,
    input wire [19:0] in15, input wire [3:0] addr, output wire [19:0] out);

    wire [19:0] out0, out1, out2, out3;
    multiplexor_4x20_2_20 m0 (.in0(in0), .in1(in1), .in2(in2), .in3(in3), .addr(addr[1:0]), .out(out0));
    multiplexor_4x20_2_20 m1 (.in0(in4), .in1(in5), .in2(in6), .in3(in7), .addr(addr[1:0]), .out(out1));
    multiplexor_4x20_2_20 m2 (.in0(in8), .in1(in9), .in2(in10), .in3(in11), .addr(addr[1:0]), .out(out2));
    multiplexor_4x20_2_20 m3 (.in0(in12), .in1(in13), .in2(in14), .in3(in15), .addr(addr[1:0]), .out(out3));
    multiplexor_4x20_2_20 mfinal (.in0(out0), .in1(out1), .in2(out2), .in3(out3), .addr(addr[3:2]), .out(out));

endmodule

module multiplexor_4x20_2_20(input wire [19:0] in0, input wire [19:0] in1, input wire [19:0] in2,
    input wire [19:0] in3, input wire [1:0] addr, output wire [19:0] out);

    assign out = (addr == 2'b00) ? in0 : (addr == 2'b01) ? in1 : (addr == 2'b10) ? in2 : in3;

endmodule
