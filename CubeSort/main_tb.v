`include "main.v"
module main_tb();
    reg clk;
    reg [15:0] wire0;
    reg [15:0] wire1;
    reg [15:0] wire2;
    reg [15:0] wire3;
    reg [15:0] wire4;
    reg [15:0] wire5;
    reg [15:0] wire6;
    reg [15:0] wire7;
    reg [15:0] wire8;
    reg [15:0] wire9;
    reg [15:0] wire10;
    reg [15:0] wire11;
    reg [15:0] wire12;
    reg [15:0] wire13;
    reg [15:0] wire14;
    reg [15:0] wire15; 
    main cube_sort (
        clk,
        wire0 ,
        wire1 ,
        wire2 , 
        wire3 , 
        wire4 , 
        wire5 , 
        wire6 , 
        wire7 , 
        wire8 , 
        wire9 , 
        wire10 ,
        wire11 ,
        wire12 ,
        wire13 ,
        wire14 ,
        wire15   
    );
    initial begin
        clk = 1;
        wire0 = 'd3;
        wire1 = 'd5;
        wire2 = 'd8; 
        wire3 = 'd9; 
        wire4 = 'd10; 
        wire5 = 'd12; 
        wire6 = 'd14; 
        wire7 = 'd20; 
        wire8 = 'd95; 
        wire9 = 'd90; 
        wire10 = 'd60;
        wire11 = 'd40;
        wire12 = 'd35;
        wire13 = 'd32;
        wire14 = 'd18;
        wire15 = 'd0;   
    end
endmodule