module dff_sr(input clk, input reset, input d, output reg q);

    always @ (posedge clk)begin
        if(reset)
            q <= 0;
        else
            q <= d;
    end

    initial begin
        q <= 0;
    end
                
endmodule