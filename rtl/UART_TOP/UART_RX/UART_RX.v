
module UART_RX (
    input        CLK,
    input        RST_N,
    input        RX_IN,
    input        PAR_EN,
    input        PAR_TYP,
    input  [5:0] Prescale,
    output       data_valid,
    output [7:0] P_DATA,
    output       Stop_Error,
    output       Parity_Error

);

    // Internal signals
    wire [3:0] bit_cnt;
    wire [4:0] edge_cnt;
    wire       strt_glitch;
    wire       dat_samp_en;
    wire       cnt_en;
    wire       stp_chk_en;
    wire       strt_chk_en;
    wire       par_chk_en;
    wire       deser_en;
    wire       sampled_bit;

    // FSM
    FSM_RX u_fsm_rx (
        .CLK        (CLK),
        .RST_N      (RST_N),
        .RX_IN      (RX_IN),
        .PAR_EN     (PAR_EN),
        .bit_cnt    (bit_cnt),
        .Prescale   (Prescale),
        .edge_cnt   (edge_cnt),
        .stp_err    (Stop_Error),
        .strt_glitch(strt_glitch),
        .par_err    (Parity_Error),
        .dat_samp_en(dat_samp_en),
        .cnt_en     (cnt_en),
        .data_valid (data_valid),
        .stp_chk_en (stp_chk_en),
        .strt_chk_en(strt_chk_en),
        .par_chk_en (par_chk_en),
        .deser_en   (deser_en)
    );

    // Edge and bit counter
    edge_bit_counter u_edge_bit_counter (
        .CLK      (CLK),
        .RST_N    (RST_N),
        .cnt_en   (cnt_en),
        .Prescale (Prescale),
        .bit_cnt  (bit_cnt),
        .edge_cnt (edge_cnt)
    );

    // Data sampling
    data_sampling u_data_sampling (
        .CLK         (CLK),
        .RST_N       (RST_N),
        .RX_IN       (RX_IN),
        .Prescale    (Prescale),
        .edge_cnt    (edge_cnt),
        .dat_samp_en (dat_samp_en),
        .sampled_bit (sampled_bit)
    );

    // Deserializer
    deserializer u_deserializer (
        .CLK        (CLK),
        .RST_N      (RST_N),
        .Prescale   (Prescale),
        .edge_cnt   (edge_cnt),
        .deser_en   (deser_en),
        .sampled_bit(sampled_bit),
        .P_DATA     (P_DATA)
    );

    // Parity check
    parityCheck u_parityCheck (
        .CLK         (CLK),
        .RST_N       (RST_N),
        .PAR_TYP     (PAR_TYP),
        .P_DATA      (P_DATA),
        .sampled_bit (sampled_bit),
        .par_chk_en  (par_chk_en),
        .par_err     (Parity_Error)
    );

    // Start bit check
    strtCheck u_strtCheck (
        .CLK          (CLK),
        .RST_N        (RST_N),
        .sampled_bit  (sampled_bit),
        .strt_chk_en  (strt_chk_en),
        .strt_glitch  (strt_glitch)
    );

    // Stop bit check
    StopCheck u_StopCheck (
        .CLK         (CLK),
        .RST_N       (RST_N),
        .sampled_bit (sampled_bit),
        .stp_chk_en  (stp_chk_en),
        .stp_err     (Stop_Error)
    );  
endmodule