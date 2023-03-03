module FG(a,b,c,d,wa1,wb1,wc1,wd1,fg,clk); 
input clk;
input signed[18:0] a,b,c,d;
input signed[18:0] wa1,wb1,wc1,wd1;
output signed[18:0] fg;
wire signed[18:0] y11,y12,y13,y14;
wire signed[18:0] a1;
wire signed[18:0] sum1;

adder sumfg1(.a(wa1),.b(wb1),.c(wc1),.d(wd1),.clk(clk),.g(sum1));

//y1
muler  mf1(.clk(clk),.a(a),.b(wa1),.c(y11));
muler  mf2(.clk(clk),.a(b),.b(wb1),.c(y12));
muler  mf3(.clk(clk),.a(c),.b(wc1),.c(y13));
muler  mf4(.clk(clk),.a(d),.b(wd1),.c(y14));
adder adf1(.a(y11),.b(y12),.c(y13),.d(y14),.clk(clk),.g(a1));
divider dif1(.a(a1),.b(sum1),.c(fg),.clk(clk));


endmodule