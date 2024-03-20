// Full adder using structural modeling
`include "half_adder.v"
module full_adder(c, s, a, b, cin);
input a, b, cin;
output c, s;
wire c1, s1, c2;
half_adder ha1(c1, s1, a, b);
half_adder ha2(c2, s, s1, cin);
or o1(c, c1, c2);
endmodule