// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmul_v2.h"

extern XMul_v2_Config XMul_v2_ConfigTable[];

XMul_v2_Config *XMul_v2_LookupConfig(u16 DeviceId) {
	XMul_v2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMUL_V2_NUM_INSTANCES; Index++) {
		if (XMul_v2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMul_v2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMul_v2_Initialize(XMul_v2 *InstancePtr, u16 DeviceId) {
	XMul_v2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMul_v2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMul_v2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

