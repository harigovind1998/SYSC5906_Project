#include <clc.h>
__kernel void __attribute__ ((reqd_work_group_size(6, 5, 2)))
mul_mec_matrix(__global int* I,
				  const unsigned int wi,
				  const unsigned int hi,
				  const unsigned int ci,
				  __global int* K,
				  const unsigned int wk,
				  const unsigned int nk,
				  __global int* O,
				  const unsigned int wo,
				  const unsigned int ho,
				  const unsigned int co,
				  const unsigned int s)
{
	int tx = get_global_id(0);
	int ty = get_global_id(1);
	int tz = get_global_id(2);
	int value = 0;
	for(int j = 0; j<wk*wk*ci; j++)
	{
		int i = I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )];
		int k = K[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
		value += i*k;
	}
	O[( tz*wo*ho )+( ty*wo )+tx] = value;
}
