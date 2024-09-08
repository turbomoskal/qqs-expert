################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include Core/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
MasterController.hex \

SECONDARY_LIST += \
MasterController.lst \

SECONDARY_SIZE += \
MasterController.siz \


# All Target
all: MasterController.elf secondary-outputs

# Tool invocations
MasterController.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-elf-g++ -march=rv32imafcxw -mabi=ilp32f -mtune=rocket -mcmodel=medany -msmall-data-limit=8 -msave-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fsingle-precision-constant -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion  -g -T Link.ld -nostartfiles -Xlinker --gc-sections -L"../LD" -Wl,-Map,"MasterController.map" --specs=nano.specs -u _printf_float -u _scanf_float --specs=nosys.specs -o "MasterController.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
MasterController.hex: MasterController.elf
	@	riscv-none-elf-objcopy -O ihex "MasterController.elf"  "MasterController.hex"
	@	@
MasterController.lst: MasterController.elf
	@	riscv-none-elf-objdump --source --all-headers --demangle --disassemble --syms -M xw "MasterController.elf" > "MasterController.lst"
	@	@
MasterController.siz: MasterController.elf
	@	riscv-none-elf-size --format=berkeley --totals "MasterController.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(S_DEPS)$(C_DEPS)$(CC_DEPS)$(ASM_UPPER_DEPS)$(C++_DEPS)$(OBJS)$(CXX_DEPS)$(SECONDARY_FLASH)$(ASM_DEPS)$(S_UPPER_DEPS)$(CPP_DEPS) MasterController.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
