
module CLKDIV_MUX #(parameter WIDTH =8)  (
input    wire     [5:0]              prescale,
output   reg      [WIDTH-1:0]        OUT
);


always @(*)
  begin
	case(prescale) 
	6'b100000 : begin
				OUT = 'd1 ;
				end
	6'b010000 : begin
				OUT = 'd2 ;
				end	
	6'b001000 : begin
				OUT = 'd4 ;
				end	
	6'b000100 : begin
				OUT = 'd8 ;
				end
	default   : begin
				OUT = 'd1 ;
				end					
	endcase
  end	
  
  
  
  
endmodule
