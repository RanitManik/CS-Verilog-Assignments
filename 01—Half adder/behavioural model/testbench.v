// testbench for half adder using behavioural model
`include "half_adder.v"
module testbench;
reg a, b;
wire c, s;
half_adder ha(c, s, a, b);
initial
begin
$monitor("a = %b; b = %b; c = %b; s = %b", a, b, c, s);
end
initial
begin
a = 0; b = 0;
#10 a = 0; b = 1;
#10 a = 1; b = 0;
#10 a = 1; b = 1;
end
endmodule