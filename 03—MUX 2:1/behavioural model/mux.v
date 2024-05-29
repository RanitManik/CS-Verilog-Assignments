// 2:1 MUX using behavioural modeling

module mux(y, s, d0, d1);

input s, d0, d1;
output y;

reg y;
always @(s, d0, d1)

if (s)
    y = d1;
else
    y = d0;


endmodule
