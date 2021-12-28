// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmul_v2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMul_v2_CfgInitialize(XMul_v2 *InstancePtr, XMul_v2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMul_v2_Start(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMul_v2_IsDone(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMul_v2_IsIdle(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMul_v2_IsReady(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMul_v2_EnableAutoRestart(XMul_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMul_v2_DisableAutoRestart(XMul_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_AP_CTRL, 0);
}

void XMul_v2_Set_group_id_x(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_X_DATA, Data);
}

u32 XMul_v2_Get_group_id_x(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_X_DATA);
    return Data;
}

void XMul_v2_Set_group_id_y(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_Y_DATA, Data);
}

u32 XMul_v2_Get_group_id_y(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_Y_DATA);
    return Data;
}

void XMul_v2_Set_group_id_z(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_Z_DATA, Data);
}

u32 XMul_v2_Get_group_id_z(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GROUP_ID_Z_DATA);
    return Data;
}

void XMul_v2_Set_global_offset_x(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA, Data);
}

u32 XMul_v2_Get_global_offset_x(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA);
    return Data;
}

void XMul_v2_Set_global_offset_y(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA, Data);
}

u32 XMul_v2_Get_global_offset_y(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA);
    return Data;
}

void XMul_v2_Set_global_offset_z(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA, Data);
}

u32 XMul_v2_Get_global_offset_z(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA);
    return Data;
}

void XMul_v2_Set_I(XMul_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_I_DATA, (u32)(Data));
    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_I_DATA + 4, (u32)(Data >> 32));
}

u64 XMul_v2_Get_I(XMul_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_I_DATA);
    Data += (u64)XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_I_DATA + 4) << 32;
    return Data;
}

void XMul_v2_Set_wi(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WI_DATA, Data);
}

u32 XMul_v2_Get_wi(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WI_DATA);
    return Data;
}

void XMul_v2_Set_hi(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_HI_DATA, Data);
}

u32 XMul_v2_Get_hi(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_HI_DATA);
    return Data;
}

void XMul_v2_Set_ci(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_CI_DATA, Data);
}

u32 XMul_v2_Get_ci(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_CI_DATA);
    return Data;
}

void XMul_v2_Set_wk(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WK_DATA, Data);
}

u32 XMul_v2_Get_wk(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WK_DATA);
    return Data;
}

void XMul_v2_Set_nk(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_NK_DATA, Data);
}

u32 XMul_v2_Get_nk(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_NK_DATA);
    return Data;
}

void XMul_v2_Set_O(XMul_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_O_DATA, (u32)(Data));
    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_O_DATA + 4, (u32)(Data >> 32));
}

u64 XMul_v2_Get_O(XMul_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_O_DATA);
    Data += (u64)XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_O_DATA + 4) << 32;
    return Data;
}

void XMul_v2_Set_wo(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WO_DATA, Data);
}

u32 XMul_v2_Get_wo(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_WO_DATA);
    return Data;
}

void XMul_v2_Set_ho(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_HO_DATA, Data);
}

u32 XMul_v2_Get_ho(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_HO_DATA);
    return Data;
}

void XMul_v2_Set_co(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_CO_DATA, Data);
}

u32 XMul_v2_Get_co(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_CO_DATA);
    return Data;
}

void XMul_v2_Set_s(XMul_v2 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_S_DATA, Data);
}

u32 XMul_v2_Get_s(XMul_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_S_DATA);
    return Data;
}

void XMul_v2_InterruptGlobalEnable(XMul_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GIE, 1);
}

void XMul_v2_InterruptGlobalDisable(XMul_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_GIE, 0);
}

void XMul_v2_InterruptEnable(XMul_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_IER);
    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_IER, Register | Mask);
}

void XMul_v2_InterruptDisable(XMul_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_IER);
    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMul_v2_InterruptClear(XMul_v2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_v2_WriteReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_ISR, Mask);
}

u32 XMul_v2_InterruptGetEnabled(XMul_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_IER);
}

u32 XMul_v2_InterruptGetStatus(XMul_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMul_v2_ReadReg(InstancePtr->Control_BaseAddress, XMUL_V2_CONTROL_ADDR_ISR);
}

