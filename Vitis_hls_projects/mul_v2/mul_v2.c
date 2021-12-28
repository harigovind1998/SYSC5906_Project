#include <stdio.h>
#include <string.h>

void mul_v2(volatile int *I, int _wi, int _hi, int _ci, int _wk, int _nk, int * O, int _wo, int _ho, int _co, int _s){

#pragma HLS INTERFACE mode=s_axilite port=I
#pragma HLS INTERFACE mode=s_axilite port=_wi
#pragma HLS INTERFACE mode=s_axilite port=_hi
#pragma HLS INTERFACE mode=s_axilite port=_ci
#pragma HLS INTERFACE mode=s_axilite port=_wk
#pragma HLS INTERFACE mode=s_axilite port=_nk
#pragma HLS INTERFACE mode=m_axi port=O depth=60
#pragma HLS INTERFACE mode=s_axilite port=_wo
#pragma HLS INTERFACE mode=s_axilite port=_ho
#pragma HLS INTERFACE mode=s_axilite port=_co
#pragma HLS INTERFACE mode=s_axilite port=_s

	int filter[36] =
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
  int value[60];
  int input_buff[252];
  int wi, hi, ci, wk, nk, wo, ho, co, s;
  wi = 21;
  hi = 6;
  ci = 2;
  wk = 3;
  nk = 2;
  wo = 6;
  ho = 5;
  co = 2;
  s = 1;

  //memcpy creates a burst access to memory
  //multiple calls of memcpy cannot be pipelined and will be scheduled sequentially
  //memcpy requires a local buffer to store the results of the memory transaction
  memcpy(input_buff,(const int*)I,252*sizeof(int));


  for(int tx = 0; tx < 6; tx++){
	for(int ty = 0; ty < 5; ty++){
		for(int tz = 0; tz < 2; tz++){
			for(int j = 0; j<18;j++){
				value[( tz*wo*ho )+( ty*wo )+tx] += I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
			}
		}
	}
  }

  memcpy((int *)O,value,50*sizeof(int));
}
