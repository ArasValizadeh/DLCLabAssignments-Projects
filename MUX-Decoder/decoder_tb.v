include "decoder.v";
module decoder_tb;

  reg i0,i1,Enable;

  wire d0, d1, d2, d3;

  decoder decoder(Enable, i0, i1, d0, d1, d2, d3);

  initial
    begin
      $monitor("Enable=%b i0=%b i1=%b d0=%b d1=%b d2=%b d3=%b",Enable,i0,i1,d0,d1,d2,d3);

      Enable=0;i0=1'bx;i1=1'bx;#5
      Enable=1;i0=0;i1=0;#5
      Enable=1;i0=0;i1=1;#5
      Enable=1;i0=1;i1=0;#5
      Enable=1;i0=1;i1=1;#5
      $finish;
    end
endmodule