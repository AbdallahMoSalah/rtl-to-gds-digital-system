module SYS_TOP (
    input REF_CLK,
    input UART_CLK,
    input RST,
    input RX_IN,

    output TX_OUT
);
    // Sync_reset signal
    wire SYNC_RST_1,SYNC_RST_2;
    
    //UART CLK Signal
    wire RX_CLK,TX_CLK,clk_div_en,Parity_Enable,Parity_Type;
    wire [5:0] prescale;
    wire [7:0] DIV_RATIO,RX_DR;

    // REG_file signal
    wire WrEn,RdEn,Rd_D_Vld;
    wire [3:0] Addr;
    wire [7:0] Wr_D,Rd_D;

    // ALU Signal
    wire EN,OUT_Valid,ALU_CLK,Gate_EN;
    wire [7:0] Op_A,Op_B;
    wire [3:0] FUN;
    wire [15:0] ALU_OUT;

    // UART-CTRL
    wire RX_valid,WR_INC,FIFO_FULL,
    RX_valid_ASYNC,RD_INC,F_EMPTY;
    wire [7:0] WR_DATA,RX_DATA,RX_DATA_ASYNC,RD_DATA;

    
    SYS_CTRL system_ctrl(
        .CLK(REF_CLK),
        .RST(SYNC_RST_1),
        .ALU_OUT(ALU_OUT),
        .OUT_Valid(OUT_Valid),
        .RdData(Rd_D),
        .RdData_Valid(Rd_D_Vld),
        .RX_P_DATA(RX_DATA),
        .RX_D_VLD(RX_valid),
        .ALU_FUN(FUN),
        .EN(EN),
        .CLK_EN(Gate_EN),
        .Address(Addr),
        .WrEn(WrEn),
        .RdEn(RdEn),
        .WrData(Wr_D),
        .TX_P_DATA(WR_DATA),
        .TX_D_VLD(WR_INC),
        .clk_div_en(clk_div_en)
    );

    ALU alu_unit (
        .A(Op_A),
        .B(Op_B),
        .EN(EN),
        .ALU_FUN(FUN),
        .CLK(ALU_CLK),
        .RST(SYNC_RST_1),
        .ALU_OUT(ALU_OUT),
        .OUT_VALID(OUT_Valid)
    );

    RegFile regfile_u (
        .CLK(REF_CLK),
        .RST(SYNC_RST_1),
        .WrEn(WrEn),
        .RdEn(RdEn),
        .Address(Addr),
        .WrData(Wr_D),
        .RdData(Rd_D),
        .RdData_VLD(Rd_D_Vld),
        .REG0(Op_A),
        .REG1(Op_B),
        .REG2({prescale,Parity_Type,Parity_Enable}),
        .REG3(DIV_RATIO)
    ); 

    ASYC_FIFO fifo_unit (
        .W_CLK(REF_CLK),
        .R_CLK(TX_CLK),
        .WRST_N(SYNC_RST_1),
        .RRST_N(SYNC_RST_2),
        .WINC(WR_INC),
        .RINC(RD_INC),
        .WR_DATA(WR_DATA),
        .RD_DATA(RD_DATA),
        .FULL(FIFO_FULL),
        .EMPTY(F_EMPTY)
    );
    
    ClkDiv RX_CLkDIV (
        .i_ref_clk(UART_CLK),
        .i_rst_n(SYNC_RST_2),
        .i_clk_en(clk_div_en),
        .i_div_ratio(RX_DR),
        .o_div_clk(RX_CLK)
    );

    ClkDiv TX_CLkDIV (
        .i_ref_clk(UART_CLK),
        .i_rst_n(SYNC_RST_2),
        .i_clk_en(clk_div_en),
        .i_div_ratio(DIV_RATIO),
        .o_div_clk(TX_CLK)
    );

    CLKDIV_MUX CMUX_unit (
        .prescale(prescale),
        .OUT(RX_DR)
    );

    CLK_GATE clk_gate_unit (
        .CLK_EN(Gate_EN),
        .CLK(REF_CLK),
        .GATED_CLK(ALU_CLK)
    );

    DATA_SYNC data_sync_unit (
        .clk(REF_CLK),
        .rst_n(SYNC_RST_1),
        .bus_enable(RX_valid_ASYNC),
        .unsync_bus(RX_DATA_ASYNC),
        .sync_bus(RX_DATA),
        .enable_pulse(RX_valid)
    );

    RST_SYNC RST_SYNC_1 (
        .clk(REF_CLK),
        .rst_n_in(RST),
        .rst_n_out(SYNC_RST_1)
    );


    RST_SYNC RST_SYNC_2 (
        .clk(UART_CLK),
        .rst_n_in(RST),
        .rst_n_out(SYNC_RST_2)
    );

    UART_TOP uart_unit (
        .TX_CLK(TX_CLK),
        .RX_CLK(RX_CLK),
        .RST(SYNC_RST_2),
        .PAR_EN(Parity_Enable),
        .PAR_TYP(Parity_Type),
        .Prescale(prescale),
        .TX_IN_P(RD_DATA),
        .TX_IN_V(~F_EMPTY),
        .RX_IN_S(RX_IN),
        .TX_OUT_S(TX_OUT),
        .TX_OUT_V(),
        .RX_OUT_P(RX_DATA_ASYNC),
        .RX_OUT_V(RX_valid_ASYNC),
        .rdy_pulse(RD_INC)
    );

endmodule
