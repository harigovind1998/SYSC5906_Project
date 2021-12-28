// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMUL_V2_H
#define XMUL_V2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmul_v2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XMul_v2_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMul_v2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMul_v2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMul_v2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMul_v2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMul_v2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMul_v2_Initialize(XMul_v2 *InstancePtr, u16 DeviceId);
XMul_v2_Config* XMul_v2_LookupConfig(u16 DeviceId);
int XMul_v2_CfgInitialize(XMul_v2 *InstancePtr, XMul_v2_Config *ConfigPtr);
#else
int XMul_v2_Initialize(XMul_v2 *InstancePtr, const char* InstanceName);
int XMul_v2_Release(XMul_v2 *InstancePtr);
#endif

void XMul_v2_Start(XMul_v2 *InstancePtr);
u32 XMul_v2_IsDone(XMul_v2 *InstancePtr);
u32 XMul_v2_IsIdle(XMul_v2 *InstancePtr);
u32 XMul_v2_IsReady(XMul_v2 *InstancePtr);
void XMul_v2_EnableAutoRestart(XMul_v2 *InstancePtr);
void XMul_v2_DisableAutoRestart(XMul_v2 *InstancePtr);

void XMul_v2_Set_Inp(XMul_v2 *InstancePtr, u64 Data);
u64 XMul_v2_Get_Inp(XMul_v2 *InstancePtr);
void XMul_v2_Set_wi(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_wi(XMul_v2 *InstancePtr);
void XMul_v2_Set_hi(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_hi(XMul_v2 *InstancePtr);
void XMul_v2_Set_ci(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_ci(XMul_v2 *InstancePtr);
void XMul_v2_Set_wk(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_wk(XMul_v2 *InstancePtr);
void XMul_v2_Set_nk(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_nk(XMul_v2 *InstancePtr);
void XMul_v2_Set_O(XMul_v2 *InstancePtr, u64 Data);
u64 XMul_v2_Get_O(XMul_v2 *InstancePtr);
void XMul_v2_Set_wo(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_wo(XMul_v2 *InstancePtr);
void XMul_v2_Set_ho(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_ho(XMul_v2 *InstancePtr);
void XMul_v2_Set_co(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_co(XMul_v2 *InstancePtr);
void XMul_v2_Set_s(XMul_v2 *InstancePtr, u32 Data);
u32 XMul_v2_Get_s(XMul_v2 *InstancePtr);

void XMul_v2_InterruptGlobalEnable(XMul_v2 *InstancePtr);
void XMul_v2_InterruptGlobalDisable(XMul_v2 *InstancePtr);
void XMul_v2_InterruptEnable(XMul_v2 *InstancePtr, u32 Mask);
void XMul_v2_InterruptDisable(XMul_v2 *InstancePtr, u32 Mask);
void XMul_v2_InterruptClear(XMul_v2 *InstancePtr, u32 Mask);
u32 XMul_v2_InterruptGetEnabled(XMul_v2 *InstancePtr);
u32 XMul_v2_InterruptGetStatus(XMul_v2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
