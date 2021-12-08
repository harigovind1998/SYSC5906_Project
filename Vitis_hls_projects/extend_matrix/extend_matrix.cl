#include <clc.h>
__kernel void __attribute__ ((reqd_work_group_size(6, 5, 2)))
extend_matrix(__global int* A,
		const unsigned int wa,
		const unsigned int ha,
		const unsigned int p,
		__global int* B,
		const unsigned int wb,
		const unsigned int hb)
{
int tx = get_global_id(0);
int ty = get_global_id(1);
int tz = get_global_id(2);
B[( tz*wb*hb+ty*wb )+tx+p*wb+p] = A[( tz*wa*ha+ty*wa )+tx];
}
