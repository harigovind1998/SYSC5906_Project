// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcreat_mec_matrix.h"

extern XCreat_mec_matrix_Config XCreat_mec_matrix_ConfigTable[];

XCreat_mec_matrix_Config *XCreat_mec_matrix_LookupConfig(u16 DeviceId) {
	XCreat_mec_matrix_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCREAT_MEC_MATRIX_NUM_INSTANCES; Index++) {
		if (XCreat_mec_matrix_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCreat_mec_matrix_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCreat_mec_matrix_Initialize(XCreat_mec_matrix *InstancePtr, u16 DeviceId) {
	XCreat_mec_matrix_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCreat_mec_matrix_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCreat_mec_matrix_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

