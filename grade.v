module grade(a,b,c,d,wa1,wb1,wc1,wd1,wa2,wb2,wc2,wd2,wa3,wb3,wc3,wd3,wa4,wb4,wc4,wd4,g1,g2,g3,g4,clk);  //calculate grade
input clk;
input signed[18:0] a,b,c,d;
input signed[18:0] wa1,wb1,wc1,wd1,wa2,wb2,wc2,wd2,wa3,wb3,wc3,wd3,wa4,wb4,wc4,wd4;
output signed[18:0] g1,g2,g3,g4;
wire signed[18:0] sum1,sum2,sum3,sum4;
wire signed[18:0] y11,y12,y13,y14,y21,y22,y23,y24,y31,y32,y33,y34,y41,y42,y43,y44;
wire signed[18:0] a1,a2,a3,a4;

adder sumt1(.a(wa1),.b(wb1),.c(wc1),.d(wd1),.clk(clk),.g(sum1));
adder sumt2(.a(wa2),.b(wb2),.c(wc2),.d(wd2),.clk(clk),.g(sum2));
adder sumt3(.a(wa3),.b(wb3),.c(wc3),.d(wd3),.clk(clk),.g(sum3));
adder sumt4(.a(wa4),.b(wb4),.c(wc4),.d(wd4),.clk(clk),.g(sum4));

//y1
muler  m11(.clk(clk),.a(a),.b(wa1),.c(y11));
muler  m12(.clk(clk),.a(b),.b(wb1),.c(y12));
muler  m13(.clk(clk),.a(c),.b(wc1),.c(y13));
muler  m14(.clk(clk),.a(d),.b(wd1),.c(y14));
adder ad1(.a(y11),.b(y12),.c(y13),.d(y14),.clk(clk),.g(a1));
divider di1(.a(a1),.b(sum1),.c(g1),.clk(clk));

//y2
muler  m21(.clk(clk),.a(a),.b(wa2),.c(y21));
muler  m22(.clk(clk),.a(b),.b(wb2),.c(y22));
muler  m23(.clk(clk),.a(c),.b(wc2),.c(y23));
muler  m24(.clk(clk),.a(d),.b(wd2),.c(y24));
adder ad2(.a(y21),.b(y22),.c(y23),.d(y24),.clk(clk),.g(a2));
divider di2(.a(a2),.b(sum2),.c(g2),.clk(clk));


//y3
muler  m31(.clk(clk),.a(a),.b(wa3),.c(y31));
muler  m32(.clk(clk),.a(b),.b(wb3),.c(y32));
muler  m33(.clk(clk),.a(c),.b(wc3),.c(y33));
muler  m34(.clk(clk),.a(d),.b(wd3),.c(y34));
adder ad3(.a(y31),.b(y32),.c(y33),.d(y34),.clk(clk),.g(a3));
divider di3(.a(a3),.b(sum3),.c(g3),.clk(clk));

//y4
muler  m41(.clk(clk),.a(a),.b(wa4),.c(y41));
muler  m42(.clk(clk),.a(b),.b(wb4),.c(y42));
muler  m43(.clk(clk),.a(c),.b(wc4),.c(y43));
muler  m44(.clk(clk),.a(d),.b(wd4),.c(y44));
adder ad4(.a(y41),.b(y42),.c(y43),.d(y44),.clk(clk),.g(a4));
divider di4(.a(a4),.b(sum4),.c(g4),.clk(clk));
endmodule