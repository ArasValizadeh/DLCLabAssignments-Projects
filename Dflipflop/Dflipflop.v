module Dflipflop(
    output q,
    output qBar,
    input d,
    input wire clk
);

always @(posedge clk)begin
    q = d;
    qBar = ~d;
end

endmodule