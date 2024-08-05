`include "Dflipflop.v" 

module rinCounter (
    input CLK,
    input CLR,
    output reg [3:0] out
);
Dflipflop d1 (
    .clk(CLK),
    .d(out[3]),
    .q(out[0]),
    .qBar()
);
Dflipflop d2 (
    .clk(CLK),
    .d(out[0]),
    .q(out[1]),
    .qBar()
);
Dflipflop d3 (
    .clk(CLK),
    .d(out[1]),
    .q(out[2]),
    .qBar()
);
Dflipflop d4 (
    .clk(CLK),
    .d(out[2]),
    .q(out[3]),
    .qBar()
);
always @(posedge CLK or negedge CLR) begin
    if (!CLR) begin
        out <= 4'b0001; 
    end else begin
        out[0] <= out[3];
        out[1] <= out[0];
        out[2] <= out[1];
        out[3] <= out[2];
    end
end

endmodule
