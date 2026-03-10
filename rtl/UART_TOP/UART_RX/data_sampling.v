module data_sampling (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire        RX_IN,
    input  wire [5:0]  Prescale,
    input  wire [4:0]  edge_cnt,
    input  wire        dat_samp_en,
    output reg         sampled_bit
);

    reg [2:0] sample;
    wire [4:0] mid_edge,mid_edge_plus1,mid_edge_minus1;

    assign mid_edge        = (Prescale >> 1)-1;
    assign mid_edge_plus1  = mid_edge + 1'b1;
    assign mid_edge_minus1 = mid_edge - 1'b1;

    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            sample <= 3'b000;
        else if (dat_samp_en) begin
            if (edge_cnt == mid_edge_minus1)
                sample[0] <= RX_IN;
            else if (edge_cnt == mid_edge)
                sample[1] <= RX_IN;
            else if (edge_cnt == mid_edge_plus1)
                sample[2] <= RX_IN;
        end
    end

    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            sampled_bit <= 1'b0;
        else if (dat_samp_en)
            sampled_bit <= (sample[0] & sample[1]) | (sample[1] & sample[2]) | (sample[0] & sample[2]);
        else 
            sampled_bit <= 1'b0;
    end

endmodule
