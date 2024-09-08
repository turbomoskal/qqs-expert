################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Debug/debug.c 

C_DEPS += \
./Debug/debug.d 

OBJS += \
./Debug/debug.o 


# Each subdirectory must supply rules for building sources it contributes
Debug/%.o: ../Debug/%.c
	@	@	riscv-none-elf-gcc -march=rv32imafcxw -mabi=ilp32f -mtune=rocket -mcmodel=medany -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion  -g -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Debug" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Core" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\User" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Peripheral\inc" -std=gnu17 -Wmissing-prototypes -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

