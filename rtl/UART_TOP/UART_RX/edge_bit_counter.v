module edge_bit_counter (
    input  wire        CLK,
    input  wire        RST_N,
    input  wire        cnt_en,
    input  wire [5:0]  Prescale,
    output reg  [3:0]  bit_cnt,
    output reg  [4:0]  edge_cnt
);

    wire last_edge;
    assign last_edge = (edge_cnt == (Prescale - 1));

    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            bit_cnt  <= 4'b0000;
            edge_cnt <= 5'b00000;
        end else if (cnt_en) begin
            if (last_edge) begin
                edge_cnt <= 5'b00000;
                bit_cnt  <= bit_cnt + 1'b1;
            end else begin
                edge_cnt <= edge_cnt + 1'b1;
            end
        end else begin
            bit_cnt  <= 4'b0000;
            edge_cnt <= 5'b00000;
        end
    end

endmodule
