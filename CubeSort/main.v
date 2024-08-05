module main (
    input clk,
    input [15:0] input0 ,
    input [15:0] input1 ,
    input [15:0] input2 ,
    input [15:0] input3 ,
    input [15:0] input4 ,
    input [15:0] input5 ,
    input [15:0] input6 ,
    input [15:0] input7 ,
    input [15:0] input8 ,
    input [15:0] input9 ,
    input [15:0] input10 ,
    input [15:0] input11 ,
    input [15:0] input12 ,
    input [15:0] input13 ,
    input [15:0] input14 ,
    input [15:0] input15  
);
    reg [31:0] outputNodes [15:0];
    reg [31:0] first_input [15:0];
    reg [31:0] temp;
    always @(posedge clk) begin
        outputNodes[0] = input0;
        first_input[0] = input0;
        outputNodes[1] = input1;
        first_input[1] = input1;
        outputNodes[2] = input2;
        first_input[2] = input2;
        outputNodes[3] = input3;
        first_input[3] = input3;
        outputNodes[4] = input4;
        first_input[4] = input4;
        outputNodes[5] = input5;
        first_input[5] = input5;
        outputNodes[6] = input6;
        first_input[6] = input6;
        outputNodes[7] = input7;
        first_input[7] = input7;
        outputNodes[8] = input8;
        first_input[8] = input8;
        outputNodes[9] = input9;
        first_input[9] = input9;
        outputNodes[10] = input10;
        first_input[10] = input10;
        outputNodes[11] = input11;
        first_input[11] = input11;
        outputNodes[12] = input12;
        first_input[12] = input12;
        outputNodes[13] = input13;
        first_input[13] = input13;
        outputNodes[14] = input14;
        first_input[14] = input14;
        outputNodes[15] = input15;
        first_input[15] = input15;
        for (integer b = 16; b > 1; b = b / 2) begin
            for (integer i = 0; i < 16; i = i + b) begin
                for (integer j = i; j < i + b / 2; j = j + 1) begin
                    if (outputNodes[j] > outputNodes[j + b / 2]) begin
                        temp = outputNodes[j];
                        outputNodes[j] = outputNodes[j + b / 2];
                        outputNodes[j + b / 2] = temp;
                    end
                end
            end
        end
        $display("nodeNumber: 1 first:%d sorted:%d",first_input[0], outputNodes[0]);
        $display("nodeNumber: 2 first:%d sorted:%d",first_input[1], outputNodes[1]);
        $display("nodeNumber: 3 first:%d sorted:%d",first_input[2], outputNodes[2]);
        $display("nodeNumber: 4 first:%d sorted:%d",first_input[3], outputNodes[3]);
        $display("nodeNumber: 5 first:%d sorted:%d",first_input[4], outputNodes[4]);
        $display("nodeNumber: 6 first:%d sorted:%d",first_input[5], outputNodes[5]);
        $display("nodeNumber: 7 first:%d sorted:%d",first_input[6], outputNodes[6]);
        $display("nodeNumber: 8 first:%d sorted:%d",first_input[7], outputNodes[7]);
        $display("nodeNumber: 9 first:%d sorted:%d",first_input[8], outputNodes[8]);
        $display("nodeNumber: 10 first:%d sorted:%d",first_input[9], outputNodes[9]);
        $display("nodeNumber: 11 first:%d sorted:%d",first_input[10], outputNodes[10]);
        $display("nodeNumber: 12 first:%d sorted:%d",first_input[11], outputNodes[11]);
        $display("nodeNumber: 13 first:%d sorted:%d",first_input[12], outputNodes[12]);
        $display("nodeNumber: 14 first:%d sorted:%d",first_input[13], outputNodes[13]);
        $display("nodeNumber: 15 first:%d sorted:%d",first_input[14], outputNodes[14]);
        $display("nodeNumber: 16 first:%d sorted:%d",first_input[15], outputNodes[15]);
    end

endmodule