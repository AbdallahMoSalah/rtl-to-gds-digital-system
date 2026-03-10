module RST_SYNC_TB ();

    parameter NUM_STAGES = 2;

    reg clk;
    reg rst_n_in;
    wire rst_n_out;

    initial begin
        // Initialize signals
        clk = 0;
        rst_n_in = 1; // Start with reset deasserted
        #12;
        rst_n_in = 0; // Assert reset
        #12;
        rst_n_in = 1; // Deassert reset
        
        #50;

        rst_n_in = 0; // Assert reset again
        #12;    
        rst_n_in = 1; // Deassert reset again 
        #50;

        // Finish the simulation
        $stop;
    end

    // Clock generation
    always #5 clk = ~clk; // 10 time units clock period

    // Instantiate the RST_SYNC module
    RST_SYNC #(NUM_STAGES) dut (
        .clk(clk),
        .rst_n_in(rst_n_in),
        .rst_n_out(rst_n_out)
    );

endmodule