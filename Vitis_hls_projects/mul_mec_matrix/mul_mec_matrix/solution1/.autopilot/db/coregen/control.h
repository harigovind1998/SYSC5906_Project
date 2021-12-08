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
#define CONTROL_ADDR_I_DATA               0x40
#define CONTROL_BITS_I_DATA               64
#define CONTROL_ADDR_WI_DATA              0x4c
#define CONTROL_BITS_WI_DATA              32
#define CONTROL_ADDR_HI_DATA              0x54
#define CONTROL_BITS_HI_DATA              32
#define CONTROL_ADDR_CI_DATA              0x5c
#define CONTROL_BITS_CI_DATA              32
#define CONTROL_ADDR_K_DATA               0x64
#define CONTROL_BITS_K_DATA               64
#define CONTROL_ADDR_WK_DATA              0x70
#define CONTROL_BITS_WK_DATA              32
#define CONTROL_ADDR_NK_DATA              0x78
#define CONTROL_BITS_NK_DATA              32
#define CONTROL_ADDR_O_DATA               0x80
#define CONTROL_BITS_O_DATA               64
#define CONTROL_ADDR_WO_DATA              0x8c
#define CONTROL_BITS_WO_DATA              32
#define CONTROL_ADDR_HO_DATA              0x94
#define CONTROL_BITS_HO_DATA              32
#define CONTROL_ADDR_CO_DATA              0x9c
#define CONTROL_BITS_CO_DATA              32
#define CONTROL_ADDR_S_DATA               0xa4
#define CONTROL_BITS_S_DATA               32
