################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../src/cppIntegration.cu 

CPP_SRCS += \
../src/cppIntegration_gold.cpp \
../src/main.cpp 

OBJS += \
./src/cppIntegration.o \
./src/cppIntegration_gold.o \
./src/main.o 

CU_DEPS += \
./src/cppIntegration.d 

CPP_DEPS += \
./src/cppIntegration_gold.d \
./src/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-9.1/bin/nvcc -I"/usr/local/cuda-9.1/samples/0_Simple" -I"/usr/local/cuda-9.1/samples/common/inc" -I"/media/xnext/DATA/git_repos/code-playground/cuda/PbCppIntegration" -O3 -gencode arch=compute_30,code=sm_30 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-9.1/bin/nvcc -I"/usr/local/cuda-9.1/samples/0_Simple" -I"/usr/local/cuda-9.1/samples/common/inc" -I"/media/xnext/DATA/git_repos/code-playground/cuda/PbCppIntegration" -O3 --compile --relocatable-device-code=false -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30 -m64  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-9.1/bin/nvcc -I"/usr/local/cuda-9.1/samples/0_Simple" -I"/usr/local/cuda-9.1/samples/common/inc" -I"/media/xnext/DATA/git_repos/code-playground/cuda/PbCppIntegration" -O3 -gencode arch=compute_30,code=sm_30 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-9.1/bin/nvcc -I"/usr/local/cuda-9.1/samples/0_Simple" -I"/usr/local/cuda-9.1/samples/common/inc" -I"/media/xnext/DATA/git_repos/code-playground/cuda/PbCppIntegration" -O3 --compile -m64  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


