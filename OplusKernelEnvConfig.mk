# Copyright (C), 2008-2030, OPPO Mobile Comm Corp., Ltd
### All rights reserved.
###
### File: - OplusKernelEnvConfig.mk
### Description:
###     you can get the oplus feature variables set in android side in this file
###     this file will add global macro for common oplus added feature
###     BSP team can do customzation by referring the feature variables
### Version: 1.0
### Date: 2020-03-18
### Author: Liang.Sun
###
### ------------------------------- Revision History: ----------------------------
### <author>                        <date>       <version>   <desc>
### ------------------------------------------------------------------------------
##################################################################################

###ifdef OPLUS_ARCH_INJECT
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET :=

ifeq ($(OPLUS_FEATURE_WIFI_MTUDETECT), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_MTUDETECT
endif

$(foreach myfeature,$(OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET),\
    $( \
        $(eval KBUILD_CFLAGS += -D$(myfeature)) \
        $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
        $(eval CFLAGS_KERNEL += -D$(myfeature)) \
        $(eval CFLAGS_MODULE += -D$(myfeature)) \
    ) \
)
###endif OPLUS_ARCH_INJECT

ALLOWED_MCROS := \
OPLUS_FEATURE_SPECIALOPT \
OPLUS_FEATURE_PERFORMANCE \
OPLUS_FEATURE_STORAGE_TOOL \
OPLUS_FEATURE_UFS_DRIVER \
OPLUS_FEATURE_UFS_SHOW_LATENCY \
OPLUS_FEATURE_UFSPLUS \
OPLUS_FEATURE_PADL_STATISTICS \
OPLUS_FEATURE_EMMC_SDCARD_OPTIMIZE \
OPLUS_FEATURE_EMMC_DRIVER \
OPLUS_FEATURE_HEALTHINFO \
OPLUS_FEATURE_TASK_CPUSTATS \
OPLUS_FEATURE_HANS_FREEZE \
OPLUS_FEATURE_SCHED_ASSIST \
OPLUS_FEATURE_IOMONITOR \
OPLUS_FEATURE_TP_BSPFWUPDATE \
OPLUS_FEATURE_LOWMEM_DBG \
OPLUS_FEATURE_QCOM_PMICWD \
OPLUS_FEATURE_CHG_BASIC \
OPLUS_FEATURE_NWPOWER \
OPLUS_FEATURE_WIFI_BDF \
OPLUS_FEATURE_CONNFCSOFT \
OPLUS_FEATURE_AGINGTEST \
OPLUS_FEATURE_SSR \
OPLUS_FEATURE_TP_BASIC \
OPLUS_FEATURE_EDTASK_IMPROVE \
OPLUS_FEATURE_WIFI_SLA \
OPLUS_FEATURE_WIFI_ROUTERBOOST \
OPLUS_FEATURE_IPV6_OPTIMIZE \
OPLUS_FEATURE_DATA_EVAL \
OPLUS_FEATURE_DHCP \
OPLUS_FEATURE_PHOENIX \
OPLUS_FEATURE_DUMPDEVICE \
OPLUS_FEATURE_SAUPWK \
OPLUS_FEATURE_MEMORY_ISOLATE \
OPLUS_FEATURE_MULTI_KSWAPD \
OPLUS_FEATURE_WIFI_MTUDETECT \
OPLUS_FEATURE_XTOWNER_INPUT \
OPLUS_FEATURE_SELINUX_CONTROL_LOG \
OPLUS_FEATURE_PXLW_IRIS5 \
OPLUS_FEATURE_MULTI_FREEAREA \
OPLUS_FEATURE_VIRTUAL_RESERVE_MEMORY \
OPLUS_FEATURE_GPU_MINIDUMP \
OPLUS_FEATURE_PROCESS_RECLAIM \
OPLUS_FEATURE_ZRAM_OPT \
OPLUS_FEATURE_AUDIO_FTM \
OPLUS_FEATURE_SPEAKER_MUTE \
OPLUS_FEATURE_MM_FEEDBACK \
OPLUS_FEATURE_MI2S_SLAVE \
OPLUS_FEATURE_KTV \
OPLUS_FEATURE_QCOM_WATCHDOG \
OPLUS_FEATURE_MEMLEAK_DETECT \
OPLUS_FEATURE_SDCARDFS_SUPPORT \
OPLUS_FEATURE_CAMERA_OIS \
OPLUS_BUG_COMPATIBILITY \
OPLUS_BUG_STABILITY \
OPLUS_BUG_DEBUG \
OPLUS_ARCH_INJECT \
OPLUS_ARCH_EXTENDS \
OPLUS_FEATURE_AUDIODETECT \
VENDOR_EDIT \
OPLUS_FEATURE_POWERINFO_RPMH \
OPLUS_FEATURE_CAMERA_COMMON \
OPLUS_FEATURE_ADSP_RECOVERY \
OPLUS_FEATURE_SMARTPA_PM \
OPLUS_FEATURE_IMPEDANCE_MATCH \
OPLUS_FEATURE_MODEM_MINIDUMP \
OPLUS_FEATURE_THEIA \
OPLUS_FEATURE_POWER_CPUFREQ \
OPLUS_FEATURE_MIDAS \
OPLUS_FEATURE_WIFI_OPLUSWFD \
OPLUS_FEATURE_WIFI_DUALSTA_AP_BLACKLIST \
OPLUS_FEATURE_WIFI_DCS_SWITCH \
OPLUS_FEATURE_IM \
OPLUS_FEATURE_TPD \
OPLUS_FEATURE_APP_MONITOR \
OPLUS_FEATURE_RT_INFO \
OPLUS_FEATURE_MIC_VA_MIC_CLK_SWITCH \
OPLUS_FEATURE_ADFR

$(foreach myfeature,$(ALLOWED_MCROS),\
         $(eval KBUILD_CFLAGS += -D$(myfeature)) \
         $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
         $(eval CFLAGS_KERNEL += -D$(myfeature)) \
         $(eval CFLAGS_MODULE += -D$(myfeature)) \
)

# BSP team can do customzation by referring the feature variables

export CONFIG_OPLUS_SECURE_GUARD=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_SECURE_GUARD
export CONFIG_OPLUS_ROOT_CHECK=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_ROOT_CHECK
export CONFIG_OPLUS_MOUNT_BLOCK=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_MOUNT_BLOCK
export CONFIG_OPLUS_EXECVE_BLOCK=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_EXECVE_BLOCK
KBUILD_CFLAGS += -DCONFIG_OPLUS_EXECVE_REPORT
export CONFIG_OPLUS_KEVENT_UPLOAD=y
KBUILD_CFLAGS += -DCONFIG_OPLUS_KEVENT_UPLOAD
KBUILD_CFLAGS += -DOPLUS_DISALLOW_KEY_INTERFACES

export OPLUS_FEATURE_WIFI_ROUTERBOOST=y
export OPLUS_FEATURE_UFS_SHOW_LATENCY=y
export OPLUS_FEATURE_PADL_STATISTICS=y
export OPLUS_FEATURE_UFSPLUS=y
export CONFIG_OPLUS_FEATURE_SAUPWK=y
export OPLUS_FEATURE_MEMLEAK_DETECT=yes
export OPLUS_FEATURE_PROCESS_RECLAIM=yes
export OPLUS_FEATURE_ADFR_KERNEL=yes
export OPLUS_FEATURE_PXLW_IRIS5=yes
