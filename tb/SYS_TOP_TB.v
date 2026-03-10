// ====================================================================
// Testbench Module
// NOTE: The actual SYS_TOP module must be provided separately for compilation.
// RX_IN stimulus is now timed based on REF_CLK_PERIOD * 32 (Baud Period).
// ====================================================================
`timescale 1ns / 1ps
module SYS_TOP_TB ();

    // Clock Period Parameters
    parameter REF_CLK_PERIOD  = 10;  // e.g., 10ns (100 MHz reference)
    // The baud rate timing is derived from UART_CLK / 32.
    parameter BAUD_PERIOD     = 8680.64; // 
    parameter UART_CLK_PERIOD = 271.27; // Internal UART clock period (retained for UUT port)

    // Signals
    reg REF_CLK;
    reg UART_CLK;
    reg RST; // Active-low reset (asserted by 0)
    reg RX_IN; // Input from external device to UART RX (Asynchronous)

    wire TX_OUT; // Output from UART TX (Asynchronous)

    integer tx_file;
    // Instantiate the Unit Under Test (UUT)
    SYS_TOP uut (
        .REF_CLK  (REF_CLK),
        .UART_CLK (UART_CLK),
        .RST      (RST),
        .RX_IN    (RX_IN),
        .TX_OUT   (TX_OUT)
    );

    // ====================================================================
    // Clock Generation
    // ====================================================================

    // Reference Clock Generator

        always #(REF_CLK_PERIOD / 2) REF_CLK = ~REF_CLK;

    // UART Clock Generator (Retained for UUT)
  
        always  #(UART_CLK_PERIOD / 2) UART_CLK = ~UART_CLK;
    
    // ====================================================================
    // UART Frame Transmission Task with ODD Parity
    // Uses BAUD_PERIOD (REF_CLK_PERIOD * 32) for all timing
    // Protocol: 1 Start Bit (0), 8 Data Bits (LSB first), 1 Odd Parity Bit, 1 Stop Bit (1)
    // ====================================================================
    task send_frame;
        input [7:0] data;
        reg parity_bit;
        integer i;

        // Calculate EVEN Parity: The total number of '1's (data + parity) must be EVEN.
        // (0 if data has even 1s, 1 if data has odd 1s)
        
        begin
        parity_bit =  ^data;
        $display("-------------------------------------------------");
        $display("T=%0t: Starting transmission: Data=0x%h, Odd Parity Bit=%b (BAUD_PERIOD=%0d)", $time, data, parity_bit, BAUD_PERIOD);

        // 1. Start Bit (0)
        RX_IN = 1'b0;
        #(BAUD_PERIOD);

        // 2. Data Bits (LSB first)
        for (i = 0; i < 8; i = i + 1) begin
            RX_IN = data[i];
            #(BAUD_PERIOD);
        end

        // 3. Parity Bit
        RX_IN = parity_bit;
        #(BAUD_PERIOD);

        // 4. Stop Bit (1) - Stay in idle state for 2 bit times
        RX_IN = 1'b1;
        #(BAUD_PERIOD);

        $display("T=%0t: Transmission complete.", $time);
        end
    endtask


    // ====================================================================
    // Test Sequence
    // ====================================================================
    initial begin
        tx_file = $fopen("tx_log.txt", "w");
        if (tx_file == 0) begin
            $fatal(1, "Error: Could not open tx_log.txt file for writing.");
        end
        $fdisplay(tx_file, "// Log samples taken at the center of each Baud Period.\n");
        $fdisplay(tx_file, "// Newline indicates a 1->0 transition (Start Bit) detected on a sample boundary.\n");
        $fdisplay(tx_file, "// S_Data_p_S");
        // Initialize Signals
        UART_CLK= 1'b0;
        REF_CLK = 1'b0;
        RST     = 1'b1;   // initial rst state
        RX_IN   = 1'b1;   // UART line idle (high)
        # (REF_CLK_PERIOD);

        RST     = 1'b0; // assert RESET
        // Wait for clocks to stabilize and hold reset asserted
        # (REF_CLK_PERIOD * 2);

        // De-assert Reset (RST goes High to 1)
        $display("T=%0t: De-asserting RST.", $time);
        RST = 1'b1;
        # (REF_CLK_PERIOD * 2); // Hold de-asserted for a few cycles before stimulus
        //////////////////write in RF in address 00////////// 
        send_frame(8'hAA); // writing CMD
        send_frame(8'h00); // writing address
        send_frame(8'd10); // writing data
        ////////////////////////////////////////////////////

        //////////////////write in RF in address 01////////// 
        send_frame(8'hAA); // writing CMD
        send_frame(8'h01); // writing address
        send_frame(8'd10); // writing data
        ////////////////////////////////////////////////////

        //////////////////Reading from RF in address 00 ////////// 
        send_frame(8'hBB); // reading CMD
        send_frame(8'h00); // address
        ////////////////////////////////////////////////////

        //////////////////Reading from RF in address 01////////// 
        send_frame(8'hBB); // Reading CMD
        send_frame(8'h01); // address
        ////////////////////////////////////////////////////

        //////////////////write in RF in address 01////////// 
        send_frame(8'hAA); // writing CMD
        send_frame(8'h01); // writing address
        send_frame(8'd30); // writing data
        ////////////////////////////////////////////////////

        //////////////////Reading from RF in address 01////////// 
        send_frame(8'hBB); // Reading CMD
        send_frame(8'h01); // address
        ////////////////////////////////////////////////////


        //////////////////ALU_operation without Operators////////// 
        send_frame(8'hDD); // ALU_NOP CMD
        send_frame(8'h02); // FUNC mult
        ////////////////////////////////////////////////////
        //////////////////ALU_operation with Operators////////// 
        send_frame(8'hCC); // ALU_OP CMD
        send_frame(8'h02); // OP1
        send_frame(8'h03); // OP2
        send_frame(8'h01); // func SUB
        ////////////////////////////////////////////////////
        // ----------------------------------------------------------------
        // End Simulation
        // ----------------------------------------------------------------
        # (BAUD_PERIOD * 50);
       $display("T=%0t: Simulation finished. Check tx_log.txt for TX data.", $time);
        $fclose(tx_file);
        $stop;
    end

    // ====================================================================
    // TX Monitoring (Every REF_CLK cycle)
    // ====================================================================
    integer i;
    initial begin
        // Wait for reset to be de-asserted
        wait (RST === 1'b1);
        // Continuously sample and log every baud period
        forever begin
            @(negedge TX_OUT)
            #(BAUD_PERIOD/2)
            $fwrite(tx_file, "\nnewframe\n");
            for (i = 0 ;i<11 ; i=i+1) begin
            $fwrite(tx_file, "%b",TX_OUT); 
            if (i==0 || i==8 || i==9) begin
                $fwrite(tx_file, "_"); 
            end
            // Wait for the next baud period sample point
            if (i!=10) begin  
               #(BAUD_PERIOD);
            end
            
        end
    end
    end
endmodule
