module loss(ag,pg,ls);
input signed[18:0] ag,pg;
output signed[18:0] ls;

assign ls = ag - pg;

endmodule