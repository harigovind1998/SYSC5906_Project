#include <clc.h>
__kernel void __attribute__ ((reqd_work_group_size(21, 6, 2)))
creat_mec_matrix(__global int* A,
							   const unsigned int wa,
							   const unsigned int ha,
							   __global int* B,
							   const unsigned int wb,
							   const unsigned int hb,
							   const unsigned int s,
							   const unsigned int k)
{
	int tx = get_global_id(0);
	int ty = get_global_id(1);
	int tz = get_global_id(2);
	B[( tz*wb*hb+ty*wb )+tx] = A[( tz*wa*ha )+( ty*s )+( ( tx/k )*wa )+( tx%k )];
}
