################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/core_riscv.c 

C_DEPS += \
./Core/core_riscv.d 

OBJS += \
./Core/core_riscv.o 


# Each subdirectory must supply rules for building sources it contributes
Core/%.o: ../Core/%.c
	@	@	riscv-none-elf-gcc -march=rv32imafcxw -mabi=ilp32f -mtune=rocket -mcmodel=medany -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion  -g -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Debug" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Core" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\User" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Peripheral\inc" -std=gnu17 -Wmissing-prototypes -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

