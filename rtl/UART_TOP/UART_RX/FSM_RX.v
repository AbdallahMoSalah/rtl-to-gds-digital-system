module FSM_RX (
    input        CLK,
    input        RST_N,
    input        RX_IN,
    input        PAR_EN,
    input  [3:0] bit_cnt,
    input  [5:0] Prescale,
    input  [4:0] edge_cnt,
    input        stp_err,
    input        strt_glitch,
    input        par_err,
    output reg   dat_samp_en,
    output reg   cnt_en,
    output reg   data_valid,
    output reg   stp_chk_en,
    output reg   strt_chk_en,
    output reg   par_chk_en,
    output reg   deser_en
);

localparam  IDLE    = 3'b000,
            START   = 3'b001,
            DATA    = 3'b010,
            PARITY  = 3'b011,
            STOP    = 3'b100,
            ERR_CHK = 3'b101;

reg [2:0] next_state, current_state;
wire last_edge = (edge_cnt == (Prescale - 1));

always @(posedge CLK or negedge RST_N) begin
    if (!RST_N)
        current_state <= IDLE;
    else
        current_state <= next_state;
end

always @(*) begin
    case (current_state)
        IDLE: begin
            if (RX_IN)
                next_state = IDLE;
            else
                next_state = START;
        end

        START: begin
            if (last_edge) begin
                if (strt_glitch)
                    next_state = IDLE;
                else
                    next_state = DATA;
            end else
                next_state = START;
        end

        DATA: begin
            if ((bit_cnt == 4'b1000) && last_edge) begin
                if (PAR_EN)
                    next_state = PARITY;
                else
                    next_state = STOP;
            end else
                next_state = DATA;
        end

        PARITY: begin
            if (last_edge)
                next_state = STOP;
            else
                next_state = PARITY;
        end

        STOP: begin
            if (edge_cnt == (Prescale - 2))
                next_state = ERR_CHK;
            else
                next_state = STOP;
        end

        ERR_CHK: begin
            if (RX_IN)
                next_state = IDLE;
            else
                next_state = START;
        end

        default: 
		next_state =IDLE;
    endcase
end

always @(*) begin
    // Default assignments
    dat_samp_en= 1'b1;
    cnt_en      = 1'b1;
    data_valid  = 1'b0;
    stp_chk_en  = 1'b0;
    strt_chk_en = 1'b0;
    par_chk_en  = 1'b0;
    deser_en    = 1'b0;

    case (current_state)
        IDLE: begin
            if (RX_IN) begin
                cnt_en      = 1'b0;
                dat_samp_en= 1'b0;
            end else begin
                cnt_en      = 1'b1;
                dat_samp_en= 1'b1;
            end
        end

        START: begin
            strt_chk_en  = 1'b1;
        end

        DATA: begin
            deser_en     = 1'b1;
        end

        PARITY: begin
            par_chk_en   = 1'b1;
        end

        STOP: begin
            stp_chk_en   = 1'b1;
        end

        ERR_CHK: begin
            data_valid   =(par_err | stp_err)? 1'b0: 1'b1;
            cnt_en       = 1'b0;
        end

        default: begin
            dat_samp_en= 1'b1;
            cnt_en      = 1'b1;
            data_valid  = 1'b0;
            stp_chk_en  = 1'b0;
            strt_chk_en = 1'b0;
            par_chk_en  = 1'b0;
            deser_en    = 1'b0;
        end
    endcase
end

endmodule
