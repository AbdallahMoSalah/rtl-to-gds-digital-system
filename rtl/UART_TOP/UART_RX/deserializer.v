module deserializer (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire [5:0]  Prescale,
    input  wire [4:0]  edge_cnt,
    input  wire        deser_en,
    input  wire        sampled_bit,
    output reg  [7:0]  P_DATA
);
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N)
            P_DATA <= 8'b0000_0000;
        else if (deser_en && (edge_cnt == (Prescale - 1)))
            P_DATA <= {sampled_bit, P_DATA[7:1]};
    end
endmodule