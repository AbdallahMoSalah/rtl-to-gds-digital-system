module strtCheck (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire        sampled_bit,
    input  wire        strt_chk_en,
    output reg         strt_glitch
);
always @(posedge CLK or negedge RST_N) begin
    if (!RST_N)
        strt_glitch <= 1'b0;
    else if (strt_chk_en)
        strt_glitch <= sampled_bit;
    else
        strt_glitch <= 1'b0;
end
  
endmodule
