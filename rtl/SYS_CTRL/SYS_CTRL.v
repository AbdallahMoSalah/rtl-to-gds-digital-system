
module SYS_CTRL (
    input CLK,
    input RST,
    input [15:0] ALU_OUT,
    input OUT_Valid,
    input [7:0] RdData,
    input RdData_Valid,
    input [7:0] RX_P_DATA,
    input RX_D_VLD,

    output reg [3:0] ALU_FUN,
    output reg EN,
    output reg CLK_EN,
    output reg [3:0] Address,
    output reg WrEn,
    output reg RdEn,
    output reg [7:0] WrData,
    output reg [7:0] TX_P_DATA,
    output reg TX_D_VLD,
    output reg clk_div_en
);

reg save;

parameter IDLE      = 4'b0000,
        RF_WR_ADDR  = 4'b0001,
        RF_RD_ADDR  = 4'b0010,
        ALU_OP1     = 4'b0100,
        RF_WR       = 4'b0011,
        RF_RD       = 4'b0110,
        SEND_UART   = 4'b0111,
        ALU_FUNC    = 4'b1000,
        ALU_OP2     = 4'b1100,
        ALU_WORK    = 4'b1010,
        ALU_SEND_LSB= 4'b1110,  
        ALU_SEND_MSB= 4'b1111;  
        
          
    reg [7:0] Frame ;
    reg [3:0] current_state, next_state;
    always @(posedge CLK or negedge RST) begin
         if (!RST) begin
            Frame <= 8'b0;
        end else if (save)begin
            Frame <= RX_P_DATA ;
        end
    end


    always @(posedge CLK or negedge RST) begin
        if (!RST) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        
        end
    end
    always @(*) begin
       
        case (current_state)
            IDLE: begin
                if (RX_D_VLD) begin
                    case (RX_P_DATA)
                        8'hAA: next_state = RF_WR_ADDR;
                        8'hBB: next_state = RF_RD_ADDR;
                        8'hCC:next_state = ALU_OP1;
                        8'hDD:next_state = ALU_FUNC;
                        default: next_state = IDLE;
                    endcase
		end
		else
			next_state = IDLE;
                
            end

            RF_WR_ADDR: begin
                if (RX_D_VLD) 
                    next_state = RF_WR;
                else   
                    next_state =RF_WR_ADDR;
            end

            RF_WR: begin
                if (RX_D_VLD)
                    next_state = IDLE;
                else
                    next_state = RF_WR;
            end

            RF_RD_ADDR: begin
                if (RX_D_VLD) begin
                    next_state = RF_RD;
                end
                else 
                    next_state = RF_RD_ADDR;
            end

            RF_RD: begin
                if (RdData_Valid) begin
                    next_state = SEND_UART; 
                end
                else 
                    next_state = RF_RD;
            end

            SEND_UART: begin
                next_state = IDLE;
            end

            ALU_OP1: begin
            if (RX_D_VLD)
                next_state = ALU_OP2;
            else    
                next_state = ALU_OP1;    
            end
            ALU_OP2: begin
                if (RX_D_VLD) begin
                    next_state = ALU_FUNC;
                end
                else 
                    next_state = ALU_OP2;
            end

            ALU_FUNC: begin
                if (RX_D_VLD) begin
                    next_state = ALU_WORK;
                end
                else 
                    next_state = ALU_FUNC;
            end

            ALU_WORK: begin
                if (OUT_Valid) begin
                    next_state = ALU_SEND_LSB;
                end
                else 
                    next_state = ALU_WORK;
            end
            ALU_SEND_LSB: begin
                next_state = ALU_SEND_MSB;
            end

            ALU_SEND_MSB: begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

    always @(*) begin
        // Default values to prevent latches and ensure all outputs have a value.
        ALU_FUN =4'b0;
        EN = 1'b0;
        CLK_EN = 1'b0;
        Address =4'b0000;
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData =8'b00000000;
        TX_P_DATA = 8'b0000_0000;
        TX_D_VLD = 1'b0;
        clk_div_en = 1'b1;
        save = 0;
        // The case statement defines the outputs for each state.
        case (current_state)
            RF_WR_ADDR: begin
                save=1;
            end

            RF_WR: begin
               WrEn=1;
               WrData=RX_P_DATA;
               Address=Frame[3:0];

            end

            RF_RD_ADDR: begin
                save=1;
            end

            RF_RD: begin
                RdEn=1;
                Address=Frame[3:0];
            end

            SEND_UART: begin
                if (RdData_Valid) begin
                    TX_P_DATA=RdData;
                    TX_D_VLD=1;
                end
            end

            ALU_OP1: begin
                Address=4'b0000;
                WrEn=1;
                WrData=RX_P_DATA;
            end
            ALU_OP2: begin
                Address=4'b0001;
                WrEn=1;
                WrData=RX_P_DATA;
            end

            ALU_FUNC: begin
                CLK_EN=1;
                save=1;

            end

            ALU_WORK: begin
                CLK_EN=1;
                EN=1;
                ALU_FUN=Frame[3:0];
            end
            ALU_SEND_LSB: begin
                CLK_EN=1;
                EN=1;
                ALU_FUN=Frame[3:0];
                TX_D_VLD=1;
                TX_P_DATA=ALU_OUT[7:0];
            end
            ALU_SEND_MSB: begin
                CLK_EN=1;
                EN=1;
                ALU_FUN=Frame[3:0];
                TX_D_VLD=1;
                TX_P_DATA=ALU_OUT[15:8];
            end
            

            default: begin
        ALU_FUN =4'b0;
        EN = 1'b0;
        CLK_EN = 1'b0;
        Address =4'b0000;
        WrEn = 1'b0;
        RdEn = 1'b0;
        WrData =8'b00000000;
        TX_P_DATA = 8'b00000000;
        TX_D_VLD = 1'b0;
        clk_div_en = 1'b1;
        save = 0;  
            end
        endcase
    end
endmodule
