// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmul_mec_matrix.h"

extern XMul_mec_matrix_Config XMul_mec_matrix_ConfigTable[];

XMul_mec_matrix_Config *XMul_mec_matrix_LookupConfig(u16 DeviceId) {
	XMul_mec_matrix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMUL_MEC_MATRIX_NUM_INSTANCES; Index++) {
		if (XMul_mec_matrix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMul_mec_matrix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMul_mec_matrix_Initialize(XMul_mec_matrix *InstancePtr, u16 DeviceId) {
	XMul_mec_matrix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMul_mec_matrix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMul_mec_matrix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

