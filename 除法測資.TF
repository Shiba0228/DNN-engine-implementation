`timescale 1ns/1ns
module divtest();
reg[17:0] a,b;
reg clk;
wire[6:0] c;

divider d1(.a(a),.b(b),.c(c),.clk(clk));

initial
begin
#0
    a = 8'b11001000;
    b = 9'b000010010;
#100
    $display("c = %b",c);  
    $stop;
end
endmodule