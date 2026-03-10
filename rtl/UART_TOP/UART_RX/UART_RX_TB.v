`timescale 1ns/1ps

module UART_RX_TB ();
    parameter width = 8;
    parameter TX_CLK_PERIOD = 8.68;
    reg RX_CLK_TB;
    reg RST_N_TB;
    reg RX_IN_TB;
    reg PAR_EN_TB;
    reg PAR_TYP_TB;
    reg [5:0] Prescale_TB;
    wire data_valid_TB;
    wire Parity_Error_TB;
    wire Stop_Error_TB;
    wire [width-1:0] P_DATA_TB;

    reg TX_CLK_TB;





///////////////////////////////////////////////////////// 
///////////////initial block////////////////////////////////
/////////////////////////////////////////////////////////
initial
begin
    initialize();
    reset();

    // Test Case 1: No Parity, Prescale = 8, Send 0xA5
    UART_CONFIG(1'b0, 1'b0, 6'd8);
    DATA_IN(8'hFF);
    chk_rx_output(8'hA5, 1);

    // Test Case 2: Even Parity, Prescale = 8, Send 0x3C
    UART_CONFIG(1'b1, 1'b0, 6'd8);
    DATA_IN(8'h3C);
    chk_rx_output(8'h3C, 2);

    // Test Case 3: Odd Parity, Prescale = 8, Send 0x7E
    UART_CONFIG(1'b1, 1'b1, 6'd8);
    DATA_IN(8'h7E);
    chk_rx_output(8'h7E, 3);

    // Test Case 4: No Parity, Prescale = 16, Send 0xFF
    UART_CONFIG(1'b0, 1'b0, 6'd16);
    DATA_IN(8'hFF);
    chk_rx_output(8'hFF, 4);

    // Test Case 5: Even Parity, Prescale = 16, Send 0x00
    UART_CONFIG(1'b1, 1'b0, 6'd16);
    DATA_IN(8'h00);
    chk_rx_output(8'h00, 5);

    // Test Case 6: Odd Parity, Prescale = 16, Send 0x55
    UART_CONFIG(1'b1, 1'b1, 6'd16);
    DATA_IN(8'h55);
    chk_rx_output(8'h55, 6);
    // Test Case 7: No Parity, Prescale = 32, Send 0xC3
    UART_CONFIG(1'b0, 1'b0, 6'd32);
    DATA_IN(8'hC3);
    chk_rx_output(8'hC3, 7);
    // Test Case 8: Even Parity, Prescale = 32, Send 0x7A
    UART_CONFIG(1'b1, 1'b0, 6'd32);
    DATA_IN(8'h7A);
    chk_rx_output(8'h7A, 8);
     
    #(TX_CLK_PERIOD*20);
    $stop;
end
 ////////////////////////////////////////////////////////
 ///////////////////TASK/////////////////////////////////
 ////////////////////////////////////////////////////////

 task initialize;
    begin
        RX_CLK_TB = 1'b0;
        TX_CLK_TB = 1'b0;
        RST_N_TB = 1'b1;
        RX_IN_TB = 1'b1;
        PAR_EN_TB = 1'b0;
        PAR_TYP_TB = 1'b0;
        Prescale_TB = 6'd8; 
    end
endtask

task reset;
    begin
        #(TX_CLK_PERIOD*2);
        RST_N_TB = 1'b0;
        #(TX_CLK_PERIOD*2);
        RST_N_TB = 1'b1;
        #(TX_CLK_PERIOD*2);
    end
endtask

task UART_CONFIG;
    input PAR_EN_I;
    input PAR_TYP_I;
    input [5:0] Prescale_I;
    begin
        PAR_EN_TB = PAR_EN_I;
        PAR_TYP_TB = PAR_TYP_I;
        Prescale_TB = Prescale_I; 
    end
endtask

task DATA_IN;
    input [7:0] DATA_I;
    integer i;
    
    begin
       @(posedge TX_CLK_TB);
       RX_IN_TB = 1'b0; // start bit
       for (i=0; i<8; i=i+1) begin
            #(TX_CLK_PERIOD);
            RX_IN_TB = DATA_I[i];
       end
       if (PAR_EN_TB) begin
            #(TX_CLK_PERIOD);
            if (PAR_TYP_TB == 1'b0) begin
                RX_IN_TB = (^DATA_I); // even parity
            end else begin
                RX_IN_TB = ~(^DATA_I); // odd parity
            end
       end
        #(TX_CLK_PERIOD);
        RX_IN_TB = 1'b1; // stop bit
    end
endtask

task chk_rx_output;
    input [7:0] EXP_DATA_I;
    input [4:0] test_num;
    begin
        @(posedge data_valid_TB);
        if (P_DATA_TB === EXP_DATA_I) begin
            $display("Test Case %d PASSED: Received data = %h matches expected data = %h ",test_num, P_DATA_TB, EXP_DATA_I);
        end else begin
            $display("Test Case %d FAILED: Received data = %h does not match expected data = %h",test_num, P_DATA_TB, EXP_DATA_I);
        end
    end
endtask


    // clock generation 
    always #((TX_CLK_PERIOD/Prescale_TB)/2) RX_CLK_TB = ~RX_CLK_TB;
    always #(TX_CLK_PERIOD/2) TX_CLK_TB = ~TX_CLK_TB;
    
////////////////////////////////////////////////////////
/////////////////INST/////////////////////////////////
///////////////////////////////////////////////////////
UART_RX DUT(
    .CLK        (RX_CLK_TB),
    .RST_N      (RST_N_TB),
    .RX_IN      (RX_IN_TB),
    .PAR_EN     (PAR_EN_TB),
    .PAR_TYP    (PAR_TYP_TB),
    .Prescale   (Prescale_TB),
    .data_valid (data_valid_TB),
    .P_DATA     (P_DATA_TB),
    .Stop_Error (Stop_Error_TB),
    .Parity_Error(Parity_Error_TB)
);
endmodule