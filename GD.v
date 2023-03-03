module GD(inG,ls,gd);
input signed[18:0] inG,ls;
output signed[18:0] gd;

assign gd = (-2)*inG*ls;

endmodule