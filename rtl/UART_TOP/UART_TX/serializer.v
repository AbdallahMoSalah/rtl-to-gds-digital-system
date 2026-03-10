module serializer (
    input clk,n_RST,
    input [7:0] P_DATA,
    input ser_en,
    input idle_flag,
    input Data_Valid,
    output ser_done,
    output ser_data,
    output rdy_pulse
);

reg [7:0] DATA;
reg [2:0]counter;
assign rdy_pulse =&counter;
assign ser_data=ser_en?DATA[counter]:1'b1;
assign ser_done=(counter==7)?1'b1:1'b0;
    always @(posedge clk or negedge n_RST) begin
        if (!n_RST) begin
            DATA <=8'b0;
            counter<=0;
        end
        else begin
        if (Data_Valid && idle_flag) begin
            DATA <=P_DATA;
        end
        if (ser_en) begin
            counter<=counter+1;
        end
        end
    end


endmodule
