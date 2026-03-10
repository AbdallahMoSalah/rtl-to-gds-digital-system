module DATA_SYNC #(
    parameter NUM_STAGES = 2,
    parameter BUS_WIDTH = 8
) (
    input clk,
    input rst_n,
    input bus_enable,
    input [BUS_WIDTH-1:0] unsync_bus,
    output reg [BUS_WIDTH-1:0] sync_bus,
    output reg enable_pulse    
);
    reg [NUM_STAGES-1:0] sync_reg;
    reg pulse_reg;
    wire comb_enable_pulse;

    assign comb_enable_pulse= sync_reg[0] & ~pulse_reg;
    // synchronizer flip-flops
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sync_reg <= 'b0;
        end else begin
            sync_reg <= {bus_enable, sync_reg[NUM_STAGES-1:1]};
        end
    end

    // pulse generation
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pulse_reg <= 1'b0;
            enable_pulse <= 1'b0;
        end else begin
            pulse_reg <= sync_reg[0];
            enable_pulse <= comb_enable_pulse;
        end
    end

    // data output register
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sync_bus <= 'b0;
        end else if (comb_enable_pulse) begin
            sync_bus <= unsync_bus;
        end
    end
endmodule


