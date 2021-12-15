// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module mul_mec_matrix_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   group_id_x,
    output wire [31:0]                   group_id_y,
    output wire [31:0]                   group_id_z,
    output wire [31:0]                   global_offset_x,
    output wire [31:0]                   global_offset_y,
    output wire [31:0]                   global_offset_z,
    output wire [63:0]                   I,
    output wire [31:0]                   wi,
    output wire [31:0]                   hi,
    output wire [31:0]                   ci,
    output wire [63:0]                   K,
    output wire [31:0]                   wk,
    output wire [31:0]                   nk,
    output wire [63:0]                   O,
    output wire [31:0]                   wo,
    output wire [31:0]                   ho,
    output wire [31:0]                   co,
    output wire [31:0]                   s,
    output wire [31:0]                   lim,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of group_id_x
//        bit 31~0 - group_id_x[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of group_id_y
//        bit 31~0 - group_id_y[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of group_id_z
//        bit 31~0 - group_id_z[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of global_offset_x
//        bit 31~0 - global_offset_x[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of global_offset_y
//        bit 31~0 - global_offset_y[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of global_offset_z
//        bit 31~0 - global_offset_z[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of I
//        bit 31~0 - I[31:0] (Read/Write)
// 0x44 : Data signal of I
//        bit 31~0 - I[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of wi
//        bit 31~0 - wi[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of hi
//        bit 31~0 - hi[31:0] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of ci
//        bit 31~0 - ci[31:0] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of K
//        bit 31~0 - K[31:0] (Read/Write)
// 0x68 : Data signal of K
//        bit 31~0 - K[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of wk
//        bit 31~0 - wk[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of nk
//        bit 31~0 - nk[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of O
//        bit 31~0 - O[31:0] (Read/Write)
// 0x84 : Data signal of O
//        bit 31~0 - O[63:32] (Read/Write)
// 0x88 : reserved
// 0x8c : Data signal of wo
//        bit 31~0 - wo[31:0] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of ho
//        bit 31~0 - ho[31:0] (Read/Write)
// 0x98 : reserved
// 0x9c : Data signal of co
//        bit 31~0 - co[31:0] (Read/Write)
// 0xa0 : reserved
// 0xa4 : Data signal of s
//        bit 31~0 - s[31:0] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of lim
//        bit 31~0 - lim[31:0] (Read/Write)
// 0xb0 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                = 8'h00,
    ADDR_GIE                    = 8'h04,
    ADDR_IER                    = 8'h08,
    ADDR_ISR                    = 8'h0c,
    ADDR_GROUP_ID_X_DATA_0      = 8'h10,
    ADDR_GROUP_ID_X_CTRL        = 8'h14,
    ADDR_GROUP_ID_Y_DATA_0      = 8'h18,
    ADDR_GROUP_ID_Y_CTRL        = 8'h1c,
    ADDR_GROUP_ID_Z_DATA_0      = 8'h20,
    ADDR_GROUP_ID_Z_CTRL        = 8'h24,
    ADDR_GLOBAL_OFFSET_X_DATA_0 = 8'h28,
    ADDR_GLOBAL_OFFSET_X_CTRL   = 8'h2c,
    ADDR_GLOBAL_OFFSET_Y_DATA_0 = 8'h30,
    ADDR_GLOBAL_OFFSET_Y_CTRL   = 8'h34,
    ADDR_GLOBAL_OFFSET_Z_DATA_0 = 8'h38,
    ADDR_GLOBAL_OFFSET_Z_CTRL   = 8'h3c,
    ADDR_I_DATA_0               = 8'h40,
    ADDR_I_DATA_1               = 8'h44,
    ADDR_I_CTRL                 = 8'h48,
    ADDR_WI_DATA_0              = 8'h4c,
    ADDR_WI_CTRL                = 8'h50,
    ADDR_HI_DATA_0              = 8'h54,
    ADDR_HI_CTRL                = 8'h58,
    ADDR_CI_DATA_0              = 8'h5c,
    ADDR_CI_CTRL                = 8'h60,
    ADDR_K_DATA_0               = 8'h64,
    ADDR_K_DATA_1               = 8'h68,
    ADDR_K_CTRL                 = 8'h6c,
    ADDR_WK_DATA_0              = 8'h70,
    ADDR_WK_CTRL                = 8'h74,
    ADDR_NK_DATA_0              = 8'h78,
    ADDR_NK_CTRL                = 8'h7c,
    ADDR_O_DATA_0               = 8'h80,
    ADDR_O_DATA_1               = 8'h84,
    ADDR_O_CTRL                 = 8'h88,
    ADDR_WO_DATA_0              = 8'h8c,
    ADDR_WO_CTRL                = 8'h90,
    ADDR_HO_DATA_0              = 8'h94,
    ADDR_HO_CTRL                = 8'h98,
    ADDR_CO_DATA_0              = 8'h9c,
    ADDR_CO_CTRL                = 8'ha0,
    ADDR_S_DATA_0               = 8'ha4,
    ADDR_S_CTRL                 = 8'ha8,
    ADDR_LIM_DATA_0             = 8'hac,
    ADDR_LIM_CTRL               = 8'hb0,
    WRIDLE                      = 2'd0,
    WRDATA                      = 2'd1,
    WRRESP                      = 2'd2,
    WRRESET                     = 2'd3,
    RDIDLE                      = 2'd0,
    RDDATA                      = 2'd1,
    RDRESET                     = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_group_id_x = 'b0;
    reg  [31:0]                   int_group_id_y = 'b0;
    reg  [31:0]                   int_group_id_z = 'b0;
    reg  [31:0]                   int_global_offset_x = 'b0;
    reg  [31:0]                   int_global_offset_y = 'b0;
    reg  [31:0]                   int_global_offset_z = 'b0;
    reg  [63:0]                   int_I = 'b0;
    reg  [31:0]                   int_wi = 'b0;
    reg  [31:0]                   int_hi = 'b0;
    reg  [31:0]                   int_ci = 'b0;
    reg  [63:0]                   int_K = 'b0;
    reg  [31:0]                   int_wk = 'b0;
    reg  [31:0]                   int_nk = 'b0;
    reg  [63:0]                   int_O = 'b0;
    reg  [31:0]                   int_wo = 'b0;
    reg  [31:0]                   int_ho = 'b0;
    reg  [31:0]                   int_co = 'b0;
    reg  [31:0]                   int_s = 'b0;
    reg  [31:0]                   int_lim = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_GROUP_ID_X_DATA_0: begin
                    rdata <= int_group_id_x[31:0];
                end
                ADDR_GROUP_ID_Y_DATA_0: begin
                    rdata <= int_group_id_y[31:0];
                end
                ADDR_GROUP_ID_Z_DATA_0: begin
                    rdata <= int_group_id_z[31:0];
                end
                ADDR_GLOBAL_OFFSET_X_DATA_0: begin
                    rdata <= int_global_offset_x[31:0];
                end
                ADDR_GLOBAL_OFFSET_Y_DATA_0: begin
                    rdata <= int_global_offset_y[31:0];
                end
                ADDR_GLOBAL_OFFSET_Z_DATA_0: begin
                    rdata <= int_global_offset_z[31:0];
                end
                ADDR_I_DATA_0: begin
                    rdata <= int_I[31:0];
                end
                ADDR_I_DATA_1: begin
                    rdata <= int_I[63:32];
                end
                ADDR_WI_DATA_0: begin
                    rdata <= int_wi[31:0];
                end
                ADDR_HI_DATA_0: begin
                    rdata <= int_hi[31:0];
                end
                ADDR_CI_DATA_0: begin
                    rdata <= int_ci[31:0];
                end
                ADDR_K_DATA_0: begin
                    rdata <= int_K[31:0];
                end
                ADDR_K_DATA_1: begin
                    rdata <= int_K[63:32];
                end
                ADDR_WK_DATA_0: begin
                    rdata <= int_wk[31:0];
                end
                ADDR_NK_DATA_0: begin
                    rdata <= int_nk[31:0];
                end
                ADDR_O_DATA_0: begin
                    rdata <= int_O[31:0];
                end
                ADDR_O_DATA_1: begin
                    rdata <= int_O[63:32];
                end
                ADDR_WO_DATA_0: begin
                    rdata <= int_wo[31:0];
                end
                ADDR_HO_DATA_0: begin
                    rdata <= int_ho[31:0];
                end
                ADDR_CO_DATA_0: begin
                    rdata <= int_co[31:0];
                end
                ADDR_S_DATA_0: begin
                    rdata <= int_s[31:0];
                end
                ADDR_LIM_DATA_0: begin
                    rdata <= int_lim[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_gie & (|int_isr);
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign group_id_x        = int_group_id_x;
assign group_id_y        = int_group_id_y;
assign group_id_z        = int_group_id_z;
assign global_offset_x   = int_global_offset_x;
assign global_offset_y   = int_global_offset_y;
assign global_offset_z   = int_global_offset_z;
assign I                 = int_I;
assign wi                = int_wi;
assign hi                = int_hi;
assign ci                = int_ci;
assign K                 = int_K;
assign wk                = int_wk;
assign nk                = int_nk;
assign O                 = int_O;
assign wo                = int_wo;
assign ho                = int_ho;
assign co                = int_co;
assign s                 = int_s;
assign lim               = int_lim;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_group_id_x[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_group_id_x[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GROUP_ID_X_DATA_0)
            int_group_id_x[31:0] <= (WDATA[31:0] & wmask) | (int_group_id_x[31:0] & ~wmask);
    end
end

// int_group_id_y[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_group_id_y[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GROUP_ID_Y_DATA_0)
            int_group_id_y[31:0] <= (WDATA[31:0] & wmask) | (int_group_id_y[31:0] & ~wmask);
    end
end

// int_group_id_z[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_group_id_z[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GROUP_ID_Z_DATA_0)
            int_group_id_z[31:0] <= (WDATA[31:0] & wmask) | (int_group_id_z[31:0] & ~wmask);
    end
end

// int_global_offset_x[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_global_offset_x[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GLOBAL_OFFSET_X_DATA_0)
            int_global_offset_x[31:0] <= (WDATA[31:0] & wmask) | (int_global_offset_x[31:0] & ~wmask);
    end
end

// int_global_offset_y[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_global_offset_y[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GLOBAL_OFFSET_Y_DATA_0)
            int_global_offset_y[31:0] <= (WDATA[31:0] & wmask) | (int_global_offset_y[31:0] & ~wmask);
    end
end

// int_global_offset_z[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_global_offset_z[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GLOBAL_OFFSET_Z_DATA_0)
            int_global_offset_z[31:0] <= (WDATA[31:0] & wmask) | (int_global_offset_z[31:0] & ~wmask);
    end
end

// int_I[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_I[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_I_DATA_0)
            int_I[31:0] <= (WDATA[31:0] & wmask) | (int_I[31:0] & ~wmask);
    end
end

// int_I[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_I[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_I_DATA_1)
            int_I[63:32] <= (WDATA[31:0] & wmask) | (int_I[63:32] & ~wmask);
    end
end

// int_wi[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wi[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WI_DATA_0)
            int_wi[31:0] <= (WDATA[31:0] & wmask) | (int_wi[31:0] & ~wmask);
    end
end

// int_hi[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hi[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HI_DATA_0)
            int_hi[31:0] <= (WDATA[31:0] & wmask) | (int_hi[31:0] & ~wmask);
    end
end

// int_ci[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ci[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CI_DATA_0)
            int_ci[31:0] <= (WDATA[31:0] & wmask) | (int_ci[31:0] & ~wmask);
    end
end

// int_K[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_K[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_DATA_0)
            int_K[31:0] <= (WDATA[31:0] & wmask) | (int_K[31:0] & ~wmask);
    end
end

// int_K[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_K[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_DATA_1)
            int_K[63:32] <= (WDATA[31:0] & wmask) | (int_K[63:32] & ~wmask);
    end
end

// int_wk[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wk[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WK_DATA_0)
            int_wk[31:0] <= (WDATA[31:0] & wmask) | (int_wk[31:0] & ~wmask);
    end
end

// int_nk[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_nk[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_NK_DATA_0)
            int_nk[31:0] <= (WDATA[31:0] & wmask) | (int_nk[31:0] & ~wmask);
    end
end

// int_O[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_O[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_O_DATA_0)
            int_O[31:0] <= (WDATA[31:0] & wmask) | (int_O[31:0] & ~wmask);
    end
end

// int_O[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_O[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_O_DATA_1)
            int_O[63:32] <= (WDATA[31:0] & wmask) | (int_O[63:32] & ~wmask);
    end
end

// int_wo[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_wo[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WO_DATA_0)
            int_wo[31:0] <= (WDATA[31:0] & wmask) | (int_wo[31:0] & ~wmask);
    end
end

// int_ho[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_ho[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HO_DATA_0)
            int_ho[31:0] <= (WDATA[31:0] & wmask) | (int_ho[31:0] & ~wmask);
    end
end

// int_co[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_co[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CO_DATA_0)
            int_co[31:0] <= (WDATA[31:0] & wmask) | (int_co[31:0] & ~wmask);
    end
end

// int_s[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_s[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_DATA_0)
            int_s[31:0] <= (WDATA[31:0] & wmask) | (int_s[31:0] & ~wmask);
    end
end

// int_lim[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_lim[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LIM_DATA_0)
            int_lim[31:0] <= (WDATA[31:0] & wmask) | (int_lim[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
