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
// 0x10 : Data signal of Inp
//        bit 31~0 - Inp[31:0] (Read/Write)
// 0x14 : Data signal of Inp
//        bit 31~0 - Inp[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of wi
//        bit 31~0 - wi[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of hi
//        bit 31~0 - hi[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of ci
//        bit 31~0 - ci[31:0] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of wk
//        bit 31~0 - wk[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of nk
//        bit 31~0 - nk[31:0] (Read/Write)
// 0x40 : reserved
// 0x44 : Data signal of O
//        bit 31~0 - O[31:0] (Read/Write)
// 0x48 : Data signal of O
//        bit 31~0 - O[63:32] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of wo
//        bit 31~0 - wo[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of ho
//        bit 31~0 - ho[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of co
//        bit 31~0 - co[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of s
//        bit 31~0 - s[31:0] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL  0x00
#define CONTROL_ADDR_GIE      0x04
#define CONTROL_ADDR_IER      0x08
#define CONTROL_ADDR_ISR      0x0c
#define CONTROL_ADDR_INP_DATA 0x10
#define CONTROL_BITS_INP_DATA 64
#define CONTROL_ADDR_WI_DATA  0x1c
#define CONTROL_BITS_WI_DATA  32
#define CONTROL_ADDR_HI_DATA  0x24
#define CONTROL_BITS_HI_DATA  32
#define CONTROL_ADDR_CI_DATA  0x2c
#define CONTROL_BITS_CI_DATA  32
#define CONTROL_ADDR_WK_DATA  0x34
#define CONTROL_BITS_WK_DATA  32
#define CONTROL_ADDR_NK_DATA  0x3c
#define CONTROL_BITS_NK_DATA  32
#define CONTROL_ADDR_O_DATA   0x44
#define CONTROL_BITS_O_DATA   64
#define CONTROL_ADDR_WO_DATA  0x50
#define CONTROL_BITS_WO_DATA  32
#define CONTROL_ADDR_HO_DATA  0x58
#define CONTROL_BITS_HO_DATA  32
#define CONTROL_ADDR_CO_DATA  0x60
#define CONTROL_BITS_CO_DATA  32
#define CONTROL_ADDR_S_DATA   0x68
#define CONTROL_BITS_S_DATA   32
