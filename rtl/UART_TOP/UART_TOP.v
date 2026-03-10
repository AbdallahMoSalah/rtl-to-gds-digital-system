module UART_TOP (
  input TX_CLK,
  input RX_CLK,
  input RST,
  input PAR_TYP,
  input PAR_EN,
  input [5:0] Prescale,
  input [7:0] TX_IN_P,
  input TX_IN_V,
  input RX_IN_S,
  output TX_OUT_S,
  output TX_OUT_V,
  output [7:0] RX_OUT_P,
  output RX_OUT_V,
  output rdy_pulse
);

UART_TX u_uart_tx (
    .clk(TX_CLK),
    .n_RST(RST), 
    .P_DATA(TX_IN_P),
    .Data_Valid(TX_IN_V),
    .PAR_EN(PAR_EN),
    .PAR_TYP(PAR_TYP),
    .TX_OUT(TX_OUT_S),
    .busy(TX_OUT_V), // busy -> TX_OUT_V 
    .rdy_pulse(rdy_pulse)
);

UART_RX u_uart_rx (
    .CLK(RX_CLK),
    .RST_N(RST), 
    .RX_IN(RX_IN_S),
    .PAR_EN(PAR_EN),
    .PAR_TYP(PAR_TYP),
    .Prescale(Prescale),
    .data_valid(RX_OUT_V),
    .P_DATA(RX_OUT_P),
    .Stop_Error(),   // unconnected 
    .Parity_Error()  // unconnected 
);
endmodule