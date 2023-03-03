`timescale 1ns/1ns
module muleasy();
reg[6:0] a;
reg[8:0]b;        //.0
reg clk;
wire[15:0] c;


muler m1(.a(a),.b(b),.c(c),.clk(clk));

initial
begin
#0
    a = 7'd99;
    b = 7'b000000001;
 #100
    $display("c = %b,",c);  
    $stop;
end
endmodule