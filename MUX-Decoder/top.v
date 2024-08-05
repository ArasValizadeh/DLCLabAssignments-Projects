`include "decoder.v"
`include "mux4_1.v"
module top;

reg i0, i1, Enable;
wire d0, d1, d2, d3;
decoder decoder(Enable, i0, i1, d0, d1, d2, d3);

reg s0, s1;
wire y;
mux4_1 uut (d0, d1, d2, d3, s0, s1, y);

initial begin
    Enable = 1'b1; 
    i0 = 1'b0; 
    i1 = 1'b1; 
    s0 = 1'b0;
    s1 = 1'b1;
    #100;
    $display("Enable : %b,i0 : %b,i1:%b,d0: %b,d1: %b,d2 : %b,d3 : %b,s0 : %b,s1 : %b",Enable ,i0 ,i1 ,d0 ,d1,d2,d3,s0,s1);
    $display("y : %b ",y);

    Enable = 1'b1; 
    i0 = 1'b0; 
    i1 = 1'b1; 
    s0 = 1'b0;
    s1 = 1'b0;
    #100;
    $display("Enable : %b,i0 : %b,i1:%b,d0: %b,d1: %b,d2 : %b,d3 : %b,s0 : %b,s1 : %b",Enable ,i0 ,i1 ,d0 ,d1,d2,d3,s0,s1);
    $display("y : %b ",y);

    Enable = 1'b1; 
    i0 = 1'b0; 
    i1 = 1'b1; 
    s0 = 1'b1;
    s1 = 1'b1;
    #100;
    $display("Enable : %b,i0 : %b,i1:%b,d0: %b,d1: %b,d2 : %b,d3 : %b,s0 : %b,s1 : %b",Enable ,i0 ,i1 ,d0 ,d1,d2,d3,s0,s1);
    $display("y : %b ",y);

    Enable = 1'b1; 
    i0 = 1'b0; 
    i1 = 1'b1; 
    s0 = 1'b1;
    s1 = 1'b0;
    #100;
    $display("Enable : %b,i0 : %b,i1:%b,d0: %b,d1: %b,d2 : %b,d3 : %b,s0 : %b,s1 : %b",Enable ,i0 ,i1 ,d0 ,d1,d2,d3,s0,s1);
    $display("y : %b ",y);
end

endmodule
