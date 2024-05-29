// testbench for 2:1 MUX using structural model

`include "mux.v"

module testbench;

reg s, d0, d1;
wire y;

mux m1(y, s, d0, d1);

initial begin
    $monitor($time, " s = %d, d0 = %d, d1 = %d, y = %d", s, d0, d1, y);
end

initial begin
    s = 0; d0 = 0; d1 = 0;
    #10 s = 0; d0 = 0; d1 = 1;
    #10 s = 0; d0 = 1; d1 = 0;
    #10 s = 0; d0 = 1; d1 = 1;
    #10 s = 1; d0 = 0; d1 = 0;
    #10 s = 1; d0 = 0; d1 = 1;
    #10 s = 1; d0 = 1; d1 = 0;
    #10 s = 1; d0 = 1; d1 = 1;
end

endmodule