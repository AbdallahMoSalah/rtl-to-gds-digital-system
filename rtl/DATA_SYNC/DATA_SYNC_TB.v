module DATA_SYNC_TB ();
    parameter
        NUM_STAGES = 2,
        BUS_WIDTH = 8;  

    reg clk;
    reg rst_n;
    reg bus_enable;
    reg [BUS_WIDTH-1:0] unsync_bus;
    wire [BUS_WIDTH-1:0] sync_bus;
    wire enable_pulse;

    initial begin
        // Initialize signals
        clk = 0;
        rst_n = 1;
        bus_enable = 0;
        unsync_bus = 8'b1010_1010; // Example initial value

        // Apply reset
        #10;   
        rst_n = 0;
        #10;
        rst_n = 1;
        #10;

        // Test sequence
        bus_enable = 1;
        #20;
        bus_enable = 0;
        #30;
        unsync_bus = 8'h3C;
        bus_enable = 1; 
        #10;
        bus_enable = 0; #30;
        $stop;

        
    end


    // Clock generation
    always #5 clk = ~clk;

    // Instantiate the DUT
    DATA_SYNC #(
        .NUM_STAGES(NUM_STAGES),
        .BUS_WIDTH(BUS_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .bus_enable(bus_enable),
        .unsync_bus(unsync_bus),
        .sync_bus(sync_bus),
        .enable_pulse(enable_pulse)
    );
endmodule
