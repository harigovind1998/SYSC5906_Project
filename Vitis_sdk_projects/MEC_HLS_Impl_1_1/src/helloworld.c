/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include <stdlib.h>
#include "xil_io.h"
#include "xil_mmu.h"
#include "xil_cache.h"
#include "xtime_l.h"
//#include <math.h>
//#include <time.h>

#define WG_SIZE_X 6
#define WG_SIZE_Y 5
#define WG_SIZE_Z 2

volatile char *extend_control = (volatile char*)0xA0010000;

volatile int *extend_wg_x   = (volatile int*)0xA0010010;
volatile int *extend_wg_y   = (volatile int*)0xA0010018;
volatile int *extend_wg_z   = (volatile int*)0xA0010020;
volatile int *extend_o_x    = (volatile int*)0xA0010028;
volatile int *extend_o_y    = (volatile int*)0xA0010030;
volatile int *extend_o_z    = (volatile int*)0xA0010038;

volatile int *extend_A      = (volatile int*)0xA0010040;
volatile int *extend_wa     = (volatile int*)0xA001004C;
volatile int *extend_ha     = (volatile int*)0xA0010054;
volatile int *extend_p      = (volatile int*)0xA001005C;
volatile int *extend_B      = (volatile int*)0xA0010064;
volatile int *extend_wb     = (volatile int*)0xA0010070;
volatile int *extend_hb     = (volatile int*)0xA0010078;

volatile char *create_control = (volatile char*)0xA0000000;

volatile int *create_wg_x   = (volatile int*)0xA0000010;
volatile int *create_wg_y   = (volatile int*)0xA0000018;
volatile int *create_wg_z   = (volatile int*)0xA0000020;
volatile int *create_o_x    = (volatile int*)0xA0000028;
volatile int *create_o_y    = (volatile int*)0xA0000030;
volatile int *create_o_z    = (volatile int*)0xA0000038;

volatile int *create_A      = (volatile int*)0xA0000040;
volatile int *create_wa     = (volatile int*)0xA000004C;
volatile int *create_ha     = (volatile int*)0xA0000054;
volatile int *create_B      = (volatile int*)0xA000005C;
volatile int *create_wb     = (volatile int*)0xA0000068;
volatile int *create_hb     = (volatile int*)0xA0000070;
volatile int *create_s      = (volatile int*)0xA0000078;
volatile int *create_k      = (volatile int*)0xA0000080;



volatile char *mul_control = (volatile char*)0xA0020000;

//volatile int *mul_wg_x   = (volatile int*)0xA0020010;
//volatile int *mul_wg_y   = (volatile int*)0xA0020018;
//volatile int *mul_wg_z   = (volatile int*)0xA0020020;
//volatile int *mul_o_x    = (volatile int*)0xA0020028;
//volatile int *mul_o_y    = (volatile int*)0xA0020030;
//volatile int *mul_o_z    = (volatile int*)0xA0020038;

//volatile int *mul_I      = (volatile int*)0xA0020040;
//volatile int *mul_wi     = (volatile int*)0xA002004C;
//volatile int *mul_hi     = (volatile int*)0xA0020054;
//volatile int *mul_ci     = (volatile int*)0xA002005C;
//volatile int *mul_K      = (volatile int*)0xA0020064;
//volatile int *mul_wk     = (volatile int*)0xA0020070;
//volatile int *mul_nk     = (volatile int*)0xA0020078;
//volatile int *mul_O      = (volatile int*)0xA0020084;
//volatile int *mul_wo     = (volatile int*)0xA002008C;
//volatile int *mul_ho     = (volatile int*)0xA0020094;
//volatile int *mul_co     = (volatile int*)0xA002009C;
//volatile int *mul_s      = (volatile int*)0xA00200A4;

//volatile int *mul_I      = (volatile int*)0xA0020040;
//volatile int *mul_wi     = (volatile int*)0xA002004C;
//volatile int *mul_hi     = (volatile int*)0xA0020054;
//volatile int *mul_ci     = (volatile int*)0xA002005C;
//volatile int *mul_wk     = (volatile int*)0xA0020064;
//volatile int *mul_nk     = (volatile int*)0xA002006c;
//volatile int *mul_O      = (volatile int*)0xA0020074;
//volatile int *mul_wo     = (volatile int*)0xA0020080;
//volatile int *mul_ho     = (volatile int*)0xA0020088;
//volatile int *mul_co     = (volatile int*)0xA0020090;
//volatile int *mul_s      = (volatile int*)0xA0020098;

