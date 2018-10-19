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
	/usr/local/cuda-10.0/bin/nvcc -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 -gencode arch=compute_30,code=sm_30 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_30,code=compute_30 -gencode arch=compute_30,code=sm_30 -m64  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.0/bin/nvcc -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 -gencode arch=compute_30,code=sm_30 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.0/bin/nvcc -I/media/xnext/DATA/git_repos/cuda-samples/Common -G -g -O0 --compile -m64  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


