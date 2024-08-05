`include "mux4_1.v"

module mux4_1_tb;

reg i0, i1, i2, i3;
reg s0, s1;
output y;

mux4_1 uut (
    i0,
    i1,
    i2,
    i3,
    s0,
    s1,
    y
);

initial begin
    // Test case 1: s0=0, s1=0 => i0 selected
    s0 = 0; s1 = 0;
    i0 = 1; i1 = 0; i2 = 0; i3 = 0;
    #100;
    if(y == i0) $display("Test case 1 correct");

    // Test case 2: s0=0, s1=1 => i1 selected
    s0 = 0; s1 = 1;
    i0 = 0; i1 = 1; i2 = 0; i3 = 0;
    #100;
    if(y == i1) $display("Test case 2 correct");

    // Test case 3: s0=1, s1=0 => i2 selected
    s0 = 1; s1 = 0;
    i0 = 0; i1 = 0; i2 = 1; i3 = 0;
    #100;
    if(y == i2) $display("Test case 3 correct");

    // Test case 4: s0=1, s1=1 => i3 selected
    s0 = 1; s1 = 1;
    i0 = 0; i1 = 0; i2 = 0; i3 = 1;
    #100;
    if(y == i3) $display("Test case 4 correct");

    $finish;
end

endmodule