volatile int *mul_I      = (volatile int*)0xA0020010;
volatile int *mul_wi     = (volatile int*)0xA002001C;
volatile int *mul_hi     = (volatile int*)0xA0020024;
volatile int *mul_ci     = (volatile int*)0xA002002C;
volatile int *mul_wk     = (volatile int*)0xA0020034;
volatile int *mul_nk     = (volatile int*)0xA002003c;
volatile int *mul_O      = (volatile int*)0xA0020044;
volatile int *mul_wo     = (volatile int*)0xA0020050;
volatile int *mul_ho     = (volatile int*)0xA0020058;
volatile int *mul_co     = (volatile int*)0xA0020060;
volatile int *mul_s      = (volatile int*)0xA0020068;


int c[60] =
{
    1, 4, 2, 2, 3, 2,
    1, 3, 1, 1, 2, 1,
    3, 1, 4, 2, 2, 3,
    1, 3, 2, 1, 4, 2,
    3, 1, 4, 2, 2, 2,

    1, 3, 1, 1, 3, 4,
    1, 3, 2, 1, 2, 2,
    1, 2, 1, 1, 2, 3,
    3, 1, 1, 2, 1, 3,
    1, 3 , 2, 2 , 1, 2
};

int kernel[36] =
{
	4, 2, 1,
	4, 2, 1,
	4, 3, 2,

	2, 3, 3,
	4, 4, 3,
	1, 4, 2,

	4, 3, 2,
	2, 3, 2,
	2, 3, 2,

	3, 2 ,4,
	2, 4, 1,
	3, 2, 4
};

void extend_matrix(int iw, int ih, int ic, int in, int ow, int oh, int padding)
{

	int oc = ic*in;

	// Set extend matrix FPGA parameters
	*extend_p= padding;
    *extend_wa = iw;
	*extend_ha = ih;
	*extend_wb = ow;
	*extend_hb = oh;

    *extend_B = (int*)malloc(sizeof(int)*ow*oh*oc);

    // Assign default values of 0
    int *bSet_ptr = *extend_B;
    for(int a = 0; a<(ow*oh*oc); a++)
    {
    	bSet_ptr[a] = 0;
    }

	// Assign input matrix
    *extend_A = (unsigned int)c;

    // Set work group start numbers and offsets
    *extend_wg_y = 0;
    *extend_wg_z = 0;
    *extend_wg_x = 0;
    *extend_o_x = 0;
    *extend_o_y = 0;
    *extend_o_z = 0;

	Xil_DCacheFlush();

    XTime extend_tStart, extend_tEnd;
    XTime_GetTime(&extend_tStart);
    *extend_control = *extend_control | 1;  /* start */

    /* waiting for hardware to report "done" */
    while (! ((*extend_control) & 2));
    XTime_GetTime(&extend_tEnd);

    printf("Extend matrix took %.2f us.\n", 1.0 * (extend_tEnd - extend_tStart) / (COUNTS_PER_SECOND/1000000));

    Xil_DCacheInvalidate();

    int *ptr;
    ptr = *extend_B;
	printf("Printing extend matrix: \n");
	for(int i = 0; i<(ow*oh*oc); i++)
    {
        printf("%d\n", ptr[i]);
    }
    printf("\n\n\n\n\n\n");
}

void create(int iw, int ih, int ic, int in, int s, int k)
{
	int create_ow = ih*k;
	int create_oh = ( iw-k )/s+1;
	int create_oc = ic*in;

    *create_A = *extend_B;
	*create_wa = iw;
	*create_ha = ih;

    *create_B = (int*)malloc(sizeof(int)*create_ow*create_oh*create_oc);

    int *bSet_ptr = *create_B;
    *bSet_ptr = *create_B;
    for(int a = 0; a<(create_ow*create_oh*create_oc); a++)
    {
    	bSet_ptr[a] = 0;
    }

	*create_wb = create_ow;
	*create_hb = create_oh;
	*create_s = s;
	*create_k = k;

	Xil_DCacheFlush();

	*create_wg_y = 0;
    *create_wg_z = 0;
    *create_wg_x = 0;

    *create_o_x = 0;
    *create_o_y = 0;
    *create_o_z = 0;

    XTime tStart, tEnd;
    XTime_GetTime(&tStart);
    *create_control = *create_control | 1;  /* start */

    /* waiting for hardware to report "done" */
    while (! ((*create_control) & 2));
    XTime_GetTime(&tEnd);
    print("DONE!\n\r");

    printf("Output took %.2f us.\n", 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000000));
    Xil_DCacheInvalidate();

    int *ptr;
    ptr = *create_B;
	printf("Create matrix start:\n");
	for(int i = 0; i<(create_ow*create_oh*create_oc); i++)
    {
        printf("%d\n", ptr[i]);
    }
	printf("Create matrix end :\n");
}

