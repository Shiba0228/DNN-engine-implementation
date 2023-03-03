`timescale 1ns/1ns         //5000ns
module FGtest;
reg clk;
reg[6:0] a,b,c,d;
reg[15:0] wa1,wb1,wc1,wd1;
wire[6:0] g11;


FG fg1(.a(a),.b(b),.c(c),.d(d),.wa1(wa1),.wb1(wb1),.wc1(wc1),.wd1(wd1),.fg(g11),.clk(clk));

initial
begin
#0
    a = 7'd20;
    b = 7'd40;
    c = 7'd60;
    d = 7'd100;
    wa1 = 16'd2;
    wb1 = 16'd1;
    wc1 = 16'd1;
    wd1 = 16'd1;

    
#4500
    $display("g11 = %d,"g11);  

    $stop;
end
endmodule