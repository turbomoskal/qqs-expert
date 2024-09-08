################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../User/main.cpp 

C_SRCS += \
../User/ch32v30x_it.c \
../User/system_ch32v30x.c 

C_DEPS += \
./User/ch32v30x_it.d \
./User/system_ch32v30x.d 

OBJS += \
./User/ch32v30x_it.o \
./User/main.o \
./User/system_ch32v30x.o 

CPP_DEPS += \
./User/main.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-elf-gcc -march=rv32imafcxw -mabi=ilp32f -mtune=rocket -mcmodel=medany -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion  -g -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Debug" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Core" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\User" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Peripheral\inc" -std=gnu17 -Wmissing-prototypes -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
User/%.o: ../User/%.cpp
	@	@	riscv-none-elf-g++ -march=rv32imafcxw -mabi=ilp32f -mtune=rocket -mcmodel=medany -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion  -g -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Debug" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Core" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\User" -I"C:\Users\localhost\Documents\turbomoskal-repo\qqexpert\firmware\MasterController\Peripheral\inc" -std=c++2a -fabi-version=0 -Wabi -Wctor-dtor-privacy -Wnoexcept -Wa,-adhlns="$@.lst" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

