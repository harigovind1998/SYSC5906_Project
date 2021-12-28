#include <clc.h>
//__kernel void __attribute__ ((reqd_work_group_size(6, 5, 2)))
//mul_v2(__global int* I,
//				  const unsigned int wi,
//				  const unsigned int hi,
//				  const unsigned int ci,
//				  const unsigned int wk,
//				  const unsigned int nk,
//				  __global int* O,
//				  const unsigned int wo,
//				  const unsigned int ho,
//				  const unsigned int co,
//				  const unsigned int s)
//{
//	int tx = get_global_id(0);
//	int ty = get_global_id(1);
//	int tz = get_global_id(2);
//	int filter[36] =
//		{
//			4, 2, 1,
//			4, 2, 1,
//			4, 3, 2,
//			2, 3, 3,
//			4, 4, 3,
//			1, 4, 2,
//			4, 3, 2,
//			2, 3, 2,
//			2, 3, 2,
//			3, 2 ,4,
//			2, 4, 1,
//			3, 2, 4
//		};
//	int value = 0;
//	for(int j = 0; j<18; j++)
//	{
//		int i = I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )];
//		int k = filter[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
//		value += i*k;
//	}
//	O[( tz*wo*ho )+( ty*wo )+tx] = value;
//}

__kernel
void mul_v2(__global int* Inp,
				  const unsigned int wi,
				  const unsigned int hi,
				  const unsigned int ci,
				  const unsigned int wk,
				  const unsigned int nk,
				  __global int* O,
				  const unsigned int wo,
				  const unsigned int ho,
				  const unsigned int co,
				  const unsigned int s)
{
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

	int I[152] = {0, 0, 0, 0, 1, 4, 0, 1, 3, 0, 3, 1, 0, 1, 3, 0, 3, 1, 0, 0, 0, 0, 0, 0, 1, 4, 2, 1, 3, 1, 3, 1, 4, 1, 3, 2, 3, 1, 4, 0, 0, 0, 0, 0, 0, 4, 2, 2, 3, 1, 1, 1, 4, 2, 3, 2, 1, 1, 4, 2, 0, 0, 0, 0, 0, 0, 2, 2, 3, 1, 1, 2, 4, 2, 2, 2, 1, 4, 4, 2, 2, 0, 0, 0, 0, 0, 0, 2, 3, 2, 1, 2, 1, 2, 2, 3, 1, 4, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 3, 2, 0, 2, 1, 0, 2, 3, 0, 4, 2, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 1, 3, 0, 1, 2, 0, 3, 1, 0, 1, 3, 0, 0, 0, 0, 0, 0, 1, 3, 1, 1, 3, 2, 1, 2, 1, 3, 1, 1, 1, 3, 2, 0, 0, 0, 0, 0, 0, 3, 1, 1, 3, 2, 1, 2, 1, 1, 1, 1, 2, 3, 2, 2, 0, 0, 0, 0, 0, 0, 1, 1, 3, 2, 1, 2, 1, 1, 2, 1, 2, 1, 2, 2, 1, 0, 0, 0, 0, 0, 0, 1, 3, 4, 1, 2, 2, 1, 2, 3, 2, 1, 3, 2, 1, 2, 0, 0, 0, 0, 0, 0, 3, 4, 0, 2, 2, 0, 2, 3, 0, 1, 3, 0, 1, 2, 0, 0, 0, 0};
	int value[60];
//		int tx = get_global_id(0);
//		int ty = get_global_id(1);
//		int tz = get_global_id(2);
//	mul_v2_label0:for(int tx = 0; tx < 6; tx++){
//		mul_v2_label1:for(int ty = 0; ty < 5; ty++){
//			mul_v2_label2:for(int tz = 0; tz < 2; tz++){
//				mul_v2_label3:for(int j = 0; j<18;j++){
//					O[( tz*wo*ho )+( ty*wo )+tx] += I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
////					O[( tz*wo*ho )+( ty*wo )+tx] = value[( tz*wo*ho )+( ty*wo )+tx];
//				}
//			}
//		}
//	  }
		mul_v2_label0:for(int tx = 0; tx < 6; tx++){
				mul_v2_label1:for(int ty = 0; ty < 5; ty++){
					mul_v2_label2:for(int tz = 0; tz < 2; tz++){

						O[( tz*wo*ho )+( ty*wo )+tx] =  I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 )*wi*hi )+( tx*wi )+( ty*s*wk )+( 0 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 0 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 1 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 1)] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 2 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 2 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 3 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 3)] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 4 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 4 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 5 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 5)] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 6 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 6 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 7 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 7 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 0 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 8 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0 )*wk*wk )+( 8 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 )*wi*hi )+( tx*wi )+( ty*s*wk )  +( 0 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1 )*wk*wk )+( 0 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 0 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1 )*wk*wk )+( 0 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 1 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1 )*wk*wk )+( 1)] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 2 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1 )*wk*wk )+( 2 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 3 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1 )*wk*wk )+( 3)] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 4 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1)*wk*wk )+( 4 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 5 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1)*wk*wk )+( 5 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 6 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1)*wk*wk )+( 6 )] +
						                                I[( ( tz/co )*( wi*hi*ci ) )+( ( 1 ) *wi*hi )+( tx*wi )+( ty*s*wk )+( 7 )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1)*wk*wk )+( 7)];
					}
				}
		}
}



