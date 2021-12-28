// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcreat_mec_matrix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCreat_mec_matrix_CfgInitialize(XCreat_mec_matrix *InstancePtr, XCreat_mec_matrix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCreat_mec_matrix_Start(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCreat_mec_matrix_IsDone(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCreat_mec_matrix_IsIdle(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCreat_mec_matrix_IsReady(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCreat_mec_matrix_EnableAutoRestart(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCreat_mec_matrix_DisableAutoRestart(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_AP_CTRL, 0);
}

void XCreat_mec_matrix_Set_group_id_x(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA, Data);
}

u32 XCreat_mec_matrix_Get_group_id_x(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_group_id_y(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA, Data);
}

u32 XCreat_mec_matrix_Get_group_id_y(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_group_id_z(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA, Data);
}

u32 XCreat_mec_matrix_Get_group_id_z(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_global_offset_x(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA, Data);
}

u32 XCreat_mec_matrix_Get_global_offset_x(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_global_offset_y(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA, Data);
}

u32 XCreat_mec_matrix_Get_global_offset_y(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_global_offset_z(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA, Data);
}

u32 XCreat_mec_matrix_Get_global_offset_z(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_A(XCreat_mec_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_A_DATA, (u32)(Data));
    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XCreat_mec_matrix_Get_A(XCreat_mec_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_A_DATA);
    Data += (u64)XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XCreat_mec_matrix_Set_wa(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_WA_DATA, Data);
}

u32 XCreat_mec_matrix_Get_wa(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_WA_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_ha(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_HA_DATA, Data);
}

u32 XCreat_mec_matrix_Get_ha(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_HA_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_B(XCreat_mec_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_B_DATA, (u32)(Data));
    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XCreat_mec_matrix_Get_B(XCreat_mec_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_B_DATA);
    Data += (u64)XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XCreat_mec_matrix_Set_wb(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_WB_DATA, Data);
}

u32 XCreat_mec_matrix_Get_wb(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_WB_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_hb(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_HB_DATA, Data);
}

u32 XCreat_mec_matrix_Get_hb(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_HB_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_s(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_S_DATA, Data);
}

u32 XCreat_mec_matrix_Get_s(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_S_DATA);
    return Data;
}

void XCreat_mec_matrix_Set_k(XCreat_mec_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_K_DATA, Data);
}

u32 XCreat_mec_matrix_Get_k(XCreat_mec_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_K_DATA);
    return Data;
}

void XCreat_mec_matrix_InterruptGlobalEnable(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GIE, 1);
}

void XCreat_mec_matrix_InterruptGlobalDisable(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_GIE, 0);
}

void XCreat_mec_matrix_InterruptEnable(XCreat_mec_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_IER);
    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_IER, Register | Mask);
}

void XCreat_mec_matrix_InterruptDisable(XCreat_mec_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_IER);
    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCreat_mec_matrix_InterruptClear(XCreat_mec_matrix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCreat_mec_matrix_WriteReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_ISR, Mask);
}

u32 XCreat_mec_matrix_InterruptGetEnabled(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_IER);
}

u32 XCreat_mec_matrix_InterruptGetStatus(XCreat_mec_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCreat_mec_matrix_ReadReg(InstancePtr->Control_BaseAddress, XCREAT_MEC_MATRIX_CONTROL_ADDR_ISR);
}

