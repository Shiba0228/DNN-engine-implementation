`timescale 1ns/1ns
module losstest();
reg signed[7:0] ag,pg;
wire signed[7:0] ls;

loss l1(.ag(ag),.pg(pg),.ls(ls));

initial begin
#0
   ag = 7;
   pg = 8;


#500 
   $display("ls =%d",ls);
end

endmodule