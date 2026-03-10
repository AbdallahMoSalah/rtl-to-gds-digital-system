module RST_SYNC #(
    parameter NUM_STAGES = 2
) (
    input  wire clk,
    input  wire rst_n_in, // asynchronous active-low reset input
    output rst_n_out // synchronized active-low reset output
);
    
    reg [NUM_STAGES-1:0] sync_reg; // Synchronization shift register

    assign rst_n_out = sync_reg[0]; // Output the least significant bit of the shift register
    // synchroinize the deassertion of the reset signal
    always @(posedge clk or negedge rst_n_in) begin
        if (!rst_n_in) begin
            sync_reg <= 'b0;
        end else begin
            sync_reg <= {1'b1, sync_reg[NUM_STAGES-1:1]};
        end
    end
    
endmodule
