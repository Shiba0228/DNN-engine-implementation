//div
module divider(a,b,c,clk);
input clk;        
input signed[18:0] a,b;     //.0
output signed[18:0] c;
   
wire signed[18:0] d,e;
assign d = (a<<<1) / b;
assign e = d + 1'b1;
assign c = e>>>1;

endmodule