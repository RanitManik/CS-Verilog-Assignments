// full adder using data flow modeling
module full_adder(c, s, a, b, cin) ;
input a, b, cin;
output c, s;
assign s = a ^ b ^ cin;
assign c = (a & b) | (b & cin) | (a & cin);
endmodule