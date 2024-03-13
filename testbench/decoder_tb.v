module decoder_tb;
    parameter BIT_WIDTH = 20;
    reg [BIT_WIDTH-1:0] input_bits;
    wire [BIT_WIDTH-1:0] output_bits;

    decoder dut(
        .input_bits(input_bits),
        .output_bits(output_bits)
    );

    initial begin
        $display("Testing 20-bit decoder");
        input_bits = 0;
        #10;
        input_bits = 1;
        #10;
        input_bits = 2;
        #10;
        $finish;
    end

    always @(*) begin
        $display("Input: %d, Output: %b", input_bits, output_bits);
    end

endmodule