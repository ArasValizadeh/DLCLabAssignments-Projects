module  Project3(
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
    input [15:0] input15 ,
    input [15:0] input16 , 
    input [15:0] input17 , 
    input [15:0] input18 , 
    input [15:0] input19 , 
    input [15:0] input20 ,  
    input [15:0] input21 , 
    input [15:0] input22 , 
    input [15:0] input23 , 
    input [15:0] input24  
);

    reg [31:0] outputNodes [24:0];
    reg [31:0] first_input [24:0];
    reg [31:0] temp;
    integer i, b;

    always @(*) begin
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
        outputNodes[16] = input16;
        first_input[16] = input16;
        outputNodes[17] = input17;
        first_input[17] = input17;
        outputNodes[18] = input18;
        first_input[18] = input18;
        outputNodes[19] = input19;
        first_input[19] = input19;
        outputNodes[20] = input20;
        first_input[20] = input20;
        outputNodes[21] = input21;
        first_input[21] = input21;
        outputNodes[22] = input22;
        first_input[22] = input22;
        outputNodes[23] = input23;
        first_input[23] = input23;
        outputNodes[24] = input24;
        first_input[24] = input24;
        
        
        for (integer i = 25; i>0 ; i = i - 1) begin
            for (integer j = 0; j<i-1 ; j=j+1) begin
                if(outputNodes[j] > outputNodes[j+1])begin
                       temp = outputNodes[j]; 
                        outputNodes[j] = outputNodes[j + 1];
                        outputNodes[j + 1] = temp;
                    end 
            end
        end

        temp = outputNodes[9];
        outputNodes[9] = outputNodes[5];
        outputNodes[5] = temp;

        temp = outputNodes[6];
        outputNodes[6] = outputNodes[8];
        outputNodes[8] = temp;

        temp = outputNodes[15];
        outputNodes[15] = outputNodes[19];
        outputNodes[19] = temp;

        temp = outputNodes[16];
        outputNodes[16] = outputNodes[18];
        outputNodes[18] = temp;

               $display("id: 1 first:%d sorted:%d",first_input[0], outputNodes[0]);
        $display("id: 2 first:%d sorted:%d",first_input[1], outputNodes[1]);
        $display("id: 3 first:%d sorted:%d",first_input[2], outputNodes[2]);
        $display("id: 4 first:%d sorted:%d",first_input[3], outputNodes[3]);
        $display("id: 5 first:%d sorted:%d",first_input[4], outputNodes[4]);
        $display("id: 6 first:%d sorted:%d",first_input[5], outputNodes[5]);
        $display("id: 7 first:%d sorted:%d",first_input[6], outputNodes[6]);
        $display("id: 8 first:%d sorted:%d",first_input[7], outputNodes[7]);
        $display("id: 9 first:%d sorted:%d",first_input[8], outputNodes[8]);
        $display("id: 10 first:%d sorted:%d",first_input[9], outputNodes[9]);
        $display("id: 11 first:%d sorted:%d",first_input[10], outputNodes[10]);
        $display("id: 12 first:%d sorted:%d",first_input[11], outputNodes[11]);
        $display("id: 13 first:%d sorted:%d",first_input[12], outputNodes[12]);
        $display("id: 14 first:%d sorted:%d",first_input[13], outputNodes[13]);
        $display("id: 15 first:%d sorted:%d",first_input[14], outputNodes[14]);
        $display("id: 16 first:%d sorted:%d",first_input[15], outputNodes[15]);
         $display("id: 17 first:%d sorted:%d",first_input[16], outputNodes[16]);
          $display("id: 18 first:%d sorted:%d",first_input[17], outputNodes[17]);
           $display("id: 19 first:%d sorted:%d",first_input[18], outputNodes[18]);
            $display("id: 20 first:%d sorted:%d",first_input[19], outputNodes[19]);
             $display("id: 21 first:%d sorted:%d",first_input[20], outputNodes[20]);
              $display("id: 22 first:%d sorted:%d",first_input[21], outputNodes[21]);
               $display("id: 23 first:%d sorted:%d",first_input[22], outputNodes[22]);
                $display("id: 24 first:%d sorted:%d",first_input[23], outputNodes[23]);
                 $display("id: 25 first:%d sorted:%d",first_input[24], outputNodes[24]);
       

    end
 
endmodule
