`timescale 1ps/1ps
module ASYC_FIFO_TB ();
    // Parameters
    parameter DATA_WIDTH = 8;
    parameter ADDR_WIDTH = 3;
    parameter DEPTH = 1 << ADDR_WIDTH;
    parameter R_CLK_PERIOD = 25;
    parameter W_CLK_PERIOD = 10;
    parameter BURST_LENGTH = 9;

    reg W_CLK;
    reg R_CLK;
    reg i_wrst_n;
    reg i_rrst_n;
    reg i_winc;
    reg i_rinc;
    reg [DATA_WIDTH-1:0] i_WR_DATA;
    wire [DATA_WIDTH-1:0] RD_DATA;
    wire FULL;
    wire EMPTY;    
    integer BURST_COUNT;

    reg [DATA_WIDTH-1:0] Burst_Words [0:BURST_LENGTH-1];
    // WRITE DOMAIN stimulus

    initial begin
        $dumpfile("ASYC_FIFO.vcd"); // VCD file name
        $dumpvars;                  // dump all variables

        $readmemh("stimulus.txt",Burst_Words); // Read stimulus from file

        $monitor ("new data written: WRITE DATA is %h ", i_WR_DATA); // Monitor write data

        initialize();

        // Reset write domain
        W_reset();

        // write burst of data
        for (BURST_COUNT=0; BURST_COUNT<BURST_LENGTH; BURST_COUNT=BURST_COUNT+1) begin
            W_burst(Burst_Words[BURST_COUNT]);
        end
    end

    // READ DOMAIN stimulus
    initial begin
        $monitor ("new data read READ DATA is %h ", RD_DATA); // Monitor read data
        // Reset read domain
        R_reset();
        // read data
        wait (!EMPTY); // Wait until FIFO is not empty
        read();
        #(R_CLK_PERIOD*15);

        $stop; // End simulation
    end



/////////////////////////////////////////////
/////////////////tasks///////////////////////
/////////////////////////////////////////////

    // Initialize all signals
task initialize;
    begin
        W_CLK = 1'b0;
        R_CLK = 1'b0;
        i_wrst_n = 1'b1;
        i_rrst_n = 1'b1;
        i_winc = 1'b0;
        i_rinc = 1'b0;
        i_WR_DATA = 'b0;
        i_wrst_n = 1'b1;
        i_rrst_n = 1'b1;

    end
endtask

    // write domain reset
task W_reset;
    begin
        #(W_CLK_PERIOD);
        i_wrst_n = 1'b0;
        #(W_CLK_PERIOD);
        i_wrst_n = 1'b1;
        #(W_CLK_PERIOD);
    end
endtask

    // read domain reset
task R_reset;
    begin
        #(R_CLK_PERIOD/2);
        i_rrst_n = 1'b0;
        #(R_CLK_PERIOD/2);
        i_rrst_n = 1'b1;
        #(R_CLK_PERIOD/2);
    end
endtask

    // write burst of data
task W_burst;
    input [DATA_WIDTH-1:0]DATA;
    begin
        i_winc = 1'b1;
        i_WR_DATA= DATA;
        #(W_CLK_PERIOD);
       // i_winc = 1'b0;
    end
endtask


    //  read data
task read;
    begin
        i_rinc = 1'b1;
        #(R_CLK_PERIOD);
       // i_rinc = 1'b0;
    end
endtask

/////////////////////////////////////////////
/////////////////clocks///////////////////////
/////////////////////////////////////////////

    // write clock generation   
always #(W_CLK_PERIOD/2) W_CLK = ~W_CLK;
    // read clock generation
always #(R_CLK_PERIOD/2) R_CLK = ~R_CLK;

/////////////////////////////////////////////
/////////////////inistance///////////////////
/////////////////////////////////////////////

ASYC_FIFO #(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH)) DUT_ASYC_FIFO (
    .W_CLK(W_CLK),
    .R_CLK(R_CLK),
    .WRST_N(i_wrst_n),
    .RRST_N(i_rrst_n),
    .WINC(i_winc),
    .RINC(i_rinc),
    .WR_DATA(i_WR_DATA),
    .RD_DATA(RD_DATA),
    .FULL(FULL),
    .EMPTY(EMPTY)
);
endmodule