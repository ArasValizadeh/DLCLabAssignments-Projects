module decoder(
    input Enable,
    input i0,
    input i1,
    output d0,
    output d1,
    output d2,
    output d3);

    wire ni0,ni1;

    not n1(ni0,i0);
    not n2(ni1,i1);

    and n3(d0,Enable,ni0,ni1);
    and n4(d1,Enable,ni0,i1);
    and n5(d2,Enable,i0,ni1);
    and n6(d3,Enable,i0,i1);

endmodule