//
//
//
//__kernel void __attribute__ ((reqd_work_group_size(6, 5, 2)))
//mul_v3(__global int* I,
//				  const unsigned int wi,
//				  const unsigned int hi,
//				  const unsigned int ci,
//				  const unsigned int wk,
//				  const unsigned int nk,
//				  __global int* O,
//				  const unsigned int wo,
//				  const unsigned int ho,
//				  const unsigned int co,
//				  const unsigned int s)
//{
//	int tx = get_global_id(0);
//	int ty = get_global_id(1);
//	int tz = get_global_id(2);
//	int value[60];
//
//	int filter[36] =
//	{
//		4, 2, 1,
//		4, 2, 1,
//		4, 3, 2,
//		2, 3, 3,
//		4, 4, 3,
//		1, 4, 2,
//		4, 3, 2,
//		2, 3, 2,
//		2, 3, 2,
//		3, 2 ,4,
//		2, 4, 1,
//		3, 2, 4
//	};
//
//
//mul_v2_label0:	for(int j = 0; j<18; j++)
//	{
//#pragma HLS LOOP_FLATTEN
////		int i = I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )];
////		int k =  filter[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
////		O[( tz*wo*ho )+( ty*wo )+tx] += i*k;
//		O[( tz*wo*ho )+( ty*wo )+tx] += I[( ( tz/co )*( wi*hi*ci ) )+( ( j/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( j%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( j/( wk*wk ) )*wk*wk )+( j%( wk*wk ) )];
//	}
//
////	O[( tz*wo*ho )+( ty*wo )+tx] = I[( ( tz/co )*( wi*hi*ci ) )+( ( 0/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 0%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 0/( wk*wk ) )*wk*wk )+( 0%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 1/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 1%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 1/( wk*wk ) )*wk*wk )+( 1%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 2/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 2%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 2/( wk*wk ) )*wk*wk )+( 2%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 3/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 3%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 3/( wk*wk ) )*wk*wk )+( 3%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 4/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 4%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 4/( wk*wk ) )*wk*wk )+( 4%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 5/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 5%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 5/( wk*wk ) )*wk*wk )+( 5%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 6/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 6%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 6/( wk*wk ) )*wk*wk )+( 6%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 7/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 7%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 7/( wk*wk ) )*wk*wk )+( 7%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 8/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 8%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 8/( wk*wk ) )*wk*wk )+( 8%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 9/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 9%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 9/( wk*wk ) )*wk*wk )+( 9%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 10/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 10%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 10/( wk*wk ) )*wk*wk )+( 10%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 11/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 11%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 11/( wk*wk ) )*wk*wk )+( 11%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 12/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 12%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 12/( wk*wk ) )*wk*wk )+( 12%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 13/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 13%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 13/( wk*wk ) )*wk*wk )+( 13%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 14/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 14%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 14/( wk*wk ) )*wk*wk )+( 14%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 15/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 15%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 15/( wk*wk ) )*wk*wk )+( 15%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 16/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 16%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 16/( wk*wk ) )*wk*wk )+( 16%( wk*wk ) )] +
////	I[( ( tz/co )*( wi*hi*ci ) )+( ( 17/( wk*wk ) )*wi*hi )+( tx*wi )+( ty*s*wk )+( 17%( wk*wk ) )] * filter[( ( tz%co )*wk*wk*ci )+( ( 17/( wk*wk ) )*wk*wk )+( 17%( wk*wk ) )];
//
//
//
//
////	O[( tz*wo*ho )+( ty*wo )+tx] = value[( tz*wo*ho )+( ty*wo )+tx];
//}
