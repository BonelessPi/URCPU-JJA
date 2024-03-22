module demultiplexor_20_4_16x20(input wire [19:0] in, input wire [3:0] addr, output wire [19:0] out0,
    output wire [19:0] out1, output wire [19:0] out2, output wire [19:0] out3, output wire [19:0] out4,
    output wire [19:0] out5, output wire [19:0] out6, output wire [19:0] out7, output wire [19:0] out8,
    output wire [19:0] out9, output wire [19:0] out10, output wire [19:0] out11, output wire [19:0] out12,
    output wire [19:0] out13, output wire [19:0] out14, output wire [19:0] out15);

    demultiplexor_20_3_8x20 d0 (.in(addr[3] ? 1'b0 : in), .addr(addr[2:0]), .out0(out0), .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7));
    demultiplexor_20_3_8x20 d1 (.in(addr[3] ? in : 1'b0), .addr(addr[2:0]), .out0(out8), .out1(out9), .out2(out10), .out3(out11), .out4(out12), .out5(out13), .out6(out14), .out7(out15));
    
endmodule

module demultiplexor_20_3_8x20(input wire [19:0] in, input wire [2:0] addr, output wire [19:0] out0,
    output wire [19:0] out1, output wire [19:0] out2, output wire [19:0] out3, output wire [19:0] out4,
    output wire [19:0] out5, output wire [19:0] out6, output wire [19:0] out7);

    demultiplexor_20_2_4x20 d0 (.in(addr[2] ? 1'b0 : in), .addr(addr[1:0]), .out0(out0), .out1(out1), .out2(out2), .out3(out3));
    demultiplexor_20_2_4x20 d1 (.in(addr[2] ? in : 1'b0), .addr(addr[1:0]), .out0(out4), .out1(out5), .out2(out6), .out3(out7));
    
endmodule

module demultiplexor_20_2_4x20(input wire [19:0] in, input wire [1:0] addr, output wire [19:0] out0,
    output wire [19:0] out1, output wire [19:0] out2, output wire [19:0] out3);

    demultiplexor_20_1_2x20 d0 (.in(addr[1] ? 1'b0 : in), .addr(addr[0]), .out0(out0), .out1(out1));
    demultiplexor_20_1_2x20 d1 (.in(addr[1] ? in : 1'b0), .addr(addr[0]), .out0(out2), .out1(out3));
    
endmodule

module demultiplexor_20_1_2x20(input wire [19:0] in, input wire addr, output wire [19:0] out0, output wire [19:0] out1);

    assign out0 = addr ? 1'b0 : in;
    assign out1 = addr ? in : 1'b0;
    
endmodule