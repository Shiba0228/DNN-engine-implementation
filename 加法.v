
module adder(a,b,c,d,clk,g);
input clk;        
input signed[18:0] a,b,c,d;     //.0
output signed[18:0] g;          
wire signed[18:0]e,f;
assign e = a+b;
assign f = c+d;
assign g= e+f;

endmodule

