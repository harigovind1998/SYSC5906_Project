# FPGA MEC Implementation

# File structure
-> Vitis_hls_projects
    -> creat_mec_matrix
        -> vitis HLS project for the MEC create matrix kernel
    -> extend_matrix
        -> Vitis HLS project for the matrix padder kernel
    -> mul_mec_matrix
        -> Vitis HLS project for the first version of the matrix multiplier. The final product uses mul_v2, and not this implementation.
    -> mul_v2
        -> Vitis HLS project for the final version of the matrix multipler. The final product uses this multiplier.
-> Vitis_sdk_projects
    -> MEC_HLS_Impl_1_0_system
        -> Trial SDK project. Not used for testing
    -> MEC_HLS_Impl_1_1_system
        -> SDK project, contains the functionality for timing analysis
    -> MEC_HLS_Extend_v1_0
        -> Platform project with only the Extend kernel
    -> MEC_HLS_impl_V1_0
        -> Platform project (unused, incorrent kernel implementation) 
    -> MEC_HLS_impl_V1_1
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_2
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_3
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_4
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_5
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_6
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_7
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_8
        -> Platform project (unused, incorrent kernel implementation)
    -> MEC_HLS_impl_V1_9 
        -> Platform project (used)
-> Vivado_projects
    -> MEC_Create_rtl_impl
        -> Raw RTL implementation of the MEC create kernel. NOT COMPLETE, requires testing and additional changes
    -> MEC_HLS_Extend
        -> Trial Vivado project, only contains the extend kernel
    -> MEC_HLS_implementation
        -> Final product containing all three kernels

# SYSC5906_Project