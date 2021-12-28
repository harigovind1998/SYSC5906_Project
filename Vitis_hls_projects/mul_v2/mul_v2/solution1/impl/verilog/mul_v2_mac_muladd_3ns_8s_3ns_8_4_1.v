// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

(* use_dsp = "yes" *) module mul_v2_mac_muladd_3ns_8s_3ns_8_4_1_DSP48_3(
    input clk,
    input rst,
    input ce,
    input  [3 - 1:0] in0,
    input  [8 - 1:0] in1,
    input  [3 - 1:0] in2,
    output [8 - 1:0]  dout);

wire signed [27 - 1:0]     a;
wire signed [18 - 1:0]     b;
wire signed [48 - 1:0]     c;
wire signed [45 - 1:0]     m;
wire signed [48 - 1:0]     p;
reg  signed [45 - 1:0]     m_reg;
reg  signed [27 - 1:0]     a_reg;
reg  signed [18 - 1:0]     b_reg;
reg  signed [48 - 1:0]     p_reg;

assign a  = $unsigned(in0);
assign b  = $signed(in1);
assign c  = $unsigned(in2);

assign m  = a_reg * b_reg;
assign p  = m_reg + c;

always @(posedge clk) begin
    if (ce) begin
        m_reg  <= m;
        a_reg  <= a;
        b_reg  <= b;
        p_reg  <= p;
    end
end

assign dout = p_reg;

endmodule
`timescale 1 ns / 1 ps
module mul_v2_mac_muladd_3ns_8s_3ns_8_4_1(
    clk,
    reset,
    ce,
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



mul_v2_mac_muladd_3ns_8s_3ns_8_4_1_DSP48_3 mul_v2_mac_muladd_3ns_8s_3ns_8_4_1_DSP48_3_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .dout( dout ));

endmodule

