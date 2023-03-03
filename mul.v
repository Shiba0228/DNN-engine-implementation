module muler(a,b,c,clk);
input signed[18:0] a;
input signed[18:0] b;       //.0
output signed[18:0] c;      //.0
input clk;
wire x;
assign x =b[0];
reg signed[18:0] c1;
reg signed[18:0] a1;

always @(*) begin
if(x) begin
   a1 = (a<<<1) / 2;
   c1 = ((a * b[17:1])<<<1) + a1;
   end
else 
   c1 = a * b[17:0];
end
assign c = c1;

endmodule



