`include "oneBitFullAdder.v"

module topModule;

reg [3:0] A;
reg [3:0] B;
wire [3:0] Sum;
wire Carry_out1;
wire Carry_out2;
wire Carry_out3;
wire Carry_out4;
integer i;

oneBitFullAdder fullAdder1 (A[0], B[0], 1'b0, Sum[0], Carry_out1);
oneBitFullAdder fullAdder2 (A[1], B[1], Carry_out1, Sum[1], Carry_out2);
oneBitFullAdder fullAdder3 (A[2], B[2], Carry_out2, Sum[2], Carry_out3);
oneBitFullAdder fullAdder4 (A[3], B[3], Carry_out3, Sum[3], Carry_out4);

initial begin
    for (i = 0 ; i < 50 ; i = i + 1)begin 
        A = $random;
        A = $random;  
        B = $random;
        B = $random;
        #50
        $display("a : %b , b : %b ", A , B);
        $display("sum %b, carryout %b", Sum, Carry_out4);
    end
end

endmodule
