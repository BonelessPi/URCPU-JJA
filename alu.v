`include "adder.v"
`include "and_gate.v"
`include "comparison.v"
`include "decrement.v"
`include "increment.v"
`include "not_gate.v"
`include "or_gate.v"
`include "rotleft.v"
`include "rotright.v"
`include "shiftleft.v"
`include "shiftright.v"
`include "subtractor.v"
`include "swap.v"
`include "xor_gate.v"

`define ALU_NOT 0
`define ALU_AND 1
`define ALU_OR 2
`define ALU_XOR 3
`define ALU_SHFTL 4
`define ALU_SHFTR 5
`define ALU_ROTL 6
`define ALU_ROTR 7
`define ALU_ADD 8
`define ALU_SUB 9
`define ALU_INC 10
`define ALU_DEC 11
`define ALU_CMP 12
`define ALU_SWAP 13

`define ZERO_STATUS_IDX 0;
`define SIGN_STATUS_IDX 1;
`define OVERFLOW_STATUS_IDX 2;
`define UNDERFLOW_STATUS_IDX 3;
`define CARRY_FW_STATUS_IDX 4;
`define CARRY_HWL_STATUS_IDX 5;
`define CARRY_HWH_STATUS_IDX 6;
`define DIV0_STATUS_IDX 7;
`define HALFWORD_STATUS_IDX 8;
`define SAMEREG_STATUS_IDX 9;
`define MEMVIO_STATUS_IDX 10;
`define MEMCORR_STATUS_IDX 11;
`define TRAP_STATUS_IDX 12;

module alu(input wire enable, input wire [4:0] instruction, input wire [19:0] arg0, input wire [19:0] arg1, input wire carry_in,
    output reg [19:0] res0, output reg [19:0] res1, output reg carry_out, output reg overflow_out, output reg underflow_out, output reg zero_out, output reg sign_out);
    
    wire [19:0] adder_res;
    wire adder_carry_out;
    wire [19:0] and_res;
    wire comparison_lt_out;
    wire comparison_eq_out;
    wire comparison_gt_out;
    wire [19:0] decrement_res;
    wire decrement_carry_out;
    wire [19:0] increment_res;
    wire increment_carry_out;
    wire [19:0] not_res;
    wire [19:0] or_res;
    wire [19:0] rotleft_res;
    wire [19:0] rotright_res;
    wire [19:0] shiftleft_res;
    wire [19:0] shiftright_res;
    wire [19:0] subtractor_res;
    wire subtractor_carry_out;
    wire [19:0] swap_res0;
    wire [19:0] swap_res1;
    wire [19:0] xor_res;

    not_gate sm0(arg0, not_res);
    and_gate sm1(arg0, arg1, and_res);
    or_gate sm2(arg0, arg1, or_res);
    xor_gate sm3(arg0, arg1, xor_res);
    shiftleft sm4(arg0, arg1, shiftleft_res);
    shiftright sm5(arg0, arg1, shiftright_res);
    rotleft sm6(arg0, arg1, rotleft_res);
    rotright sm7(arg0, arg1, rotright_res);
    adder sm8(arg0, arg1, carry_in, adder_res, adder_carry_out);
    subtractor sm9(arg0, arg1, carry_in, subtractor_res, subtractor_carry_out);
    increment_module sm10(arg0, increment_res, increment_carry_out);
    decrement_module sm11(arg0, decrement_res, decrement_carry_out);
    comparison sm12(arg0, arg1, comparison_lt_out, comparison_eq_out, comparison_gt_out);
    swap_module sm13(arg0, arg1, swap_res0, swap_res1);

    always @(instruction or arg0 or arg1 or enable) begin
        if (enable) begin
            case (instruction)
                `ALU_NOT: begin
                    res0 <= not_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_AND: begin
                    res0 <= and_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_OR: begin
                    res0 <= or_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_XOR: begin
                    res0 <= xor_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_SHFTL: begin
                    res0 <= shiftleft_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_SHFTR: begin
                    res0 <= shiftright_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_ROTL: begin
                    res0 <= rotleft_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_ROTR: begin
                    res0 <= rotright_res;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                end
                `ALU_ADD: begin
                    res0 <= adder_res;
                    overflow_out <= res0[19]&~arg0[19]&~arg1[19];
                    underflow_out <= ~res0[19]&arg0[19]&arg1[19];
                    zero_out <= !res0;
                    sign_out <= res0[19];
                    carry_out <= adder_carry_out;
                end
                `ALU_SUB: begin
                    res0 <= subtractor_res;
                    overflow_out <= res0[19]&~arg0[19]&arg1[19];
                    underflow_out <= ~res0[19]&arg0[19]&~arg1[19];
                    zero_out <= !res0;
                    sign_out <= res0[19];
                    carry_out <= subtractor_carry_out;
                end
                `ALU_INC: begin
                    res0 <= increment_res;
                    overflow_out <= res0[19]&~arg0[19];
                    underflow_out <= 0;
                    zero_out <= !res0;
                    sign_out <= res0[19];
                    carry_out <= increment_carry_out;
                end
                `ALU_DEC: begin
                    res0 <= decrement_res;
                    overflow_out <= 0;
                    underflow_out <= ~res0[19]&arg0[19];
                    zero_out <= !res0;
                    sign_out <= res0[19];
                    carry_out <= decrement_carry_out;
                end
                `ALU_CMP: begin
                    zero_out <= comparison_eq_out;
                    sign_out <= comparison_lt_out;
                end
                `ALU_SWAP: begin
                    res0 <= swap_res0;
                    res1 <= swap_res1;
                end
                default: ;
            endcase
        end
    end

    initial begin
        zero_out <= 0;
        sign_out <= 0;
        carry_out <= 0;
        underflow_out <= 0;
        overflow_out <= 0;
        res0 <= 0;
        res1 <= 0;
    end

endmodule
