// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xextend_matrix.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XExtend_matrix_CfgInitialize(XExtend_matrix *InstancePtr, XExtend_matrix_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XExtend_matrix_Start(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL) & 0x80;
    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XExtend_matrix_IsDone(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XExtend_matrix_IsIdle(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XExtend_matrix_IsReady(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XExtend_matrix_EnableAutoRestart(XExtend_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XExtend_matrix_DisableAutoRestart(XExtend_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_AP_CTRL, 0);
}

void XExtend_matrix_Set_group_id_x(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA, Data);
}

u32 XExtend_matrix_Get_group_id_x(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_X_DATA);
    return Data;
}

void XExtend_matrix_Set_group_id_y(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA, Data);
}

u32 XExtend_matrix_Get_group_id_y(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_Y_DATA);
    return Data;
}

void XExtend_matrix_Set_group_id_z(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA, Data);
}

u32 XExtend_matrix_Get_group_id_z(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GROUP_ID_Z_DATA);
    return Data;
}

void XExtend_matrix_Set_global_offset_x(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA, Data);
}

u32 XExtend_matrix_Get_global_offset_x(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_X_DATA);
    return Data;
}

void XExtend_matrix_Set_global_offset_y(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA, Data);
}

u32 XExtend_matrix_Get_global_offset_y(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Y_DATA);
    return Data;
}

void XExtend_matrix_Set_global_offset_z(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA, Data);
}

u32 XExtend_matrix_Get_global_offset_z(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GLOBAL_OFFSET_Z_DATA);
    return Data;
}

void XExtend_matrix_Set_A(XExtend_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_A_DATA, (u32)(Data));
    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_A_DATA + 4, (u32)(Data >> 32));
}

u64 XExtend_matrix_Get_A(XExtend_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_A_DATA);
    Data += (u64)XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_A_DATA + 4) << 32;
    return Data;
}

void XExtend_matrix_Set_wa(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_WA_DATA, Data);
}

u32 XExtend_matrix_Get_wa(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_WA_DATA);
    return Data;
}

void XExtend_matrix_Set_ha(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_HA_DATA, Data);
}

u32 XExtend_matrix_Get_ha(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_HA_DATA);
    return Data;
}

void XExtend_matrix_Set_p(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_P_DATA, Data);
}

u32 XExtend_matrix_Get_p(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_P_DATA);
    return Data;
}

void XExtend_matrix_Set_B(XExtend_matrix *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_B_DATA, (u32)(Data));
    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_B_DATA + 4, (u32)(Data >> 32));
}

u64 XExtend_matrix_Get_B(XExtend_matrix *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_B_DATA);
    Data += (u64)XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_B_DATA + 4) << 32;
    return Data;
}

void XExtend_matrix_Set_wb(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_WB_DATA, Data);
}

u32 XExtend_matrix_Get_wb(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_WB_DATA);
    return Data;
}

void XExtend_matrix_Set_hb(XExtend_matrix *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_HB_DATA, Data);
}

u32 XExtend_matrix_Get_hb(XExtend_matrix *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_HB_DATA);
    return Data;
}

void XExtend_matrix_InterruptGlobalEnable(XExtend_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GIE, 1);
}

void XExtend_matrix_InterruptGlobalDisable(XExtend_matrix *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_GIE, 0);
}

void XExtend_matrix_InterruptEnable(XExtend_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_IER);
    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_IER, Register | Mask);
}

void XExtend_matrix_InterruptDisable(XExtend_matrix *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_IER);
    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_IER, Register & (~Mask));
}

void XExtend_matrix_InterruptClear(XExtend_matrix *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExtend_matrix_WriteReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_ISR, Mask);
}

u32 XExtend_matrix_InterruptGetEnabled(XExtend_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_IER);
}

u32 XExtend_matrix_InterruptGetStatus(XExtend_matrix *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExtend_matrix_ReadReg(InstancePtr->Control_BaseAddress, XEXTEND_MATRIX_CONTROL_ADDR_ISR);
}

