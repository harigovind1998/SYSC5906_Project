// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K (
address0, ce0, q0, reset,clk);

parameter DataWidth = 32;
parameter AddressWidth = 6;
parameter AddressRange = 36;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;

reg [DataWidth-1:0] ram[0:AddressRange-1];

initial begin
    $readmemh("./mul_mec_matrix_mul_mec_matrix_Pipeline_XCL_WG_DIM_X_L_mul_mec_matrix_K.dat", ram);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram[address0];
    end
end



endmodule

