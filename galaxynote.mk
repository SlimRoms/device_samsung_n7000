# Copyright (C) 2010 The Android Open Source Project
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
DEVICE_PACKAGE_OVERLAYS := device/samsung/galaxynote/overlay

# This device is hdpi.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += xhdpi

#Bootanimation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Init files
PRODUCT_COPY_FILES := \
	device/samsung/galaxynote/lpm.rc:root/lpm.rc \
	device/samsung/galaxynote/init.smdk4210.usb.rc:root/init.smdk4210.usb.rc \
	device/samsung/galaxynote/init.smdk4210.rc:root/init.smdk4210.rc \
	device/samsung/galaxynote/ueventd.smdk4210.rc:root/ueventd.smdk4210.rc

# Audio
PRODUCT_COPY_FILES += \
	device/samsung/galaxynote/configs/asound.conf:system/etc/asound.conf

# Vold and Storage
PRODUCT_COPY_FILES += \
	device/samsung/galaxynote/configs/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES := \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Wifi
PRODUCT_COPY_FILES += \
	device/samsung/galaxynote/configs/nvram_net.txt:system/etc/nvram_net.txt \
	device/samsung/galaxynote/configs/nvram_mfg.txt:system/etc/nvram_mfg.txt \
	device/samsung/galaxynote/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=20

# Gps
PRODUCT_COPY_FILES += \
	device/samsung/galaxynote/configs/gps.conf:system/etc/gps.conf

# Packages
PRODUCT_PACKAGES := \
	Camera \
	camera.exynos4 \
	Torch \
	GalaxyNoteSettings \
	TvOut \
	TvOutHack \
	com.android.future.usb.accessory \

# HAL
PRODUCT_PACKAGES += \
    lights.exynos4 \
    libhwconverter \
    libswconverter \
    libs5pjpeg \
    libfimg

# MFC API
PRODUCT_PACKAGES += \
    libsecmfcapi

# Sensors
PRODUCT_PACKAGES += \
	sensors.exynos4

# OMX
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libcsc \
    libsecbasecomponent \
    libsecosal \
    libSEC_OMX_Resourcemanager \
    libSEC_OMX_Core \
    libSEC_OMX_Vdec \
    libOMX.SEC.AVC.Decoder \
    libOMX.SEC.M4V.Decoder \
    libOMX.SEC.WMV.Decoder \
    libOMX.SEC.VP8.Decoder \
    libSEC_OMX_Venc \
    libOMX.SEC.AVC.Encoder \
    libOMX.SEC.M4V.Encoder \
    libSEC_OMX_Adec \
    libOMX.SEC.MP3.Decoder

PRODUCT_COPY_FILES += \
    device/samsung/galaxynote/configs/media_profiles.xml:system/etc/media_profiles.xml

# Ril
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=Smdk4210RIL \
    mobiledata.interfaces=pdp0,wlan0,gprs,ppp0

# Filesystem management tools
PRODUCT_PACKAGES += \
	static_busybox \
	make_ext4fs \
	setup_fs

# Bluetooth MAC Address
PRODUCT_PACKAGES += \
	bdaddr_read

# Live Wallpapers
PRODUCT_PACKAGES += \
	Galaxy4 \
	HoloSpiralWallpaper \
	LiveWallpapers \
	LiveWallpapersPicker \
	MagicSmokeWallpapers \
	NoiseField \
	PhaseBeam \
	VisualizationWallpapers \
	librs_jni

# Keylayout
PRODUCT_COPY_FILES += \
    device/samsung/galaxynote/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/galaxynote/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/galaxynote/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/samsung/galaxynote/usr/keylayout/max8997-muic.kl:system/usr/keylayout/max8997-muic.kl \
    device/samsung/galaxynote/usr/keylayout/melfas-touchkey.kl:system/usr/keylayout/melfas-touchkey.kl \
    device/samsung/galaxynote/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/samsung/galaxynote/usr/keylayout/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
    device/samsung/galaxynote/usr/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/galaxynote/usr/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/galaxynote/usr/keylayout/sii9234_rcp.kl:system/usr/keylayout/sii9234_rcp.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/samsung/galaxynote/usr/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/samsung/galaxynote/usr/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/samsung/galaxynote/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/samsung/galaxynote/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/samsung/galaxynote/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

#idc
PRODUCT_COPY_FILES += \
    device/samsung/galaxynote/usr/idc/melfas_ts.idc:system/usr/idc/melfas_ts.idc \
    device/samsung/galaxynote/usr/idc/mxt224_ts_input.idc:system/usr/idc/mxt224_ts_input.idc \
    device/samsung/galaxynote/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/samsung/galaxynote/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/samsung/galaxynote/usr/idc/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc \
    device/samsung/galaxynote/usr/idc/sec_e-pen.idc:system/usr/idc/sec_e-pen.idc

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
	frameworks/base/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/base/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.sf.lcd_density=320 \
	hwui.render_dirty_regions=false \
	hwui.disable_vsync=true \
	ro.kernel.android.checkjni=0 \
	dalvik.vm.checkjni=false

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

PRODUCT_TAGS += dalvik.gc.type-precise

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

$(call inherit-product, frameworks/base/build/phone-xhdpi-1024-dalvik-heap.mk)

# Include exynos4 platform specific parts
$(call inherit-product, hardware/samsung/exynos4/Android.mk)

$(call inherit-product-if-exists, vendor/samsung/galaxynote/galaxynote-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
