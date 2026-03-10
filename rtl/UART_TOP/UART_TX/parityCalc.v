module parityCalc (
    input n_RST,clk,
    input [7:0] P_DATA,
    input Data_Valid,
    input idle_flag,
    input PAR_TYP,
    output reg par_bit
);
    reg [7:0] DATA;
    always @(posedge clk or negedge n_RST) begin
        if (!n_RST) begin
            DATA <=8'b0;
        end
        else if (Data_Valid && idle_flag) begin
            DATA <=P_DATA;
        end
        end
    always @(*) begin
        if (PAR_TYP) begin //odd parity
            par_bit=~^DATA;
        end
        else begin //even parity
            par_bit=^DATA;
        end
    end
endmodule
