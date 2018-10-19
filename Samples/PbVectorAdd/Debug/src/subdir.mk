################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/vectorAdd.cu 

OBJS += \
./src/vectorAdd.o 

CU_DEPS += \
./src/vectorAdd.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -I../../Common/ -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 -std=c++11 -gencode arch=compute_30,code=sm_30  -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -I../../Common/ -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 -std=c++11 --compile --relocatable-device-code=false -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


