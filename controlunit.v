module ControlUnit(
    input wire clk,
    input wire reset,
    input wire [5:0] opcode,
    output reg fetch,
    output reg decode,
    output reg execute,
    output reg mem_access,
    output reg write_back,
);

// Define states for finite state machine
parameter IDLE = 3'b000;
parameter FETCH = 3'b001;
parameter DECODE = 3'b010;
parameter EXECUTE = 3'b011;
parameter MEMORY_ACCESS = 3'b100;
parameter WRITE_BACK = 3'b101;

// Internal state register
reg [2:0] state;

// State transition and output logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        fetch <= 0;
        decode <= 0;
        execute <= 0;
        mem_access <= 0;
        write_back <= 0;
    end else begin
        case (state)
            IDLE: begin
                // Transition to fetch stage
                fetch <= 1;
                decode <= 0;
                execute <= 0;
                mem_access <= 0;
                write_back <= 0;
                state <= FETCH;
            end
            FETCH: begin
                // Transition to decode stage
                fetch <= 0;
                decode <= 1;
                execute <= 0;
                mem_access <= 0;
                write_back <= 0;
                state <= DECODE;
            end
            DECODE: begin
                // Determine next state based on opcode
                case (opcode)
                    // Cases for different opcodes to determine execute, memory access, and write-back stages
                endcase
            end
            // Similar logic for other stages
        endcase
    end
end

endmodule
