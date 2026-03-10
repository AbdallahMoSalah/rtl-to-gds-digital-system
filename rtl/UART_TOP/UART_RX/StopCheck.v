module StopCheck (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire        sampled_bit,
    input  wire        stp_chk_en,
    output reg         stp_err
);
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            stp_err <= 1'b0;
        else if (stp_chk_en)
            stp_err <= ~sampled_bit;
    end
endmodule
