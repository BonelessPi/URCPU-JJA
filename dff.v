module dff(input wire clk, input wire WE, input wire d, output reg q);

    initial begin
        q <= 0;
    end

    always @(posedge clk) begin
        if (WE) begin
            q <= d;
        end
    end
                
endmodule