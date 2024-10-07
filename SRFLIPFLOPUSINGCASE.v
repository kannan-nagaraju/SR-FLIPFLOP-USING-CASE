module SRFLIPFLOPUSINGCASE(q, q_bar, s,r, clk, reset);//SR Flip Flop Behavioral Level using ‘case’ 
  input s,r,clk, reset;
  output reg q;
  output q_bar;
 
  always@(posedge clk) 
 begin // for synchronous reset
    if(!reset)       
	    q<= 0;
    else 
  begin
      case({s,r})       
	     2'b00: q <= q;
	     2'b01:q<=1'b0;
	     2'b10:q<=1'b1;
	     2'b11 q<=1'bx; 
      endcase
    end
  end
  assign q_bar = ~q;
endmodule
