// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xextend_matrix.h"

extern XExtend_matrix_Config XExtend_matrix_ConfigTable[];

XExtend_matrix_Config *XExtend_matrix_LookupConfig(u16 DeviceId) {
	XExtend_matrix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEXTEND_MATRIX_NUM_INSTANCES; Index++) {
		if (XExtend_matrix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XExtend_matrix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XExtend_matrix_Initialize(XExtend_matrix *InstancePtr, u16 DeviceId) {
	XExtend_matrix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XExtend_matrix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XExtend_matrix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

