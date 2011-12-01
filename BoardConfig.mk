#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_LIBSECRIL_STUB := true

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := smdkv310
TARGET_BOOTLOADER_BOARD_NAME := GT-N7000
TARGET_BOARD_INFO_FILE := device/samsung/galaxynote/board-info.txt

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := device/samsung/galaxynote/recovery.rc

BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := console=ttySAC2,115200 consoleblank=0
TARGET_PREBUILT_KERNEL := device/samsung/galaxynote/kernel

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 893386752
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 4096

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/samsung/galaxynote/releasetools/galaxynote_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/samsung/galaxynote/releasetools/galaxynote_img_from_target_files

# Graphics (Mali 400)
BOARD_EGL_CFG := device/samsung/galaxynote/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_HWCOMPOSER := true
BOARD_USES_LEGACY_EGL := true
COMMON_GLOBAL_CFLAGS += -DUSES_LEGACY_EGL

# Audio
BOARD_USES_AUDIO_LEGACY := true
BOARD_USE_YAMAHAPLAYER := true

# Camera
ifeq ($(USE_CAMERA_STUB),false)
BOARD_CAMERA_LIBRARIES := libcamera
endif

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# GPS
BOARD_USES_GPSWRAPPER := true

# WiFi (BCM4330)
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := WEXT
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4330_b1
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/lib/modules/dhd.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/bcm4330_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/bcm4330_aps.bin"
WIFI_DRIVER_MODULE_NAME          :=  "dhd"
WIFI_DRIVER_MODULE_ARG           :=  "firmware_path=/system/vendor/firmware/bcm4330_sta.bin nvram_path=/system/etc/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/samsung/galaxynote/vibrator/tspdrv.c

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxynote/recovery/recovery_keys.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxynote/recovery/graphics.c
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true 
BOARD_HAS_NO_SELECT_BUTTON := true

# assert
TARGET_OTA_ASSERT_DEVICE := galaxynote,GT-N7000

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxynote/BoardConfigVendor.mk

BOARD_CUSTOM_BOOTIMG_MK := device/samsung/galaxynote/shbootimg.mk
