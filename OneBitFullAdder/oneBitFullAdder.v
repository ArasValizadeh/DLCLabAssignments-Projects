module oneBitFullAdder(
    input wire a,
    input wire b,
    input wire c_in,
    output reg s,
    output reg c
);

always @(*) begin
    s = (~a & ~b & c_in) | (~a & b & ~c_in) | (a & ~b & ~c_in) | (a & b & c_in);
    c = (a & b) | (a & c) | (b & c_in);
end

endmodule
