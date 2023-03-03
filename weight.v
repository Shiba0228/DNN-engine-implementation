module weight(gd,wb,wa);
input signed[18:0] gd,wb;
output signed[18:0] wa;

assign wa = wb - (gd/100);  //0.01

endmodule