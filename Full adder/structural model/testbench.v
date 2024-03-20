// testbench for full adder using structural model
`include "full_adder.v"
module testbench;
reg a, b, cin;
wire c, s;
full_adder fa(c, s, a, b, cin);
initial
begin
    $monitor("a = %b; b = %b; cin = %b; c = %b; s = %b", a, b, cin, c, s);
end
initial
begin
    a = 0; b = 0; cin = 0;
    #10 a = 0; b = 0; cin = 1;
    #10 a = 0; b = 1; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 0;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10 a = 1; b = 1; cin = 1;
end
endmodule