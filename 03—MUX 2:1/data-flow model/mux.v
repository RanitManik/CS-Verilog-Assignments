// 2:1 MUX using data-flow modeling

module mux(y, s, d0, d1);

input s, d0, d1;
output y;

assign y = (~s & d0) | (s & d1);

endmodule