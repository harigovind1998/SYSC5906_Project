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
// 0x40 : Data signal of A
//        bit 31~0 - A[31:0] (Read/Write)
// 0x44 : Data signal of A
//        bit 31~0 - A[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of wa
//        bit 31~0 - wa[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of ha
//        bit 31~0 - ha[31:0] (Read/Write)
// 0x58 : reserved
// 0x5c : Data signal of B
//        bit 31~0 - B[31:0] (Read/Write)
// 0x60 : Data signal of B
//        bit 31~0 - B[63:32] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of wb
//        bit 31~0 - wb[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of hb
//        bit 31~0 - hb[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of s
//        bit 31~0 - s[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of k
//        bit 31~0 - k[31:0] (Read/Write)
// 0x84 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL              0x00
#define CONTROL_ADDR_GIE                  0x04
#define CONTROL_ADDR_IER                  0x08
#define CONTROL_ADDR_ISR                  0x0c
#define CONTROL_ADDR_GROUP_ID_X_DATA      0x10
#define CONTROL_BITS_GROUP_ID_X_DATA      32
#define CONTROL_ADDR_GROUP_ID_Y_DATA      0x18
#define CONTROL_BITS_GROUP_ID_Y_DATA      32
#define CONTROL_ADDR_GROUP_ID_Z_DATA      0x20
#define CONTROL_BITS_GROUP_ID_Z_DATA      32
#define CONTROL_ADDR_GLOBAL_OFFSET_X_DATA 0x28
#define CONTROL_BITS_GLOBAL_OFFSET_X_DATA 32
#define CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA 0x30
#define CONTROL_BITS_GLOBAL_OFFSET_Y_DATA 32
#define CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA 0x38
#define CONTROL_BITS_GLOBAL_OFFSET_Z_DATA 32
#define CONTROL_ADDR_A_DATA               0x40
#define CONTROL_BITS_A_DATA               64
#define CONTROL_ADDR_WA_DATA              0x4c
#define CONTROL_BITS_WA_DATA              32
#define CONTROL_ADDR_HA_DATA              0x54
#define CONTROL_BITS_HA_DATA              32
#define CONTROL_ADDR_B_DATA               0x5c
#define CONTROL_BITS_B_DATA               64
#define CONTROL_ADDR_WB_DATA              0x68
#define CONTROL_BITS_WB_DATA              32
#define CONTROL_ADDR_HB_DATA              0x70
#define CONTROL_BITS_HB_DATA              32
#define CONTROL_ADDR_S_DATA               0x78
#define CONTROL_BITS_S_DATA               32
#define CONTROL_ADDR_K_DATA               0x80
#define CONTROL_BITS_K_DATA               32
