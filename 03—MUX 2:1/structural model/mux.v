// 2:1 MUX using structural modeling

module mux(y, s, d0, d1);

input s, d0, d1;
output y;

wire w1, w2;

and a1(w1, d0, ~s);
and a2(w2, d1, s);
or o1(y, w1, w2);


endmodule