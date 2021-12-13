// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCREAT_MEC_MATRIX_H
#define XCREAT_MEC_MATRIX_H

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
#include "xcreat_mec_matrix_hw.h"

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
} XCreat_mec_matrix_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCreat_mec_matrix;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCreat_mec_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCreat_mec_matrix_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCreat_mec_matrix_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCreat_mec_matrix_ReadReg(BaseAddress, RegOffset) \
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
int XCreat_mec_matrix_Initialize(XCreat_mec_matrix *InstancePtr, u16 DeviceId);
XCreat_mec_matrix_Config* XCreat_mec_matrix_LookupConfig(u16 DeviceId);
int XCreat_mec_matrix_CfgInitialize(XCreat_mec_matrix *InstancePtr, XCreat_mec_matrix_Config *ConfigPtr);
#else
int XCreat_mec_matrix_Initialize(XCreat_mec_matrix *InstancePtr, const char* InstanceName);
int XCreat_mec_matrix_Release(XCreat_mec_matrix *InstancePtr);
#endif

void XCreat_mec_matrix_Start(XCreat_mec_matrix *InstancePtr);
u32 XCreat_mec_matrix_IsDone(XCreat_mec_matrix *InstancePtr);
u32 XCreat_mec_matrix_IsIdle(XCreat_mec_matrix *InstancePtr);
u32 XCreat_mec_matrix_IsReady(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_EnableAutoRestart(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_DisableAutoRestart(XCreat_mec_matrix *InstancePtr);

void XCreat_mec_matrix_Set_group_id_x(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_group_id_x(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_group_id_y(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_group_id_y(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_group_id_z(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_group_id_z(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_global_offset_x(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_global_offset_x(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_global_offset_y(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_global_offset_y(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_global_offset_z(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_global_offset_z(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_A(XCreat_mec_matrix *InstancePtr, u64 Data);
u64 XCreat_mec_matrix_Get_A(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_wa(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_wa(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_ha(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_ha(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_B(XCreat_mec_matrix *InstancePtr, u64 Data);
u64 XCreat_mec_matrix_Get_B(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_wb(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_wb(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_hb(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_hb(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_s(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_s(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_Set_k(XCreat_mec_matrix *InstancePtr, u32 Data);
u32 XCreat_mec_matrix_Get_k(XCreat_mec_matrix *InstancePtr);

void XCreat_mec_matrix_InterruptGlobalEnable(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_InterruptGlobalDisable(XCreat_mec_matrix *InstancePtr);
void XCreat_mec_matrix_InterruptEnable(XCreat_mec_matrix *InstancePtr, u32 Mask);
void XCreat_mec_matrix_InterruptDisable(XCreat_mec_matrix *InstancePtr, u32 Mask);
void XCreat_mec_matrix_InterruptClear(XCreat_mec_matrix *InstancePtr, u32 Mask);
u32 XCreat_mec_matrix_InterruptGetEnabled(XCreat_mec_matrix *InstancePtr);
u32 XCreat_mec_matrix_InterruptGetStatus(XCreat_mec_matrix *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