int* mul(int iw, int ih, int ic, int in, int fw, int fh, int fn, int ow, int oh, int stride)
{
	int oc = fn;
	int on = in;


	*mul_I = *create_B;
	*mul_wi = iw;
	*mul_hi = ih;
	*mul_ci = ic;
//	*mul_K = (unsigned int)kernel;
	*mul_wk = fw;
	*mul_nk = fn;
	*mul_O = (int*) malloc(sizeof(int)*ow*oh*oc*on);

	int *bSet_ptr = *mul_O;
    for(int a = 0; a<(ow*oh*oc*on); a++)
    {
    	bSet_ptr[a] = 0;
    }
	*mul_wo = ow;
	*mul_ho = oh;
	*mul_co = oc;
	*mul_s = stride;

	Xil_DCacheFlush();

//	*mul_wg_y = 0;
//    *mul_wg_z = 0;
//    *mul_wg_x = 0;
//
//    *mul_o_x = 0;
//    *mul_o_y = 0;
//    *mul_o_z = 0;

    XTime tStart, tEnd;
    XTime_GetTime(&tStart);
    *mul_control = *mul_control | 1;  /* start */

    /* waiting for hardware to report "done" */
    while (! ((*mul_control) & 2));
    XTime_GetTime(&tEnd);
    print("DONE!\n\r");

    printf("Output took %.2f us.\n", 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000000));

    Xil_DCacheInvalidate();

    int *ptr;
    ptr = *mul_O;
	printf("Mul matrix start: \n");
	for(int i = 0; i<(ow*oh*oc*on); i++)
    {
        printf("%d\n", ptr[i]);
    }
	printf("Mul matrix end: \n");
	return 0;
}

//  Extend input image, create MEC followed by MEC multiply
void conv(int iw, int ih, int ic, int in, int fw, int fh, int fn, int stride, int padding)
{
	int extend_ow, extend_oh;
	extend_ow = iw;
	extend_oh = ih;

	// If padding needs to be applied, call extend matrix and update extend matrix output image sizes
	if(padding!=0)
	{
        extend_ow = iw+2*padding;
        extend_oh = ih+2*padding;
        extend_matrix(iw, ih, ic, in, extend_ow, extend_oh, padding);
    }

	// Create the MEC matrix
	create(extend_ow, extend_oh, ic, in, stride, fw);

	int mul_ow = ( extend_ow-fw )/stride+1;
	int mul_oh = ( extend_oh-fh )/stride+1;

	// Perform convolution multiplication
	mul(extend_oh*fw, mul_ow, ic, in, fw, fh, fn, mul_ow, mul_oh, stride);
}

int main()
{
    init_platform();

    printf("Platform Initialization complete\n\r");

    // Set cache attributes
    Xil_SetTlbAttributes(extend_control, NORM_NONCACHE);
	Xil_SetTlbAttributes(create_control, NORM_NONCACHE);
	Xil_SetTlbAttributes(mul_control, NORM_NONCACHE);

	Xil_DCacheFlush();

    XTime prgrm_tStart, prgrm_tEnd;
    XTime_GetTime(&prgrm_tStart);

    conv(6, 5, 2, 1, 3, 3, 2, 1,1);

	XTime_GetTime(&prgrm_tEnd);
    print("MEC complete DONE!\n\r");

    printf("Output took %.2f us.\n", 1.0 * (prgrm_tEnd - prgrm_tStart) / (COUNTS_PER_SECOND/1000000));

	Xil_DCacheInvalidate();
    cleanup_platform();
    return 0;
}


/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

