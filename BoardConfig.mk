#
# config.mk
#
# Product-specific compile-time definitions.
#

ifeq ($(QC_PROP),true)
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USES_QCNE := true
    USE_CAMERA_STUB := true
    BOARD_USES_GENERIC_AUDIO := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    #BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50001
    #BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
    #BOARD_CAMERA_LIBRARIES := libcamera
    #BOARD_HAVE_BLUETOOTH := true
    BOARD_HAS_QCOM_WLAN := true
    BOARD_WPA_SUPPLICANT_DRIVER := WEXT
    WPA_SUPPLICANT_VERSION := VER_0_6_X
    HOSTAPD_VERSION := VER_0_6_X
    WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
    WIFI_SDIO_IF_DRIVER_MODULE_NAME := "librasdioif"
    WIFI_SDIO_IF_DRIVER_MODULE_ARG  := ""
    endif   # !BUILD_TINY_ANDROID

else
#    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true

endif # QC_PROP

TARGET_HAVE_TSLIB := true

TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=vfp -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv6k-vfp
TARGET_BOARD_PLATFORM := msm7627_surf
TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
QCOM_TARGET_PRODUCT := msm7627_surf
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE    := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=qcom
BOARD_EGL_CFG := device/qcom/$(TARGET_PRODUCT)/egl.cfg

BOARD_NO_SPEAKER := true # msm7627_surf doesn't have speaker

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 136314880
BOARD_USERDATAIMAGE_PARTITION_SIZE := 125829120
BOARD_PERSISTIMAGE_PARTITION_SIZE := 4096000
BOARD_CACHEIMAGE_PARTITION_SIZE := 4096000
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE := 4096000 # Not used on msm7627
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_qcom
