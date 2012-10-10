#
# Copyright (C) 2012 The CyanogenMod Project
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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GT-N7000

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n7000/full_n7000.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy kernel and modules
PRODUCT_COPY_FILES += \
	device/samsung/n7000/prebuilt/kernel/n7000/zImage:system/slimkernel/boot.img \
	device/samsung/n7000/prebuilt/kernel/n7000/zImage:kernel \
        device/samsung/n7000/recovery.fstab:ramdisk.img \
        device/samsung/n7000/recovery.fstab:recovery/root/etc/recovery.fstab \
	device/samsung/n7000/prebuilt/kernel/n7000/system/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
	device/samsung/n7000/prebuilt/kernel/n7000/system/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
	device/samsung/n7000/prebuilt/kernel/n7000/system/lib/modules/cifs.ko:system/lib/modules/cifs.ko \
	device/samsung/n7000/prebuilt/kernel/n7000/system/lib/modules/Si4709_driver.ko:system/lib/modules/Si4709_driver.ko \
	device/samsung/n7000/prebuilt/kernel/n7000/system/lib/modules/j4fs.ko:system/lib/modules/j4fs.ko

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7000
PRODUCT_NAME := slim_n7000
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-N7000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-N7000 TARGET_DEVICE=GT-N7000 BUILD_FINGERPRINT=samsung/GT-N7000/GT-N7000:4.0.3/IML74K/ZCLP6:user/release-keys PRIVATE_BUILD_DESC="GT-N7000-user 4.0.3 IML74K ZCLP6 release-keys"
