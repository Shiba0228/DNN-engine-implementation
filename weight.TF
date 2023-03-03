`timescale 1ns/1ns
module weighttest();
reg signed[17:0] gd,wb;
wire signed[17:0] wa;

weight w1(.gd(gd),.wb(wb),.wa(wa));

initial begin
#0
   gd = 1200;
   wb = 8;


#500 
   $display("wa =%d",wa);
end

endmodule