//#include <stdio.h>
//#include "platform.h"
//#include "xil_printf.h"
//#include <stdlib.h>
//#include "xil_io.h"
//#include "xil_mmu.h"
//#include "xil_cache.h"
//#include "xtime_l.h"
////#include <math.h>
////#include <time.h>
//
//#define WG_SIZE_X 6
//#define WG_SIZE_Y 5
//#define WG_SIZE_Z 2
//
//volatile char *control = (volatile char*)0xA0010000;
//
//volatile int *wg_x   = (volatile int*)0xA0010010;
//volatile int *wg_y   = (volatile int*)0xA0010018;
//volatile int *wg_z   = (volatile int*)0xA0010020;
//volatile int *o_x    = (volatile int*)0xA0010028;
//volatile int *o_y    = (volatile int*)0xA0010030;
//volatile int *o_z    = (volatile int*)0xA0010038;
//
//
//volatile int *A = (volatile int*)0xA0010040;
//volatile int *wa = (volatile int*)0xA001004C;
//volatile int *ha = (volatile int*)0xA0010054;
//volatile int *p = (volatile int*)0xA001005C;
//volatile int *B = (volatile int*)0xA0010064;
//volatile int *wb = (volatile int*)0xA0010070;
//volatile int *hb = (volatile int*)0xA0010078;
//
//
//
//
////0x00_A0010000
//
//int c[60] =
//{
//    1, 4, 2, 2, 3, 2,
//    1, 3, 1, 1, 2, 1,
//    3, 1, 4, 2, 2, 3,
//    1, 3, 2, 1, 4, 2,
//    3, 1, 4, 2, 2, 2,
//
//    1, 3, 1, 1, 3, 4,
//    1, 3, 2, 1, 2, 2,
//    1, 2, 1, 1, 2, 3,
//    3, 1, 1, 2, 1, 3,
//    1, 3 , 2, 2 , 1, 2
//};
//
//int kernel[36] =
//{
//	4, 2, 1,
//	4, 2, 1,
//	4, 3, 2,
//	2, 3, 3,
//	4, 4, 3,
//	1, 4, 2,
//	4, 3, 2,
//	2, 3, 2,
//	2, 3, 2,
//	3, 2 ,4,
//	2, 4, 1,
//	3, 2, 4
//};
//
//int main()
//{
//    init_platform();
//
//    print("Hello World\n\r");
//    //print("Successfully ran Hello World application");
//
//    //conv(c, 6, 5, 2,1, kernel, 3, 3, 2, 1,1);
//    //input = extend_matrix(input, iw, ih, ic, in, padding);
//
//    //volatile int _wb;
//    //volatile int _hb;
//
//    int iw=6, ih=5, ic=2, _p=1,in=1;
//	int ow = iw+2*_p;
//	int oh = ih+2*_p;
//	int oc = ic*in;
//
//	Xil_SetTlbAttributes(control, NORM_NONCACHE);
//
//	*p=_p;
//    *B = (int*)malloc(sizeof(int)*ow*oh*oc);
//    int *bSet_ptr = *B;
//    for(int a = 0; a<(ow*oh*oc); a++){
//    	bSet_ptr[a] = 0;
//    }
//    *wa = iw;
//	*ha = ih;
//	*wb = ow;
//	*hb = oh;
//
//    print("Input data ready \n\r");
//    Xil_DCacheFlush();
//
//    *A = (unsigned int)c;
//    /* set the workgroup identity */
//    *wg_y = 0;
//    *wg_z = 0;
//    *wg_x = 0;
//
//    *o_x = 0;
//    *o_y = 0;
//    *o_z = 0;
//
//    print("Status of control register: \n\r");
//    unsigned int con = *control;
//    for (int i = 0; i < 8; i ++) {
//        if (con & (1  << i) ) {
//            print("1");
//        } else {
//            print("0");
//        }
//    }
//    print("\n\r");
//
//    print("Starting OpenCL kernel execution\n\r");
//    XTime tStart, tEnd;
//
//    XTime_GetTime(&tStart);
//    *control = *control | 1;  /* start */
//
//    /* waiting for hardware to report "done" */
//    while (! ((*control) & 2));
//    XTime_GetTime(&tEnd);
//    print("DONE!\n\r");
//
////    double time_spent = (double) ( end-begin )/CLOCKS_PER_SEC;
//    printf("Output took %.2f us.\n",
//               1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000000));
//
//    Xil_DCacheInvalidate();
//
//    int *ptr;
//    ptr = *B;
//	printf("Extend matrix \n");
//	for(int i = 0; i<(ow*oh*oc); i++)
//    {
//        printf("%d\n", ptr[i]);
//    }
//
//	/**************************/
//	/*int stride = 1;
//	iw = iw+2*padding;
//	ih = ih+2*padding;
//
//	ow = ( iw-fw )/stride+1;
//	oh = ( ih-fh )/stride+1;
//*/
//
//    cleanup_platform();
//    return 0;
//}
