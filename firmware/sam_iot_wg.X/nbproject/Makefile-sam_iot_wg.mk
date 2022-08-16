#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-sam_iot_wg.mk)" "nbproject/Makefile-local-sam_iot_wg.mk"
include nbproject/Makefile-local-sam_iot_wg.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_iot_wg
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c ../src/config/sam_iot_wg/system/command/src/sys_command.c ../src/main.c ../src/config/sam_iot_wg/initialization.c ../src/config/sam_iot_wg/interrupts.c ../src/config/sam_iot_wg/exceptions.c ../src/config/sam_iot_wg/stdio/xc32_monitor.c ../src/config/sam_iot_wg/peripheral/port/plib_port.c ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c ../src/config/sam_iot_wg/startup_xc32.c ../src/config/sam_iot_wg/libc_syscalls.c ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c ../src/config/sam_iot_wg/system/time/src/sys_time.c ../src/config/sam_iot_wg/system/console/src/sys_console.c ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c ../src/config/sam_iot_wg/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/config/sam_iot_wg/system/int/src/sys_int.c ../src/config/sam_iot_wg/system/dma/sys_dma.c ../src/config/sam_iot_wg/system/reset/sys_reset.c ../src/config/sam_iot_wg/osal/osal_freertos.c ../src/config/sam_iot_wg/tasks.c ../src/app1.c ../src/app2.c ../src/app3.c ../src/app4.c ../src/config/sam_iot_wg/bsp/bsp.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o ${OBJECTDIR}/_ext/1244050276/plib_evsys.o ${OBJECTDIR}/_ext/2046376005/sys_command.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/465030004/initialization.o ${OBJECTDIR}/_ext/465030004/interrupts.o ${OBJECTDIR}/_ext/465030004/exceptions.o ${OBJECTDIR}/_ext/377813038/xc32_monitor.o ${OBJECTDIR}/_ext/733188249/plib_port.o ${OBJECTDIR}/_ext/1241900790/plib_clock.o ${OBJECTDIR}/_ext/733135098/plib_nvic.o ${OBJECTDIR}/_ext/465030004/startup_xc32.o ${OBJECTDIR}/_ext/465030004/libc_syscalls.o ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o ${OBJECTDIR}/_ext/993467784/plib_adc.o ${OBJECTDIR}/_ext/993471783/plib_eic.o ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o ${OBJECTDIR}/_ext/1769067385/plib_tc3.o ${OBJECTDIR}/_ext/1234218265/sys_time.o ${OBJECTDIR}/_ext/1791879111/sys_console.o ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o ${OBJECTDIR}/_ext/465030004/freertos_hooks.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1479994401/sys_int.o ${OBJECTDIR}/_ext/315079315/sys_dma.o ${OBJECTDIR}/_ext/2138744790/sys_reset.o ${OBJECTDIR}/_ext/819216694/osal_freertos.o ${OBJECTDIR}/_ext/465030004/tasks.o ${OBJECTDIR}/_ext/1360937237/app1.o ${OBJECTDIR}/_ext/1360937237/app2.o ${OBJECTDIR}/_ext/1360937237/app3.o ${OBJECTDIR}/_ext/1360937237/app4.o ${OBJECTDIR}/_ext/1689006812/bsp.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1244050276/plib_evsys.o.d ${OBJECTDIR}/_ext/2046376005/sys_command.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/465030004/initialization.o.d ${OBJECTDIR}/_ext/465030004/interrupts.o.d ${OBJECTDIR}/_ext/465030004/exceptions.o.d ${OBJECTDIR}/_ext/377813038/xc32_monitor.o.d ${OBJECTDIR}/_ext/733188249/plib_port.o.d ${OBJECTDIR}/_ext/1241900790/plib_clock.o.d ${OBJECTDIR}/_ext/733135098/plib_nvic.o.d ${OBJECTDIR}/_ext/465030004/startup_xc32.o.d ${OBJECTDIR}/_ext/465030004/libc_syscalls.o.d ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o.d ${OBJECTDIR}/_ext/993467784/plib_adc.o.d ${OBJECTDIR}/_ext/993471783/plib_eic.o.d ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o.d ${OBJECTDIR}/_ext/1769067385/plib_tc3.o.d ${OBJECTDIR}/_ext/1234218265/sys_time.o.d ${OBJECTDIR}/_ext/1791879111/sys_console.o.d ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o.d ${OBJECTDIR}/_ext/465030004/freertos_hooks.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1665200909/heap_1.o.d ${OBJECTDIR}/_ext/1624415188/port.o.d ${OBJECTDIR}/_ext/1479994401/sys_int.o.d ${OBJECTDIR}/_ext/315079315/sys_dma.o.d ${OBJECTDIR}/_ext/2138744790/sys_reset.o.d ${OBJECTDIR}/_ext/819216694/osal_freertos.o.d ${OBJECTDIR}/_ext/465030004/tasks.o.d ${OBJECTDIR}/_ext/1360937237/app1.o.d ${OBJECTDIR}/_ext/1360937237/app2.o.d ${OBJECTDIR}/_ext/1360937237/app3.o.d ${OBJECTDIR}/_ext/1360937237/app4.o.d ${OBJECTDIR}/_ext/1689006812/bsp.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o ${OBJECTDIR}/_ext/1244050276/plib_evsys.o ${OBJECTDIR}/_ext/2046376005/sys_command.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/465030004/initialization.o ${OBJECTDIR}/_ext/465030004/interrupts.o ${OBJECTDIR}/_ext/465030004/exceptions.o ${OBJECTDIR}/_ext/377813038/xc32_monitor.o ${OBJECTDIR}/_ext/733188249/plib_port.o ${OBJECTDIR}/_ext/1241900790/plib_clock.o ${OBJECTDIR}/_ext/733135098/plib_nvic.o ${OBJECTDIR}/_ext/465030004/startup_xc32.o ${OBJECTDIR}/_ext/465030004/libc_syscalls.o ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o ${OBJECTDIR}/_ext/993467784/plib_adc.o ${OBJECTDIR}/_ext/993471783/plib_eic.o ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o ${OBJECTDIR}/_ext/1769067385/plib_tc3.o ${OBJECTDIR}/_ext/1234218265/sys_time.o ${OBJECTDIR}/_ext/1791879111/sys_console.o ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o ${OBJECTDIR}/_ext/465030004/freertos_hooks.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1665200909/heap_1.o ${OBJECTDIR}/_ext/1624415188/port.o ${OBJECTDIR}/_ext/1479994401/sys_int.o ${OBJECTDIR}/_ext/315079315/sys_dma.o ${OBJECTDIR}/_ext/2138744790/sys_reset.o ${OBJECTDIR}/_ext/819216694/osal_freertos.o ${OBJECTDIR}/_ext/465030004/tasks.o ${OBJECTDIR}/_ext/1360937237/app1.o ${OBJECTDIR}/_ext/1360937237/app2.o ${OBJECTDIR}/_ext/1360937237/app3.o ${OBJECTDIR}/_ext/1360937237/app4.o ${OBJECTDIR}/_ext/1689006812/bsp.o

