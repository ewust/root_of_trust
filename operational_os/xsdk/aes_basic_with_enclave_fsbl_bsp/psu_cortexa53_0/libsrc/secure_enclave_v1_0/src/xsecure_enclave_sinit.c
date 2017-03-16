// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsecure_enclave.h"

extern XSecure_enclave_Config XSecure_enclave_ConfigTable[];

XSecure_enclave_Config *XSecure_enclave_LookupConfig(u16 DeviceId) {
	XSecure_enclave_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSECURE_ENCLAVE_NUM_INSTANCES; Index++) {
		if (XSecure_enclave_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSecure_enclave_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSecure_enclave_Initialize(XSecure_enclave *InstancePtr, u16 DeviceId) {
	XSecure_enclave_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSecure_enclave_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSecure_enclave_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

