// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XEXTEND_MATRIX_H
#define XEXTEND_MATRIX_H

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
#include "xextend_matrix_hw.h"

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
} XExtend_matrix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XExtend_matrix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XExtend_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XExtend_matrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XExtend_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XExtend_matrix_ReadReg(BaseAddress, RegOffset) \
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
int XExtend_matrix_Initialize(XExtend_matrix *InstancePtr, u16 DeviceId);
XExtend_matrix_Config* XExtend_matrix_LookupConfig(u16 DeviceId);
int XExtend_matrix_CfgInitialize(XExtend_matrix *InstancePtr, XExtend_matrix_Config *ConfigPtr);
#else
int XExtend_matrix_Initialize(XExtend_matrix *InstancePtr, const char* InstanceName);
int XExtend_matrix_Release(XExtend_matrix *InstancePtr);
#endif

void XExtend_matrix_Start(XExtend_matrix *InstancePtr);
u32 XExtend_matrix_IsDone(XExtend_matrix *InstancePtr);
u32 XExtend_matrix_IsIdle(XExtend_matrix *InstancePtr);
u32 XExtend_matrix_IsReady(XExtend_matrix *InstancePtr);
void XExtend_matrix_EnableAutoRestart(XExtend_matrix *InstancePtr);
void XExtend_matrix_DisableAutoRestart(XExtend_matrix *InstancePtr);

void XExtend_matrix_Set_group_id_x(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_group_id_x(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_group_id_y(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_group_id_y(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_group_id_z(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_group_id_z(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_global_offset_x(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_global_offset_x(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_global_offset_y(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_global_offset_y(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_global_offset_z(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_global_offset_z(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_A(XExtend_matrix *InstancePtr, u64 Data);
u64 XExtend_matrix_Get_A(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_wa(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_wa(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_ha(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_ha(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_p(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_p(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_B(XExtend_matrix *InstancePtr, u64 Data);
u64 XExtend_matrix_Get_B(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_wb(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_wb(XExtend_matrix *InstancePtr);
void XExtend_matrix_Set_hb(XExtend_matrix *InstancePtr, u32 Data);
u32 XExtend_matrix_Get_hb(XExtend_matrix *InstancePtr);

void XExtend_matrix_InterruptGlobalEnable(XExtend_matrix *InstancePtr);
void XExtend_matrix_InterruptGlobalDisable(XExtend_matrix *InstancePtr);
void XExtend_matrix_InterruptEnable(XExtend_matrix *InstancePtr, u32 Mask);
void XExtend_matrix_InterruptDisable(XExtend_matrix *InstancePtr, u32 Mask);
void XExtend_matrix_InterruptClear(XExtend_matrix *InstancePtr, u32 Mask);
u32 XExtend_matrix_InterruptGetEnabled(XExtend_matrix *InstancePtr);
u32 XExtend_matrix_InterruptGetStatus(XExtend_matrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
