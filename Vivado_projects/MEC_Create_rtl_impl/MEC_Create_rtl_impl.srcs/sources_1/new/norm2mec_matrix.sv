`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2021 12:52:13 PM
// Design Name: 
// Module Name: norm2mec_matrix
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


module norm2mec_matrix(
    input clk,
    input rst,
    input [31:0] data_i
    );
    parameter X_CNT_WIDTH = $clog2(8);
    parameter Y_CNT_WIDTH = $clog2(7);
    parameter Z_CNT_WIDTH = $clog2(1);
    

    reg [X_CNT_WIDTH-1:0] x_cntr;
    reg [Y_CNT_WIDTH-1:0] y_cntr;
    reg [Z_CNT_WIDTH-1:0] z_cntr;
    
    reg [X_CNT_WIDTH-1:0] moving_w;
    
    reg [31:0] mec_matrix[251:0];
    
    wire [31:0] d = 3 * y_cntr + x_cntr * 7 + z_cntr * (8*7); 
    reg [31:0] d1;
    reg [31:0] d2;
    
    reg [31:0] data_del;
    
    always @(posedge clk) begin
        if(rst) begin
            x_cntr <= 0;
            y_cntr <= 0;
            z_cntr <= 0;
            moving_w <= 0;
        end else begin
            x_cntr <= x_cntr + 1;
            if(moving_w < (8-3+1)) begin // 8 + 3 - 1 = image width - filter width + 1
                moving_w <= moving_w + 1;
            end
            if(x_cntr == 7) begin
                x_cntr <= 0;
                y_cntr <= y_cntr + 1;
                moving_w <= 0;
                if(y_cntr == 6) begin
                    y_cntr <= 0;
                    z_cntr <= z_cntr + 1;
                end 
            end
             
            d1 <= d +  1;
            d2 <= d1 + 1;
            data_del <= data_i;
            if(x_cntr > 1) begin
                 mec_matrix[d2] = data_i;
            end
            if(x_cntr > 0) begin
                 mec_matrix[d1] = data_i;
            end
            mec_matrix[d] = data_i;
        
        end
    end
    
endmodule
