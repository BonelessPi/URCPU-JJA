`include "ecc_mem_word.v"
`include "multiplexor.v"

module mem_bank_64(input wire clk, input wire WE, input wire [19:0] in, input wire [5:0] addr, output wire [19:0] out, output wire err);

    wire [63:0] WE_arr;
    assign WE_arr = WE<<addr;
    wire [63:0] err_word_status;
    assign err = |err_word_status;

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
    wire [19:0] word_16_out;
    wire [19:0] word_17_out;
    wire [19:0] word_18_out;
    wire [19:0] word_19_out;
    wire [19:0] word_20_out;
    wire [19:0] word_21_out;
    wire [19:0] word_22_out;
    wire [19:0] word_23_out;
    wire [19:0] word_24_out;
    wire [19:0] word_25_out;
    wire [19:0] word_26_out;
    wire [19:0] word_27_out;
    wire [19:0] word_28_out;
    wire [19:0] word_29_out;
    wire [19:0] word_30_out;
    wire [19:0] word_31_out;
    wire [19:0] word_32_out;
    wire [19:0] word_33_out;
    wire [19:0] word_34_out;
    wire [19:0] word_35_out;
    wire [19:0] word_36_out;
    wire [19:0] word_37_out;
    wire [19:0] word_38_out;
    wire [19:0] word_39_out;
    wire [19:0] word_40_out;
    wire [19:0] word_41_out;
    wire [19:0] word_42_out;
    wire [19:0] word_43_out;
    wire [19:0] word_44_out;
    wire [19:0] word_45_out;
    wire [19:0] word_46_out;
    wire [19:0] word_47_out;
    wire [19:0] word_48_out;
    wire [19:0] word_49_out;
    wire [19:0] word_50_out;
    wire [19:0] word_51_out;
    wire [19:0] word_52_out;
    wire [19:0] word_53_out;
    wire [19:0] word_54_out;
    wire [19:0] word_55_out;
    wire [19:0] word_56_out;
    wire [19:0] word_57_out;
    wire [19:0] word_58_out;
    wire [19:0] word_59_out;
    wire [19:0] word_60_out;
    wire [19:0] word_61_out;
    wire [19:0] word_62_out;
    wire [19:0] word_63_out;

    ecc_mem_word w0(.clk(clk), .WE(WE_arr[0]), .in(in), .out(word_0_out), .err(err_word_status[0]));
    ecc_mem_word w1(.clk(clk), .WE(WE_arr[1]), .in(in), .out(word_1_out), .err(err_word_status[1]));
    ecc_mem_word w2(.clk(clk), .WE(WE_arr[2]), .in(in), .out(word_2_out), .err(err_word_status[2]));
    ecc_mem_word w3(.clk(clk), .WE(WE_arr[3]), .in(in), .out(word_3_out), .err(err_word_status[3]));
    ecc_mem_word w4(.clk(clk), .WE(WE_arr[4]), .in(in), .out(word_4_out), .err(err_word_status[4]));
    ecc_mem_word w5(.clk(clk), .WE(WE_arr[5]), .in(in), .out(word_5_out), .err(err_word_status[5]));
    ecc_mem_word w6(.clk(clk), .WE(WE_arr[6]), .in(in), .out(word_6_out), .err(err_word_status[6]));
    ecc_mem_word w7(.clk(clk), .WE(WE_arr[7]), .in(in), .out(word_7_out), .err(err_word_status[7]));
    ecc_mem_word w8(.clk(clk), .WE(WE_arr[8]), .in(in), .out(word_8_out), .err(err_word_status[8]));
    ecc_mem_word w9(.clk(clk), .WE(WE_arr[9]), .in(in), .out(word_9_out), .err(err_word_status[9]));
    ecc_mem_word w10(.clk(clk), .WE(WE_arr[10]), .in(in), .out(word_10_out), .err(err_word_status[10]));
    ecc_mem_word w11(.clk(clk), .WE(WE_arr[11]), .in(in), .out(word_11_out), .err(err_word_status[11]));
    ecc_mem_word w12(.clk(clk), .WE(WE_arr[12]), .in(in), .out(word_12_out), .err(err_word_status[12]));
    ecc_mem_word w13(.clk(clk), .WE(WE_arr[13]), .in(in), .out(word_13_out), .err(err_word_status[13]));
    ecc_mem_word w14(.clk(clk), .WE(WE_arr[14]), .in(in), .out(word_14_out), .err(err_word_status[14]));
    ecc_mem_word w15(.clk(clk), .WE(WE_arr[15]), .in(in), .out(word_15_out), .err(err_word_status[15]));
    ecc_mem_word w16(.clk(clk), .WE(WE_arr[16]), .in(in), .out(word_16_out), .err(err_word_status[16]));
    ecc_mem_word w17(.clk(clk), .WE(WE_arr[17]), .in(in), .out(word_17_out), .err(err_word_status[17]));
    ecc_mem_word w18(.clk(clk), .WE(WE_arr[18]), .in(in), .out(word_18_out), .err(err_word_status[18]));
    ecc_mem_word w19(.clk(clk), .WE(WE_arr[19]), .in(in), .out(word_19_out), .err(err_word_status[19]));
    ecc_mem_word w20(.clk(clk), .WE(WE_arr[20]), .in(in), .out(word_20_out), .err(err_word_status[20]));
    ecc_mem_word w21(.clk(clk), .WE(WE_arr[21]), .in(in), .out(word_21_out), .err(err_word_status[21]));
    ecc_mem_word w22(.clk(clk), .WE(WE_arr[22]), .in(in), .out(word_22_out), .err(err_word_status[22]));
    ecc_mem_word w23(.clk(clk), .WE(WE_arr[23]), .in(in), .out(word_23_out), .err(err_word_status[23]));
    ecc_mem_word w24(.clk(clk), .WE(WE_arr[24]), .in(in), .out(word_24_out), .err(err_word_status[24]));
    ecc_mem_word w25(.clk(clk), .WE(WE_arr[25]), .in(in), .out(word_25_out), .err(err_word_status[25]));
    ecc_mem_word w26(.clk(clk), .WE(WE_arr[26]), .in(in), .out(word_26_out), .err(err_word_status[26]));
    ecc_mem_word w27(.clk(clk), .WE(WE_arr[27]), .in(in), .out(word_27_out), .err(err_word_status[27]));
    ecc_mem_word w28(.clk(clk), .WE(WE_arr[28]), .in(in), .out(word_28_out), .err(err_word_status[28]));
    ecc_mem_word w29(.clk(clk), .WE(WE_arr[29]), .in(in), .out(word_29_out), .err(err_word_status[29]));
    ecc_mem_word w30(.clk(clk), .WE(WE_arr[30]), .in(in), .out(word_30_out), .err(err_word_status[30]));
    ecc_mem_word w31(.clk(clk), .WE(WE_arr[31]), .in(in), .out(word_31_out), .err(err_word_status[31]));
    ecc_mem_word w32(.clk(clk), .WE(WE_arr[32]), .in(in), .out(word_32_out), .err(err_word_status[32]));
    ecc_mem_word w33(.clk(clk), .WE(WE_arr[33]), .in(in), .out(word_33_out), .err(err_word_status[33]));
    ecc_mem_word w34(.clk(clk), .WE(WE_arr[34]), .in(in), .out(word_34_out), .err(err_word_status[34]));
    ecc_mem_word w35(.clk(clk), .WE(WE_arr[35]), .in(in), .out(word_35_out), .err(err_word_status[35]));
    ecc_mem_word w36(.clk(clk), .WE(WE_arr[36]), .in(in), .out(word_36_out), .err(err_word_status[36]));
    ecc_mem_word w37(.clk(clk), .WE(WE_arr[37]), .in(in), .out(word_37_out), .err(err_word_status[37]));
    ecc_mem_word w38(.clk(clk), .WE(WE_arr[38]), .in(in), .out(word_38_out), .err(err_word_status[38]));
    ecc_mem_word w39(.clk(clk), .WE(WE_arr[39]), .in(in), .out(word_39_out), .err(err_word_status[39]));
    ecc_mem_word w40(.clk(clk), .WE(WE_arr[40]), .in(in), .out(word_40_out), .err(err_word_status[40]));
    ecc_mem_word w41(.clk(clk), .WE(WE_arr[41]), .in(in), .out(word_41_out), .err(err_word_status[41]));
    ecc_mem_word w42(.clk(clk), .WE(WE_arr[42]), .in(in), .out(word_42_out), .err(err_word_status[42]));
    ecc_mem_word w43(.clk(clk), .WE(WE_arr[43]), .in(in), .out(word_43_out), .err(err_word_status[43]));
    ecc_mem_word w44(.clk(clk), .WE(WE_arr[44]), .in(in), .out(word_44_out), .err(err_word_status[44]));
    ecc_mem_word w45(.clk(clk), .WE(WE_arr[45]), .in(in), .out(word_45_out), .err(err_word_status[45]));
    ecc_mem_word w46(.clk(clk), .WE(WE_arr[46]), .in(in), .out(word_46_out), .err(err_word_status[46]));
    ecc_mem_word w47(.clk(clk), .WE(WE_arr[47]), .in(in), .out(word_47_out), .err(err_word_status[47]));
    ecc_mem_word w48(.clk(clk), .WE(WE_arr[48]), .in(in), .out(word_48_out), .err(err_word_status[48]));
    ecc_mem_word w49(.clk(clk), .WE(WE_arr[49]), .in(in), .out(word_49_out), .err(err_word_status[49]));
    ecc_mem_word w50(.clk(clk), .WE(WE_arr[50]), .in(in), .out(word_50_out), .err(err_word_status[50]));
    ecc_mem_word w51(.clk(clk), .WE(WE_arr[51]), .in(in), .out(word_51_out), .err(err_word_status[51]));
    ecc_mem_word w52(.clk(clk), .WE(WE_arr[52]), .in(in), .out(word_52_out), .err(err_word_status[52]));
    ecc_mem_word w53(.clk(clk), .WE(WE_arr[53]), .in(in), .out(word_53_out), .err(err_word_status[53]));
    ecc_mem_word w54(.clk(clk), .WE(WE_arr[54]), .in(in), .out(word_54_out), .err(err_word_status[54]));
    ecc_mem_word w55(.clk(clk), .WE(WE_arr[55]), .in(in), .out(word_55_out), .err(err_word_status[55]));
    ecc_mem_word w56(.clk(clk), .WE(WE_arr[56]), .in(in), .out(word_56_out), .err(err_word_status[56]));
    ecc_mem_word w57(.clk(clk), .WE(WE_arr[57]), .in(in), .out(word_57_out), .err(err_word_status[57]));
    ecc_mem_word w58(.clk(clk), .WE(WE_arr[58]), .in(in), .out(word_58_out), .err(err_word_status[58]));
    ecc_mem_word w59(.clk(clk), .WE(WE_arr[59]), .in(in), .out(word_59_out), .err(err_word_status[59]));
    ecc_mem_word w60(.clk(clk), .WE(WE_arr[60]), .in(in), .out(word_60_out), .err(err_word_status[60]));
    ecc_mem_word w61(.clk(clk), .WE(WE_arr[61]), .in(in), .out(word_61_out), .err(err_word_status[61]));
    ecc_mem_word w62(.clk(clk), .WE(WE_arr[62]), .in(in), .out(word_62_out), .err(err_word_status[62]));
    ecc_mem_word w63(.clk(clk), .WE(WE_arr[63]), .in(in), .out(word_63_out), .err(err_word_status[63]));

    wire [19:0] t0;
    wire [19:0] t1;
    wire [19:0] t2;
    wire [19:0] t3;

    multiplexor_16x20_4_20 m0(.in0(word_0_out), .in1(word_1_out), .in2(word_2_out), .in3(word_3_out),
        .in4(word_4_out), .in5(word_5_out), .in6(word_6_out), .in7(word_7_out),
        .in8(word_8_out), .in9(word_9_out), .in10(word_10_out), .in11(word_11_out),
        .in12(word_12_out), .in13(word_13_out), .in14(word_14_out), .in15(word_15_out),
        .addr(addr[3:0]), .out(t0));
    multiplexor_16x20_4_20 m1(.in0(word_16_out), .in1(word_17_out), .in2(word_18_out), .in3(word_19_out),
        .in4(word_20_out), .in5(word_21_out), .in6(word_22_out), .in7(word_23_out),
        .in8(word_24_out), .in9(word_25_out), .in10(word_26_out), .in11(word_27_out),
        .in12(word_28_out), .in13(word_29_out), .in14(word_30_out), .in15(word_31_out),
        .addr(addr[3:0]), .out(t1));
    multiplexor_16x20_4_20 m2(.in0(word_32_out), .in1(word_33_out), .in2(word_34_out), .in3(word_35_out),
        .in4(word_36_out), .in5(word_37_out), .in6(word_38_out), .in7(word_39_out),
        .in8(word_40_out), .in9(word_41_out), .in10(word_42_out), .in11(word_43_out),
        .in12(word_44_out), .in13(word_45_out), .in14(word_46_out), .in15(word_47_out),
        .addr(addr[3:0]), .out(t2));
    multiplexor_16x20_4_20 m3(.in0(word_48_out), .in1(word_49_out), .in2(word_50_out), .in3(word_51_out),
        .in4(word_52_out), .in5(word_53_out), .in6(word_54_out), .in7(word_55_out),
        .in8(word_56_out), .in9(word_57_out), .in10(word_58_out), .in11(word_59_out),
        .in12(word_60_out), .in13(word_61_out), .in14(word_62_out), .in15(word_63_out),
        .addr(addr[3:0]), .out(t3));
    multiplexor_4x20_2_20 dm_main(.in0(t0), .in1(t1), .in2(t2), .in3(t3), .addr(addr[5:4]), .out(out));
                
endmodule