# Source Files
SOURCEFILES=../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c ../src/config/sam_iot_wg/system/command/src/sys_command.c ../src/main.c ../src/config/sam_iot_wg/initialization.c ../src/config/sam_iot_wg/interrupts.c ../src/config/sam_iot_wg/exceptions.c ../src/config/sam_iot_wg/stdio/xc32_monitor.c ../src/config/sam_iot_wg/peripheral/port/plib_port.c ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c ../src/config/sam_iot_wg/startup_xc32.c ../src/config/sam_iot_wg/libc_syscalls.c ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c ../src/config/sam_iot_wg/system/time/src/sys_time.c ../src/config/sam_iot_wg/system/console/src/sys_console.c ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c ../src/config/sam_iot_wg/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c ../src/config/sam_iot_wg/system/int/src/sys_int.c ../src/config/sam_iot_wg/system/dma/sys_dma.c ../src/config/sam_iot_wg/system/reset/sys_reset.c ../src/config/sam_iot_wg/osal/osal_freertos.c ../src/config/sam_iot_wg/tasks.c ../src/app1.c ../src/app2.c ../src/app3.c ../src/app4.c ../src/config/sam_iot_wg/bsp/bsp.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-sam_iot_wg.mk ${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21G18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_iot_wg\ATSAMD21G18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o: ../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_iot_wg/4c018eb8f35accd46e055f6bff911860c20bcfe5 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/922813560" 
	@${RM} ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o ../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1244050276/plib_evsys.o: ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_iot_wg/c3cb05511be7daa1b514bdffa496850bd3471311 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1244050276" 
	@${RM} ${OBJECTDIR}/_ext/1244050276/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1244050276/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1244050276/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1244050276/plib_evsys.o ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046376005/sys_command.o: ../src/config/sam_iot_wg/system/command/src/sys_command.c  .generated_files/flags/sam_iot_wg/ceddefd1b4ade16c87a299e916102ed708fa43f7 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/2046376005" 
	@${RM} ${OBJECTDIR}/_ext/2046376005/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046376005/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046376005/sys_command.o.d" -o ${OBJECTDIR}/_ext/2046376005/sys_command.o ../src/config/sam_iot_wg/system/command/src/sys_command.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_iot_wg/d102465b8d4d710890ad4a15a087b10d4c2b9424 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/initialization.o: ../src/config/sam_iot_wg/initialization.c  .generated_files/flags/sam_iot_wg/ad24b7ee368ba119536666090d106ac7a585959 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/initialization.o.d" -o ${OBJECTDIR}/_ext/465030004/initialization.o ../src/config/sam_iot_wg/initialization.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/interrupts.o: ../src/config/sam_iot_wg/interrupts.c  .generated_files/flags/sam_iot_wg/3d0061b489e7db8da8dd5bf049221e165301a0df .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/interrupts.o.d" -o ${OBJECTDIR}/_ext/465030004/interrupts.o ../src/config/sam_iot_wg/interrupts.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/exceptions.o: ../src/config/sam_iot_wg/exceptions.c  .generated_files/flags/sam_iot_wg/33044d675f875ee9249c7fdb6fa15a6f33a19957 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/exceptions.o.d" -o ${OBJECTDIR}/_ext/465030004/exceptions.o ../src/config/sam_iot_wg/exceptions.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/377813038/xc32_monitor.o: ../src/config/sam_iot_wg/stdio/xc32_monitor.c  .generated_files/flags/sam_iot_wg/a7d550d50c9ab1df3de5ecdd5355d0883a315b3 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/377813038" 
	@${RM} ${OBJECTDIR}/_ext/377813038/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/377813038/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377813038/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/377813038/xc32_monitor.o ../src/config/sam_iot_wg/stdio/xc32_monitor.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/733188249/plib_port.o: ../src/config/sam_iot_wg/peripheral/port/plib_port.c  .generated_files/flags/sam_iot_wg/11ee88f1d0d768882053f2d68b116e21755e6712 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/733188249" 
	@${RM} ${OBJECTDIR}/_ext/733188249/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/733188249/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/733188249/plib_port.o.d" -o ${OBJECTDIR}/_ext/733188249/plib_port.o ../src/config/sam_iot_wg/peripheral/port/plib_port.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1241900790/plib_clock.o: ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c  .generated_files/flags/sam_iot_wg/2f9de3762f8c59e9cca5c3c17a4381039f4c6866 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1241900790" 
	@${RM} ${OBJECTDIR}/_ext/1241900790/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1241900790/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1241900790/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1241900790/plib_clock.o ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/733135098/plib_nvic.o: ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_iot_wg/61e50ec4332a3b206c8d237ad3132782330ad72d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/733135098" 
	@${RM} ${OBJECTDIR}/_ext/733135098/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/733135098/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/733135098/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/733135098/plib_nvic.o ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/startup_xc32.o: ../src/config/sam_iot_wg/startup_xc32.c  .generated_files/flags/sam_iot_wg/d6f6371b5cd9207bc00f3fea47b6f9610461349f .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/465030004/startup_xc32.o ../src/config/sam_iot_wg/startup_xc32.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/libc_syscalls.o: ../src/config/sam_iot_wg/libc_syscalls.c  .generated_files/flags/sam_iot_wg/58b928e9b2bfb23d88e8765c304184c315bc3b6 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/465030004/libc_syscalls.o ../src/config/sam_iot_wg/libc_syscalls.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o: ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/sam_iot_wg/642b8d379c62e79d907181b6bd798ded0547913f .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/958951599" 
	@${RM} ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993467784/plib_adc.o: ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c  .generated_files/flags/sam_iot_wg/1476858201e5fd9c0280094f66bcb7a9c1d24d6a .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993467784" 
	@${RM} ${OBJECTDIR}/_ext/993467784/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993467784/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993467784/plib_adc.o.d" -o ${OBJECTDIR}/_ext/993467784/plib_adc.o ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993471783/plib_eic.o: ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c  .generated_files/flags/sam_iot_wg/e17c73f4b7ed2f8dd343bfecf1c1a012aeaf185f .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993471783" 
	@${RM} ${OBJECTDIR}/_ext/993471783/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993471783/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993471783/plib_eic.o.d" -o ${OBJECTDIR}/_ext/993471783/plib_eic.o ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o: ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c  .generated_files/flags/sam_iot_wg/8d57032e3a6b51a860203d0bfd90217e134119c7 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993484617" 
	@${RM} ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o.d" -o ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1769067385/plib_tc3.o: ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_iot_wg/cee58f098ba9a685e8b4ccb1c18eab1105fa2339 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1769067385" 
	@${RM} ${OBJECTDIR}/_ext/1769067385/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769067385/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1769067385/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1769067385/plib_tc3.o ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1234218265/sys_time.o: ../src/config/sam_iot_wg/system/time/src/sys_time.c  .generated_files/flags/sam_iot_wg/789d72557ddef08fef35d6a5cdbe74f84b44246d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1234218265" 
	@${RM} ${OBJECTDIR}/_ext/1234218265/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1234218265/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1234218265/sys_time.o.d" -o ${OBJECTDIR}/_ext/1234218265/sys_time.o ../src/config/sam_iot_wg/system/time/src/sys_time.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1791879111/sys_console.o: ../src/config/sam_iot_wg/system/console/src/sys_console.c  .generated_files/flags/sam_iot_wg/85455ea9fc491f75a62e6acbefee156590d21dc7 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1791879111" 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1791879111/sys_console.o.d" -o ${OBJECTDIR}/_ext/1791879111/sys_console.o ../src/config/sam_iot_wg/system/console/src/sys_console.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1791879111/sys_console_uart.o: ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c  .generated_files/flags/sam_iot_wg/a98d38f1b85f58b0145b23e47829763312f1aa05 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1791879111" 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1791879111/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/freertos_hooks.o: ../src/config/sam_iot_wg/freertos_hooks.c  .generated_files/flags/sam_iot_wg/2f65b918151a9a049862f970fe539fe9d973590c .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/465030004/freertos_hooks.o ../src/config/sam_iot_wg/freertos_hooks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_iot_wg/7f8768a1f820280f6def109fa5f0aa8132721927 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_iot_wg/da58a6f19c055a0461e9a01d53387c7060713cac .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_iot_wg/b9f814f6dde6cfaf00536f7afaf39292bef4d553 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_iot_wg/f755319810d6554cd31888081e1eea7a31b47e50 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_iot_wg/fb825f82191620ac9ccd019483c7a96955dff52b .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_iot_wg/37de7f2f9f55a2d6196758c1c2e1fc37e9f11fb2 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_iot_wg/4a7ac2a2b2845f12d2811f527be700c291b89297 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_iot_wg/5e1b673fe198943dc010efc3f463572ce2f33d71 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/sam_iot_wg/98b3eeebfaf31759acdb384eb1db255f5b126dc .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1479994401/sys_int.o: ../src/config/sam_iot_wg/system/int/src/sys_int.c  .generated_files/flags/sam_iot_wg/f7140d792f0dea83026a341644222402a256d8e3 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1479994401" 
	@${RM} ${OBJECTDIR}/_ext/1479994401/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1479994401/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1479994401/sys_int.o.d" -o ${OBJECTDIR}/_ext/1479994401/sys_int.o ../src/config/sam_iot_wg/system/int/src/sys_int.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/315079315/sys_dma.o: ../src/config/sam_iot_wg/system/dma/sys_dma.c  .generated_files/flags/sam_iot_wg/1b7af1ce290c0f4244e95b87f9621b0cb9e34e5 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/315079315" 
	@${RM} ${OBJECTDIR}/_ext/315079315/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/315079315/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/315079315/sys_dma.o.d" -o ${OBJECTDIR}/_ext/315079315/sys_dma.o ../src/config/sam_iot_wg/system/dma/sys_dma.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2138744790/sys_reset.o: ../src/config/sam_iot_wg/system/reset/sys_reset.c  .generated_files/flags/sam_iot_wg/501de6fabf6d948160c159b4e93a6262472c5d14 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/2138744790" 
	@${RM} ${OBJECTDIR}/_ext/2138744790/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138744790/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138744790/sys_reset.o.d" -o ${OBJECTDIR}/_ext/2138744790/sys_reset.o ../src/config/sam_iot_wg/system/reset/sys_reset.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/819216694/osal_freertos.o: ../src/config/sam_iot_wg/osal/osal_freertos.c  .generated_files/flags/sam_iot_wg/37350804eb2fb159024923c39c587ce8e5036f89 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/819216694" 
	@${RM} ${OBJECTDIR}/_ext/819216694/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/819216694/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819216694/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/819216694/osal_freertos.o ../src/config/sam_iot_wg/osal/osal_freertos.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/tasks.o: ../src/config/sam_iot_wg/tasks.c  .generated_files/flags/sam_iot_wg/c0757c1d2b089f4bf4349e19ab048579147f3978 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/tasks.o.d" -o ${OBJECTDIR}/_ext/465030004/tasks.o ../src/config/sam_iot_wg/tasks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app1.o: ../src/app1.c  .generated_files/flags/sam_iot_wg/a13c3e01168b33ff9f9057d03c97db80db55ed2d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app1.o.d" -o ${OBJECTDIR}/_ext/1360937237/app1.o ../src/app1.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app2.o: ../src/app2.c  .generated_files/flags/sam_iot_wg/a7cd82dfe3c1bf96660be116084c76fff114ee5d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app2.o.d" -o ${OBJECTDIR}/_ext/1360937237/app2.o ../src/app2.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app3.o: ../src/app3.c  .generated_files/flags/sam_iot_wg/a7ad68b19ce2290ffb30c02b5b9582e66f91187c .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app3.o ../src/app3.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app4.o: ../src/app4.c  .generated_files/flags/sam_iot_wg/663112300b2bcefb35eb60a542ee3652c8f607ef .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app4.o.d" -o ${OBJECTDIR}/_ext/1360937237/app4.o ../src/app4.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689006812/bsp.o: ../src/config/sam_iot_wg/bsp/bsp.c  .generated_files/flags/sam_iot_wg/a60ea2b229520a646fdff0a660b5499a7a4f2609 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1689006812" 
	@${RM} ${OBJECTDIR}/_ext/1689006812/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689006812/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689006812/bsp.o.d" -o ${OBJECTDIR}/_ext/1689006812/bsp.o ../src/config/sam_iot_wg/bsp/bsp.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o: ../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/sam_iot_wg/6d813acd6b24b8169b43cc794a54a8105711be98 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/922813560" 
	@${RM} ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/922813560/plib_nvmctrl.o ../src/config/sam_iot_wg/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1244050276/plib_evsys.o: ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c  .generated_files/flags/sam_iot_wg/615ab73d41e8feccf657b39859b0642d03586968 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1244050276" 
	@${RM} ${OBJECTDIR}/_ext/1244050276/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1244050276/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1244050276/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1244050276/plib_evsys.o ../src/config/sam_iot_wg/peripheral/evsys/plib_evsys.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2046376005/sys_command.o: ../src/config/sam_iot_wg/system/command/src/sys_command.c  .generated_files/flags/sam_iot_wg/d98c519e0a5e268a48a2c1a88011e05299f95756 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/2046376005" 
	@${RM} ${OBJECTDIR}/_ext/2046376005/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046376005/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2046376005/sys_command.o.d" -o ${OBJECTDIR}/_ext/2046376005/sys_command.o ../src/config/sam_iot_wg/system/command/src/sys_command.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_iot_wg/ac14f6975c362a49c8f489c6c1dd8b7ced2ffd90 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/initialization.o: ../src/config/sam_iot_wg/initialization.c  .generated_files/flags/sam_iot_wg/c4d9d68f42dda6a7873fc220cbcc351e13eaebca .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/initialization.o.d" -o ${OBJECTDIR}/_ext/465030004/initialization.o ../src/config/sam_iot_wg/initialization.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/interrupts.o: ../src/config/sam_iot_wg/interrupts.c  .generated_files/flags/sam_iot_wg/a8c0858a1ac4800eebdba9d917f479f2144d8a2c .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/interrupts.o.d" -o ${OBJECTDIR}/_ext/465030004/interrupts.o ../src/config/sam_iot_wg/interrupts.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/exceptions.o: ../src/config/sam_iot_wg/exceptions.c  .generated_files/flags/sam_iot_wg/fa20aad4078f6abdb85ea22da1e4a6d23c86ea3c .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/exceptions.o.d" -o ${OBJECTDIR}/_ext/465030004/exceptions.o ../src/config/sam_iot_wg/exceptions.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/377813038/xc32_monitor.o: ../src/config/sam_iot_wg/stdio/xc32_monitor.c  .generated_files/flags/sam_iot_wg/fa0d11e63bc10fb4e9be741b4a5e27cde5562dfe .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/377813038" 
	@${RM} ${OBJECTDIR}/_ext/377813038/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/377813038/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377813038/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/377813038/xc32_monitor.o ../src/config/sam_iot_wg/stdio/xc32_monitor.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/733188249/plib_port.o: ../src/config/sam_iot_wg/peripheral/port/plib_port.c  .generated_files/flags/sam_iot_wg/63ac585dbced6371aef6ce89972f964fdf2558c6 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/733188249" 
	@${RM} ${OBJECTDIR}/_ext/733188249/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/733188249/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/733188249/plib_port.o.d" -o ${OBJECTDIR}/_ext/733188249/plib_port.o ../src/config/sam_iot_wg/peripheral/port/plib_port.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1241900790/plib_clock.o: ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c  .generated_files/flags/sam_iot_wg/8bf55dc8fd0362db4b66087a293800a18fa0114e .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1241900790" 
	@${RM} ${OBJECTDIR}/_ext/1241900790/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1241900790/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1241900790/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1241900790/plib_clock.o ../src/config/sam_iot_wg/peripheral/clock/plib_clock.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/733135098/plib_nvic.o: ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c  .generated_files/flags/sam_iot_wg/f35383c73144d562b34edb796e01757be94df0c0 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/733135098" 
	@${RM} ${OBJECTDIR}/_ext/733135098/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/733135098/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/733135098/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/733135098/plib_nvic.o ../src/config/sam_iot_wg/peripheral/nvic/plib_nvic.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/startup_xc32.o: ../src/config/sam_iot_wg/startup_xc32.c  .generated_files/flags/sam_iot_wg/4c7c422905c2301cb784c34eec0d6a8c34948199 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/465030004/startup_xc32.o ../src/config/sam_iot_wg/startup_xc32.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/libc_syscalls.o: ../src/config/sam_iot_wg/libc_syscalls.c  .generated_files/flags/sam_iot_wg/7126ff28f0dae0618c86d738cb14ea8f8927a5df .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/465030004/libc_syscalls.o ../src/config/sam_iot_wg/libc_syscalls.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o: ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c  .generated_files/flags/sam_iot_wg/7d4f5bf47144ce560095c54257624318e040d110 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/958951599" 
	@${RM} ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o.d" -o ${OBJECTDIR}/_ext/958951599/plib_sercom5_usart.o ../src/config/sam_iot_wg/peripheral/sercom/usart/plib_sercom5_usart.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993467784/plib_adc.o: ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c  .generated_files/flags/sam_iot_wg/a91b3d3442be58b2f8797535b9ea48c57f727936 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993467784" 
	@${RM} ${OBJECTDIR}/_ext/993467784/plib_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/993467784/plib_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993467784/plib_adc.o.d" -o ${OBJECTDIR}/_ext/993467784/plib_adc.o ../src/config/sam_iot_wg/peripheral/adc/plib_adc.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993471783/plib_eic.o: ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c  .generated_files/flags/sam_iot_wg/a9f5795699afcb93ce779182831997d853e99711 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993471783" 
	@${RM} ${OBJECTDIR}/_ext/993471783/plib_eic.o.d 
	@${RM} ${OBJECTDIR}/_ext/993471783/plib_eic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993471783/plib_eic.o.d" -o ${OBJECTDIR}/_ext/993471783/plib_eic.o ../src/config/sam_iot_wg/peripheral/eic/plib_eic.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o: ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c  .generated_files/flags/sam_iot_wg/a2326a4414e7c2cf7f7d5b14e823df8e188dfa53 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/993484617" 
	@${RM} ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o.d" -o ${OBJECTDIR}/_ext/993484617/plib_rtc_clock.o ../src/config/sam_iot_wg/peripheral/rtc/plib_rtc_clock.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1769067385/plib_tc3.o: ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c  .generated_files/flags/sam_iot_wg/851fc8770404bf17844189eb63f89ad9ebd22f39 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1769067385" 
	@${RM} ${OBJECTDIR}/_ext/1769067385/plib_tc3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1769067385/plib_tc3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1769067385/plib_tc3.o.d" -o ${OBJECTDIR}/_ext/1769067385/plib_tc3.o ../src/config/sam_iot_wg/peripheral/tc/plib_tc3.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1234218265/sys_time.o: ../src/config/sam_iot_wg/system/time/src/sys_time.c  .generated_files/flags/sam_iot_wg/4a650104f25c35e5d4763be83d9f1205136e933e .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1234218265" 
	@${RM} ${OBJECTDIR}/_ext/1234218265/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1234218265/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1234218265/sys_time.o.d" -o ${OBJECTDIR}/_ext/1234218265/sys_time.o ../src/config/sam_iot_wg/system/time/src/sys_time.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1791879111/sys_console.o: ../src/config/sam_iot_wg/system/console/src/sys_console.c  .generated_files/flags/sam_iot_wg/aad3f4bcf54bf32ed4bcb29b8f1334a330f0a68d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1791879111" 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1791879111/sys_console.o.d" -o ${OBJECTDIR}/_ext/1791879111/sys_console.o ../src/config/sam_iot_wg/system/console/src/sys_console.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1791879111/sys_console_uart.o: ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c  .generated_files/flags/sam_iot_wg/49541a9ebc9be04d7669c075bae400ea21358b44 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1791879111" 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1791879111/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1791879111/sys_console_uart.o ../src/config/sam_iot_wg/system/console/src/sys_console_uart.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/freertos_hooks.o: ../src/config/sam_iot_wg/freertos_hooks.c  .generated_files/flags/sam_iot_wg/be5958ea8cee3003c9836fb5da55970fb17276c3 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/465030004/freertos_hooks.o ../src/config/sam_iot_wg/freertos_hooks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  .generated_files/flags/sam_iot_wg/459dcf17edf0387de7a116d4c429776310b25a91 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  .generated_files/flags/sam_iot_wg/d3814247d4ee911bf7b18f996010f60a6f46415 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  .generated_files/flags/sam_iot_wg/c8738a5277f3463d4c9d045054e72c83fdfa0541 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  .generated_files/flags/sam_iot_wg/51a89ff9ce76eef9b8e2ca2a6499baf8f9cb8800 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  .generated_files/flags/sam_iot_wg/a0df9753ead90116a7546d35a2f3608a13f4e1b0 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  .generated_files/flags/sam_iot_wg/7eed30dd8d58c398cbe10b93d0a09c8e0af95ca5 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/sam_iot_wg/a48d087ddd9df2644867d4fc5726ccde471a7bee .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1665200909/heap_1.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  .generated_files/flags/sam_iot_wg/822a4fc9b284756ce79957428cdaf7804e99aab9 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_1.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_1.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1624415188/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c  .generated_files/flags/sam_iot_wg/c72b64736317304f66db2d4d1384271be287ad23 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1624415188" 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1624415188/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1624415188/port.o.d" -o ${OBJECTDIR}/_ext/1624415188/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0/port.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1479994401/sys_int.o: ../src/config/sam_iot_wg/system/int/src/sys_int.c  .generated_files/flags/sam_iot_wg/7bfa6c0857f48dde9d1e6068e1785ca8fadce2f4 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1479994401" 
	@${RM} ${OBJECTDIR}/_ext/1479994401/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1479994401/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1479994401/sys_int.o.d" -o ${OBJECTDIR}/_ext/1479994401/sys_int.o ../src/config/sam_iot_wg/system/int/src/sys_int.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/315079315/sys_dma.o: ../src/config/sam_iot_wg/system/dma/sys_dma.c  .generated_files/flags/sam_iot_wg/976d62e016e87da29c59b593b17111ff3b48fe38 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/315079315" 
	@${RM} ${OBJECTDIR}/_ext/315079315/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/315079315/sys_dma.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/315079315/sys_dma.o.d" -o ${OBJECTDIR}/_ext/315079315/sys_dma.o ../src/config/sam_iot_wg/system/dma/sys_dma.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/2138744790/sys_reset.o: ../src/config/sam_iot_wg/system/reset/sys_reset.c  .generated_files/flags/sam_iot_wg/710e688e31fd37f7ade3e02241fb6edd8dcea97f .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/2138744790" 
	@${RM} ${OBJECTDIR}/_ext/2138744790/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/2138744790/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2138744790/sys_reset.o.d" -o ${OBJECTDIR}/_ext/2138744790/sys_reset.o ../src/config/sam_iot_wg/system/reset/sys_reset.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/819216694/osal_freertos.o: ../src/config/sam_iot_wg/osal/osal_freertos.c  .generated_files/flags/sam_iot_wg/b945e50938db1ce99d8c7ab49e1f6f86d2e6169d .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/819216694" 
	@${RM} ${OBJECTDIR}/_ext/819216694/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/819216694/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/819216694/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/819216694/osal_freertos.o ../src/config/sam_iot_wg/osal/osal_freertos.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/465030004/tasks.o: ../src/config/sam_iot_wg/tasks.c  .generated_files/flags/sam_iot_wg/6c080d3b5823ce0dcf26c1dba8c2395e5f8d1153 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/465030004" 
	@${RM} ${OBJECTDIR}/_ext/465030004/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/465030004/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/465030004/tasks.o.d" -o ${OBJECTDIR}/_ext/465030004/tasks.o ../src/config/sam_iot_wg/tasks.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app1.o: ../src/app1.c  .generated_files/flags/sam_iot_wg/dee7a86ff6127908bf1bda17510ff759ce42000b .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app1.o.d" -o ${OBJECTDIR}/_ext/1360937237/app1.o ../src/app1.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app2.o: ../src/app2.c  .generated_files/flags/sam_iot_wg/125362c4ebd187606c25037bc51cd85864f435f7 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app2.o.d" -o ${OBJECTDIR}/_ext/1360937237/app2.o ../src/app2.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app3.o: ../src/app3.c  .generated_files/flags/sam_iot_wg/e4b53bf82e3d6a7132c9a02eaed68c108af64d6b .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app3.o.d" -o ${OBJECTDIR}/_ext/1360937237/app3.o ../src/app3.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app4.o: ../src/app4.c  .generated_files/flags/sam_iot_wg/7b9eafe3232cf404d9ba215f69b465e98da0c8cc .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app4.o.d" -o ${OBJECTDIR}/_ext/1360937237/app4.o ../src/app4.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1689006812/bsp.o: ../src/config/sam_iot_wg/bsp/bsp.c  .generated_files/flags/sam_iot_wg/a0a3aa8dba16d41d402966d65b0c632e8ccedb29 .generated_files/flags/sam_iot_wg/66a9f97ada8dc6fa94f0ca88b1597ba573a215be
	@${MKDIR} "${OBJECTDIR}/_ext/1689006812" 
	@${RM} ${OBJECTDIR}/_ext/1689006812/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1689006812/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -I"../src/third_party/rtos/FreeRTOS/Source/portable/GCC/ARM_CM0" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src" -I"../src/config/sam_iot_wg" -I"../src/packs/ATSAMD21G18A_DFP" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/packs/CMSIS/" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1689006812/bsp.o.d" -o ${OBJECTDIR}/_ext/1689006812/bsp.o ../src/config/sam_iot_wg/bsp/bsp.c    -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_iot_wg/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8192,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_iot_wg/ATSAMD21G18A.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_iot_wg=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/sam_iot_wg.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
