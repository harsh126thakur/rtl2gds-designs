module alu8 (
    input  logic       clk,
    input  logic       rst_n,
    input  logic [1:0] op,
    input  logic [7:0] a, b,
    output logic [7:0] y
);
    logic [7:0] r;
    always_comb begin
        unique case (op)
            2'd0: r = a + b;
            2'd1: r = a - b;
            2'd2: r = a & b;
            default: r = a ^ b;
        endcase
    end
    always_ff @(posedge clk or negedge rst_n)
        if (!rst_n) y <= '0;
        else        y <= r;
endmodule
