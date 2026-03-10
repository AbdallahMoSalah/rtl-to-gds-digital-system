module UART_TX (
    input clk,n_RST,
    input [7:0] P_DATA,
    input Data_Valid,
    input PAR_EN,
    input PAR_TYP,
    output TX_OUT, 
    output busy,
    output rdy_pulse
);

wire ser_data,ser_done,par_bit,ser_en,idle_flag;
wire [1:0] mux_sel;
FSMT U0 (
.clk(clk),
.n_RST(n_RST),
.PAR_EN(PAR_EN),
.Data_Valid(Data_Valid),
.ser_done(ser_done),
.ser_en(ser_en),
.busy(busy),
.mux_sel(mux_sel),
.idle_flag(idle_flag)
);

UMUX U1 (
    .mux_sel(mux_sel),
    .ser_data(ser_data),
    .par_bit(par_bit),
    .TX_OUT(TX_OUT)
);

serializer U2 (
    .clk(clk),
    .n_RST(n_RST),
    .P_DATA(P_DATA),
    .ser_en(ser_en),
    .Data_Valid(Data_Valid),
    .ser_done(ser_done),
    .ser_data(ser_data),
    .idle_flag(idle_flag),
    .rdy_pulse(rdy_pulse)
);

parityCalc U3 (
    .clk(clk),
    .n_RST(n_RST),
    .P_DATA(P_DATA),
    .Data_Valid(Data_Valid),
    .PAR_TYP(PAR_TYP),
    .par_bit(par_bit),
    .idle_flag(idle_flag)
);
endmodule
