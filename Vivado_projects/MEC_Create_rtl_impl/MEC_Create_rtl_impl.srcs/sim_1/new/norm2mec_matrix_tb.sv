`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2021 01:04:54 PM
// Design Name: 
// Module Name: norm2mec_matrix_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module norm2mec_matrix_tb(

    );
    
    reg clk, reset, enable;
    reg [31:0] data;
    norm2mec_matrix dut(.clk(clk), .rst(reset), .data_i(data));
    
    
    initial begin
        clk = 0;
        reset = 1;
        data =0;
        clk = 1;
        #10;
        reset = 0;
        clk = !clk;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 4;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 3;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 3;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 3;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 4;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 2;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 3;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 0;
        #5;
        clk = !clk;
        #5;
        clk = !clk;
        data = 1;
        
    end
    
//    always
//        #5 clk = !clk;
        
//    initial
//        #1000 $finish;
    
endmodule
