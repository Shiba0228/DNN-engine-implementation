`timescale 1ns/1ns         //5000ns
module gradetest;
reg clk;
reg[6:0] a,b,c,d;
reg[15:0] wa1,wb1,wc1,wd1,wa2,wb2,wc2,wd2,wa3,wb3,wc3,wd3,wa4,wb4,wc4,wd4;
wire[6:0] g11,g12,g13,g14;


grade gd1(.a(a),.b(b),.c(c),.d(d),.wa1(wa1),.wb1(wb1),.wc1(wc1),.wd1(wd1),.wa2(wa2),.wb2(wb2),.wc2(wc2),.wd2(wd2),.wa3(wa3),.wb3(wb3),.wc3(wc3),.wd3(wd3),.wa4(wa4),.wb4(wb4),.wc4(wc4),.wd4(wd4),.g1(g11),.g2(g12),.g3(g13),.g4(g14),.clk(clk));

initial
begin
#0
    a = 7'd20;
    b = 7'd40;
    c = 7'd60;
    d = 7'd100;
    wa1 = 9'd2;
    wb1 = 9'd1;
    wc1 = 9'd1;
    wd1 = 9'd1;
    wa2 = 9'd1;
    wb2 = 9'd2;
    wc2 = 9'd1;
    wd2 = 9'd1;
    wa3 = 9'd1;
    wb3 = 9'd1;
    wc3 = 9'd2;
    wd3 = 9'd1;
    wa4 = 9'd1;
    wb4 = 9'd1;
    wc4 = 9'd1;
    wd4 = 9'd2;
    
#4500
    $display("g11 = %d,",g11);  
    $display("g12 = %d,",g12);
    $display("g13 = %d,",g13);
    $display("g14 = %d,",g14);
    $stop;
end
endmodule