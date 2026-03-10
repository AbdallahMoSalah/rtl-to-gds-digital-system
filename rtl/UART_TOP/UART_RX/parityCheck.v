module parityCheck (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire        PAR_TYP,
    input  wire [7:0]  P_DATA,
    input  wire        sampled_bit,
    input  wire        par_chk_en,
    output reg         par_err
);

    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            par_err <= 1'b0;
        else if (par_chk_en) begin
            if (PAR_TYP) // odd parity
                par_err <= ~(^P_DATA ^ sampled_bit);
            else        // even parity
                par_err <= (^P_DATA ^ sampled_bit); 
        end   
    end

endmodule
