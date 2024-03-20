// Half adder using structural modeling
module half_adder(c, s, a, b) ;
input a,b;
output c,s;
assign s = a^ b;
assign c = a & b;
endmodule