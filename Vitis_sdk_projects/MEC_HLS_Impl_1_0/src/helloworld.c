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

volatile char *control = (volatile char*)0xA0010000;

volatile int *wg_x   = (volatile int*)0xA0010010;
volatile int *wg_y   = (volatile int*)0xA0010018;
volatile int *wg_z   = (volatile int*)0xA0010020;
volatile int *o_x    = (volatile int*)0xA0010028;
volatile int *o_y    = (volatile int*)0xA0010030;
volatile int *o_z    = (volatile int*)0xA0010038;


volatile int *A = (volatile int*)0xA0010040;
volatile int *wa = (volatile int*)0xA001004C;
volatile int *ha = (volatile int*)0xA0010054;
volatile int *p = (volatile int*)0xA001005C;
volatile int *B = (volatile int*)0xA0010064;
volatile int *wb = (volatile int*)0xA0010070;
volatile int *hb = (volatile int*)0xA0010078;


//0x00_A0010000

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

int main()
{
    init_platform();

    print("Hello World\n\r");
    //print("Successfully ran Hello World application");

    //conv(c, 6, 5, 2,1, kernel, 3, 3, 2, 1,1);
    //input = extend_matrix(input, iw, ih, ic, in, padding);

    //volatile int _wb;
    //volatile int _hb;

    int iw=6, ih=5, ic=2, _p=1,in=1;
	int ow = iw+2*_p;
	int oh = ih+2*_p;
	int oc = ic*in;

	Xil_SetTlbAttributes(control, NORM_NONCACHE);

	*p=_p;
    *B = (int*)malloc(sizeof(int)*ow*oh*oc);
    int *bSet_ptr = *B;
    for(int a = 0; a<(ow*oh*oc); a++){
    	bSet_ptr[a] = 0;
    }
    *wa = iw;
	*ha = ih;
	*wb = ow;
	*hb = oh;

    print("Input data ready \n\r");
    Xil_DCacheFlush();

    *A = (unsigned int)c;
    /* set the workgroup identity */
    *wg_y = 0;
    *wg_z = 0;
    *wg_x = 0;

    *o_x = 0;
    *o_y = 0;
    *o_z = 0;

    print("Status of control register: \n\r");
    unsigned int con = *control;
    for (int i = 0; i < 8; i ++) {
        if (con & (1  << i) ) {
            print("1");
        } else {
            print("0");
        }
    }
    print("\n\r");

    print("Starting OpenCL kernel execution\n\r");
    XTime tStart, tEnd;

    XTime_GetTime(&tStart);
    *control = *control | 1;  /* start */

    /* waiting for hardware to report "done" */
    while (! ((*control) & 2));
    XTime_GetTime(&tEnd);
    print("DONE!\n\r");

//    double time_spent = (double) ( end-begin )/CLOCKS_PER_SEC;
    printf("Output took %.2f us.\n",
               1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND/1000000));

    Xil_DCacheInvalidate();

    int *ptr;
    ptr = *B;
	printf("Extend matrix \n");
	for(int i = 0; i<(ow*oh*oc); i++)
    {
        printf("%d\n", ptr[i]);
    }

	/**************************/
	/*int stride = 1;
	iw = iw+2*padding;
	ih = ih+2*padding;

	ow = ( iw-fw )/stride+1;
	oh = ( ih-fh )/stride+1;
*/

    cleanup_platform();
    return 0;
}
