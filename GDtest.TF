`timescale 1ns/1ns
module GDtest();
reg signed[7:0] inG,ls;
wire signed[17:0] gd;

GD g1(.inG(inG),.ls(ls),.gd(gd));

initial begin
#0
   inG = 75;
   ls = 8;


#500 
   $display("gd =%d",gd);
end

endmodule