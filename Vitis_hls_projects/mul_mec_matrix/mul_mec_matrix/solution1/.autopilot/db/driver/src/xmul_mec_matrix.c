// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmul_mec_matrix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMul_mec_matrix_CfgInitialize(XMul_mec_matrix *InstancePtr, XMul_mec_matrix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMul_mec_matrix_Start(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMul_mec_matrix_IsDone(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMul_mec_matrix_IsIdle(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMul_mec_matrix_IsReady(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMul_mec_matrix_EnableAutoRestart(XMul_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMul_mec_matrix_DisableAutoRestart(XMul_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, 0);
}

void XMul_mec_matrix_Set_group_id_x(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA, Data);
}

u32 XMul_mec_matrix_Get_group_id_x(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA);
    return Data;
}

void XMul_mec_matrix_Set_group_id_y(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA, Data);
}

u32 XMul_mec_matrix_Get_group_id_y(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA);
    return Data;
}

void XMul_mec_matrix_Set_group_id_z(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA, Data);
}

u32 XMul_mec_matrix_Get_group_id_z(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA);
    return Data;
}

void XMul_mec_matrix_Set_global_offset_x(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA, Data);
}

u32 XMul_mec_matrix_Get_global_offset_x(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA);
    return Data;
}

void XMul_mec_matrix_Set_global_offset_y(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA, Data);
}

u32 XMul_mec_matrix_Get_global_offset_y(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA);
    return Data;
}

void XMul_mec_matrix_Set_global_offset_z(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA, Data);
}

u32 XMul_mec_matrix_Get_global_offset_z(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA);
    return Data;
}

void XMul_mec_matrix_Set_I(XMul_mec_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_I_DATA, (u32)(Data));
    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_I_DATA + 4, (u32)(Data >> 32));
}

u64 XMul_mec_matrix_Get_I(XMul_mec_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_I_DATA);
    Data += (u64)XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_I_DATA + 4) << 32;
    return Data;
}

void XMul_mec_matrix_Set_wi(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WI_DATA, Data);
}

u32 XMul_mec_matrix_Get_wi(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WI_DATA);
    return Data;
}

void XMul_mec_matrix_Set_hi(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_HI_DATA, Data);
}

u32 XMul_mec_matrix_Get_hi(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_HI_DATA);
    return Data;
}

void XMul_mec_matrix_Set_ci(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_CI_DATA, Data);
}

u32 XMul_mec_matrix_Get_ci(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_CI_DATA);
    return Data;
}

void XMul_mec_matrix_Set_wk(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WK_DATA, Data);
}

u32 XMul_mec_matrix_Get_wk(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WK_DATA);
    return Data;
}

void XMul_mec_matrix_Set_nk(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_NK_DATA, Data);
}

u32 XMul_mec_matrix_Get_nk(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_NK_DATA);
    return Data;
}

void XMul_mec_matrix_Set_O(XMul_mec_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_O_DATA, (u32)(Data));
    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_O_DATA + 4, (u32)(Data >> 32));
}

u64 XMul_mec_matrix_Get_O(XMul_mec_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_O_DATA);
    Data += (u64)XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_O_DATA + 4) << 32;
    return Data;
}

void XMul_mec_matrix_Set_wo(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WO_DATA, Data);
}

u32 XMul_mec_matrix_Get_wo(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_WO_DATA);
    return Data;
}

void XMul_mec_matrix_Set_ho(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_HO_DATA, Data);
}

u32 XMul_mec_matrix_Get_ho(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_HO_DATA);
    return Data;
}

void XMul_mec_matrix_Set_co(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_CO_DATA, Data);
}

u32 XMul_mec_matrix_Get_co(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_CO_DATA);
    return Data;
}

void XMul_mec_matrix_Set_s(XMul_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_S_DATA, Data);
}

u32 XMul_mec_matrix_Get_s(XMul_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_S_DATA);
    return Data;
}

void XMul_mec_matrix_InterruptGlobalEnable(XMul_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GIE, 1);
}

void XMul_mec_matrix_InterruptGlobalDisable(XMul_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_GIE, 0);
}

void XMul_mec_matrix_InterruptEnable(XMul_mec_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_IER);
    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_IER, Register | Mask);
}

void XMul_mec_matrix_InterruptDisable(XMul_mec_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_IER);
    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMul_mec_matrix_InterruptClear(XMul_mec_matrix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMul_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_ISR, Mask);
}

u32 XMul_mec_matrix_InterruptGetEnabled(XMul_mec_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_IER);
}

u32 XMul_mec_matrix_InterruptGetStatus(XMul_mec_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMul_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XMUL_MEC_MATRIX_CONTROL_ADDR_ISR);
}

