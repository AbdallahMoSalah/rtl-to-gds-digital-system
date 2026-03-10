// Simple UART testbench
`timescale 1ns/1ps

module uart_top_tb;

  // Clock parameters
  parameter TX_CLK_PERIOD = 8.68;
  parameter RX_CLK_PERIOD = TX_CLK_PERIOD / 32;

  // Testbench signals
  reg TX_CLK;
  reg RX_CLK;
  reg RST;
  reg PAR_TYP;
  reg PAR_EN;
  reg [5:0] Prescale;
  reg [7:0] TX_IN_P;
  reg TX_IN_V;
  reg RX_IN_S;

  wire TX_OUT_S;
  wire TX_OUT_V;
  wire [7:0] RX_OUT_P;
  wire RX_OUT_V;
  wire rdy_pulse;

  // Instantiate the DUT
  UART_TOP DUT (
      .TX_CLK(TX_CLK),
      .RX_CLK(RX_CLK),
      .RST(RST),
      .PAR_TYP(PAR_TYP),
      .PAR_EN(PAR_EN),
      .Prescale(Prescale),
      .TX_IN_P(TX_IN_P),
      .TX_IN_V(TX_IN_V),
      .RX_IN_S(RX_IN_S),
      .TX_OUT_S(TX_OUT_S),
      .TX_OUT_V(TX_OUT_V),
      .RX_OUT_P(RX_OUT_P),
      .RX_OUT_V(RX_OUT_V),
      .rdy_pulse(rdy_pulse)
  );

  // Clock generation
  always #(TX_CLK_PERIOD / 2) TX_CLK = ~TX_CLK;
  always #(RX_CLK_PERIOD / 2) RX_CLK = ~RX_CLK;

  // Test stimulus and control
  initial begin
    // Initial signal values
    TX_CLK = 0;
    RX_CLK = 0;
    RST = 1;
    PAR_TYP = 0;
    PAR_EN = 0;
    Prescale = 6'd32;
    TX_IN_P = 8'd0;
    TX_IN_V = 0;
    RX_IN_S = 1;

    $display("Testbench started at %0t", $time);

    // Assert and de-assert active-low reset pulse
    #(RX_CLK_PERIOD);
    RST = 0;
    $display("Reset asserted at %0t", $time);
    
    #(RX_CLK_PERIOD);
    RST = 1;
    $display("Reset de-asserted at %0t", $time);
  end

  // Transmit sequence
  initial begin
    #(5*RX_CLK_PERIOD);
    
    // Transmit 'A'
    $display("TX test: transmitting 'A' at %0t", $time);
    TX_IN_P = 8'h41;
    TX_IN_V = 1;
    @(posedge rdy_pulse);
    
    // Transmit consecutive 'B'
    $display("Transmitting consecutive 'B' at %0t", $time);
    TX_IN_P = 8'h42;
    TX_IN_V = 1;
    @(posedge rdy_pulse);
    TX_IN_V = 0;

    // Wait for idle period
    $display("Idle period at %0t", $time);
    #(5 * TX_CLK_PERIOD);

    // Transmit 'C' after idle
    $display("Transmitting 'C' after idle at %0t", $time);
    TX_IN_P = 8'h43;
    TX_IN_V = 1;
    @(posedge rdy_pulse);
    TX_IN_V = 0;
    #(TX_CLK_PERIOD);
    $stop;
  end
  
  // Receive sequence
  initial begin
    #(RX_CLK_PERIOD*8);
    $display("RX test: simulating reception of 'a' at %0t", $time);

    // Simulate start bit
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);

    // Simulate 8 data bits (LSB first) for 'a' (01100001)
    RX_IN_S = 1;
    #(TX_CLK_PERIOD);
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);
    RX_IN_S = 1;
    #(TX_CLK_PERIOD);
    RX_IN_S = 1;
    #(TX_CLK_PERIOD);
    RX_IN_S = 0;
    #(TX_CLK_PERIOD);

    // Simulate stop bit
    RX_IN_S = 1;
    #(TX_CLK_PERIOD);

    // Check received data
    @(RX_OUT_V);
    $display("Received data at %0t. Data: %h (expected: %h)", $time, RX_OUT_P, 8'd97);
    
    if (RX_OUT_P == 8'd97) begin
        $display("Received data matches.");
    end else begin
        $display("ERROR: Data mismatch!");
    end
  end

  // Monitor signals for debugging
  initial begin
      $monitor("Time: %0t, TX_OUT_S: %b, TX_OUT_V: %b, RX_OUT_P: %h, RX_OUT_V: %b, rdy_pulse: %b",
               $time, TX_OUT_S, TX_OUT_V, RX_OUT_P, RX_OUT_V, rdy_pulse);
  end

endmodule
