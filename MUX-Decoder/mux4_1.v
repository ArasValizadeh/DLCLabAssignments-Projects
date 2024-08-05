module mux4_1(
    input i0,
    input i1,
    input i2,
    input i3,
    input s0,
    input s1,
    output reg y
);

always @(*) begin
    case({s0,s1})
        2'b00 : y = i0;
        2'b01 : y = i1;
        2'b10 : y = i2;
        2'b11 : y = i3;
    endcase
end

endmodule