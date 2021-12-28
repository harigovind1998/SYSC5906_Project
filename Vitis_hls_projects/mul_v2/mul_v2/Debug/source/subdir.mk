################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_hls_projects/mul_v2/mul_v2.c 

OBJS += \
./source/mul_v2.o 

C_DEPS += \
./source/mul_v2.d 


# Each subdirectory must supply rules for building sources it contributes
source/mul_v2.o: C:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_hls_projects/mul_v2/mul_v2.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -DAESL_TB -D__llvm__ -D__llvm__ -IG:/dev_tools/xilinx/Vitis_HLS/2021.1/include/ap_sysc -IC:/University/Masters/Year_1/SYSC5906/SYSC5906_Project/Vitis_hls_projects/mul_v2 -IG:/dev_tools/xilinx/Vitis_HLS/2021.1/include/etc -IG:/dev_tools/xilinx/Vitis_HLS/2021.1/win64/tools/systemc/include -IG:/dev_tools/xilinx/Vitis_HLS/2021.1/include -IG:/dev_tools/xilinx/Vitis_HLS/2021.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


