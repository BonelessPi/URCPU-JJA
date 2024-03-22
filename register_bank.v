`include "register_word.v"
`include "multiplexor.v"

module register_bank_16(input wire clk, input wire WE,
    input wire [19:0] in, input wire [3:0] waddr,
    input wire [3:0] raddr0, input wire [3:0] raddr1,
    output wire [19:0] out0, output wire [19:0] out1);

    wire [15:0] WE_arr;
    assign WE_arr = WE<<waddr;

    wire [19:0] word_0_out;
    wire [19:0] word_1_out;
    wire [19:0] word_2_out;
    wire [19:0] word_3_out;
    wire [19:0] word_4_out;
    wire [19:0] word_5_out;
    wire [19:0] word_6_out;
    wire [19:0] word_7_out;
    wire [19:0] word_8_out;
    wire [19:0] word_9_out;
    wire [19:0] word_10_out;
    wire [19:0] word_11_out;
    wire [19:0] word_12_out;
    wire [19:0] word_13_out;
    wire [19:0] word_14_out;
    wire [19:0] word_15_out;

    register_word w0(.clk(clk), .WE(WE_arr[0]), .in(in), .out(word_0_out));
    register_word w1(.clk(clk), .WE(WE_arr[1]), .in(in), .out(word_1_out));
    register_word w2(.clk(clk), .WE(WE_arr[2]), .in(in), .out(word_2_out));
    register_word w3(.clk(clk), .WE(WE_arr[3]), .in(in), .out(word_3_out));
    register_word w4(.clk(clk), .WE(WE_arr[4]), .in(in), .out(word_4_out));
    register_word w5(.clk(clk), .WE(WE_arr[5]), .in(in), .out(word_5_out));
    register_word w6(.clk(clk), .WE(WE_arr[6]), .in(in), .out(word_6_out));
    register_word w7(.clk(clk), .WE(WE_arr[7]), .in(in), .out(word_7_out));
    register_word w8(.clk(clk), .WE(WE_arr[8]), .in(in), .out(word_8_out));
    register_word w9(.clk(clk), .WE(WE_arr[9]), .in(in), .out(word_9_out));
    register_word w10(.clk(clk), .WE(WE_arr[10]), .in(in), .out(word_10_out));
    register_word w11(.clk(clk), .WE(WE_arr[11]), .in(in), .out(word_11_out));
    register_word w12(.clk(clk), .WE(WE_arr[12]), .in(in), .out(word_12_out));
    register_word w13(.clk(clk), .WE(WE_arr[13]), .in(in), .out(word_13_out));
    register_word w14(.clk(clk), .WE(WE_arr[14]), .in(in), .out(word_14_out));
    register_word w15(.clk(clk), .WE(WE_arr[15]), .in(in), .out(word_15_out));

    multiplexor_16x20_4_20 m0(.in0(word_0_out), .in1(word_1_out), .in2(word_2_out), .in3(word_3_out),
        .in4(word_4_out), .in5(word_5_out), .in6(word_6_out), .in7(word_7_out),
        .in8(word_8_out), .in9(word_9_out), .in10(word_10_out), .in11(word_11_out),
        .in12(word_12_out), .in13(word_13_out), .in14(word_14_out), .in15(word_15_out),
        .addr(raddr0), .out(out0));
    multiplexor_16x20_4_20 m1(.in0(word_0_out), .in1(word_1_out), .in2(word_2_out), .in3(word_3_out),
        .in4(word_4_out), .in5(word_5_out), .in6(word_6_out), .in7(word_7_out),
        .in8(word_8_out), .in9(word_9_out), .in10(word_10_out), .in11(word_11_out),
        .in12(word_12_out), .in13(word_13_out), .in14(word_14_out), .in15(word_15_out),
        .addr(raddr1), .out(out1));
                
endmodule