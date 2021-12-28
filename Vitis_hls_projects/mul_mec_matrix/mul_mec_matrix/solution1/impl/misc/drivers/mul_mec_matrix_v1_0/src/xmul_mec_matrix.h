// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMUL_MEC_MATRIX_H
#define XMUL_MEC_MATRIX_H

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
#include "xmul_mec_matrix_hw.h"

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
} XMul_mec_matrix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMul_mec_matrix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMul_mec_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMul_mec_matrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMul_mec_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMul_mec_matrix_ReadReg(BaseAddress, RegOffset) \
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
int XMul_mec_matrix_Initialize(XMul_mec_matrix *InstancePtr, u16 DeviceId);
XMul_mec_matrix_Config* XMul_mec_matrix_LookupConfig(u16 DeviceId);
int XMul_mec_matrix_CfgInitialize(XMul_mec_matrix *InstancePtr, XMul_mec_matrix_Config *ConfigPtr);
#else
int XMul_mec_matrix_Initialize(XMul_mec_matrix *InstancePtr, const char* InstanceName);
int XMul_mec_matrix_Release(XMul_mec_matrix *InstancePtr);
#endif

void XMul_mec_matrix_Start(XMul_mec_matrix *InstancePtr);
u32 XMul_mec_matrix_IsDone(XMul_mec_matrix *InstancePtr);
u32 XMul_mec_matrix_IsIdle(XMul_mec_matrix *InstancePtr);
u32 XMul_mec_matrix_IsReady(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_EnableAutoRestart(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_DisableAutoRestart(XMul_mec_matrix *InstancePtr);

void XMul_mec_matrix_Set_group_id_x(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_group_id_x(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_group_id_y(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_group_id_y(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_group_id_z(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_group_id_z(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_global_offset_x(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_global_offset_x(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_global_offset_y(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_global_offset_y(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_global_offset_z(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_global_offset_z(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_I(XMul_mec_matrix *InstancePtr, u64 Data);
u64 XMul_mec_matrix_Get_I(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_wi(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_wi(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_hi(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_hi(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_ci(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_ci(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_wk(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_wk(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_nk(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_nk(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_O(XMul_mec_matrix *InstancePtr, u64 Data);
u64 XMul_mec_matrix_Get_O(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_wo(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_wo(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_ho(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_ho(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_co(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_co(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_Set_s(XMul_mec_matrix *InstancePtr, u32 Data);
u32 XMul_mec_matrix_Get_s(XMul_mec_matrix *InstancePtr);

void XMul_mec_matrix_InterruptGlobalEnable(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_InterruptGlobalDisable(XMul_mec_matrix *InstancePtr);
void XMul_mec_matrix_InterruptEnable(XMul_mec_matrix *InstancePtr, u32 Mask);
void XMul_mec_matrix_InterruptDisable(XMul_mec_matrix *InstancePtr, u32 Mask);
void XMul_mec_matrix_InterruptClear(XMul_mec_matrix *InstancePtr, u32 Mask);
u32 XMul_mec_matrix_InterruptGetEnabled(XMul_mec_matrix *InstancePtr);
u32 XMul_mec_matrix_InterruptGetStatus(XMul_mec_matrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
