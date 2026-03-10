`timescale 1ns / 1ps
module ClkDiv_TB ();
    reg ref_clk_TB;
    reg rst_n_TB;
    reg clk_en_TB;
    reg [8:0] div_ratio_TB; // 9 bits to accommodate RangeWidth + 1
    wire div_clk_TB;

    ClkDiv #(
        .RangeWidth(8)
    ) uut (
        .i_ref_clk(ref_clk_TB),
        .i_rst_n(rst_n_TB),
        .i_clk_en(clk_en_TB),
        .i_div_ratio(div_ratio_TB),
        .o_div_clk(div_clk_TB)
    );

    initial begin
        ref_clk_TB = 0;
        forever #5 ref_clk_TB = ~ref_clk_TB; // 100MHz clock
    end

    initial begin
        rst_n_TB = 0;
        clk_en_TB = 0;
        div_ratio_TB = 9'd1; // bypass by default

        #20;
        rst_n_TB = 1; // Release reset
        #10;
        clk_en_TB = 1; // Enable clock division

        // Test different division 
        #100 div_ratio_TB = 9'd2; // Minimum even division ratio
        #100 div_ratio_TB = 9'd3; // Odd division ratio
        #100 div_ratio_TB = 9'd5; // Another odd division ratio
        #100 div_ratio_TB = 9'd8; // Even division ratio 
        #100 clk_en_TB = 0; // Disable clock division
        #50 clk_en_TB = 1; // Re-enable clock division
        #100 div_ratio_TB = 9'd0; // Division ratio of 0 (should bypass)
        
        #200 $stop; // End simulation
    end

    initial begin
        $monitor("Time: %0t | rst_n: %b | clk_en: %b | div_ratio: %d | div_clk: %b", 
                 $time, rst_n_TB, clk_en_TB, div_ratio_TB, div_clk_TB);
    end
    
endmodule
