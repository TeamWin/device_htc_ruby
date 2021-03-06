#
# Copyright (C) 2011 The Evervolv Project
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


PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/etc/gps.conf:system/etc/gps.conf

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r5 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/root/init.ruby.rc:root/init.ruby.rc \
    device/htc/ruby/prebuilt/root/init.ruby.usb.rc:root/init.ruby.usb.rc \
    device/htc/ruby/prebuilt/root/ueventd.ruby.rc:root/ueventd.ruby.rc

# Recovery Chargemode Support
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/ruby/prebuilt/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/ruby/prebuilt/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/ruby/prebuilt/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
    device/htc/ruby/prebuilt/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_0.png:recovery/root/res/offmode_charging_images/batt_0.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_100.png:recovery/root/res/offmode_charging_images/batt_100.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_10.png:recovery/root/res/offmode_charging_images/batt_10.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_20.png:recovery/root/res/offmode_charging_images/batt_20.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_30.png:recovery/root/res/offmode_charging_images/batt_30.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_40.png:recovery/root/res/offmode_charging_images/batt_40.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_50.png:recovery/root/res/offmode_charging_images/batt_50.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_5.png:recovery/root/res/offmode_charging_images/batt_5.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_60.png:recovery/root/res/offmode_charging_images/batt_60.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_70.png:recovery/root/res/offmode_charging_images/batt_70.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_80.png:recovery/root/res/offmode_charging_images/batt_80.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_90.png:recovery/root/res/offmode_charging_images/batt_90.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/batt_95.png:recovery/root/res/offmode_charging_images/batt_95.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_00.png:recovery/root/res/offmode_charging_images/charging_00.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_01.png:recovery/root/res/offmode_charging_images/charging_01.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_02.png:recovery/root/res/offmode_charging_images/charging_02.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_03.png:recovery/root/res/offmode_charging_images/charging_03.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_04.png:recovery/root/res/offmode_charging_images/charging_04.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_05.png:recovery/root/res/offmode_charging_images/charging_05.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_06.png:recovery/root/res/offmode_charging_images/charging_06.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_07.png:recovery/root/res/offmode_charging_images/charging_07.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_08.png:recovery/root/res/offmode_charging_images/charging_08.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/charging_09.png:recovery/root/res/offmode_charging_images/charging_09.png \
    device/htc/ruby/prebuilt/recovery/root/res/offmode_charging_images/error.png:recovery/root/res/offmode_charging_images/error.png

# Temporary hack
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.service.adb.enable=1

#Using prebuilt audio libs right now
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/lib/hw/audio.primary.default.so:system/lib/hw/audio.primary.default.so \
    device/htc/ruby/prebuilt/system/lib/hw/audio_policy.default.so:system/lib/hw/audio_policy.default.so \
    device/htc/ruby/prebuilt/system/lib/hw/audio.a2dp.default.so:system/lib/hw/audio.a2dp.default.so

#Using prebuilt libril.so right now
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/lib/libril.so:system/lib/libril.so

#Add touchscreen config file
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/ruby/prebuilt/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/ruby/prebuilt/system/usr/idc/ruby-keypad.idc:system/usr/idc/ruby-keypad.idc


## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/ruby/ruby-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.clientidbase=android-htc \
        ro.com.google.clientidbase.yt=android-htc \
        ro.com.google.clientidbase.am=android-tmobile-us \
        ro.com.google.clientidbase.vs=android-hms-tmobile-us \
        ro.com.google.clientidbase.gmm=android-htc \
        ro.com.google.clientidbase.ms=android-hms-tmobile-us \
	ro.phone.min_match=7 \
	ro.product.model=HTC Amaze 4G \
	ro.cdma.home.operator.tmobile \
	gsm.sim.operator.alpha=tmobile \
	gsm.operator.alpha=tmobile \
	ro.cdma.home.operator.numeric=310120 \
	gsm.sim.operator.numeric=310120 \
	gsm.operator.numeric=310120 \
	gsm.sim.operator.iso-country=us \
	gsm.operator.iso-country=us \
	ro.com.google.locationfeatures=1 \
	ro.setupwizard.enable_bypass=1 \
	ro.media.dec.jpeg.memcap=20000000 \
	dalvik.vm.lockprof.threshold=500 \
	dalvik.vm.dexopt-flags=m=y \
	ro.opengles.version=131072

DEVICE_PACKAGE_OVERLAYS += device/htc/ruby/overlay

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    librs_jni \
    libOmxVenc \
    libOmxVdec \
    gralloc.msm8660 \
    com.android.future.usb.accessory
#    overlay.default \
#    gps.ruby \
#    copybit.msm8x60 \
#    overlay.default \
#    libOmxCore \
#    libaudio \

##Disable HWAccel for now
ADDITIONAL_BUILD_PROPERTIES += \
    ro.config.disable_hw_accel=true

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keychars/ruby-keypad.kcm.bin:system/usr/keychars/ruby-keypad.kcm.bin \
    device/htc/ruby/prebuilt/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/ruby-keypad.kl:system/usr/keylayout/ruby-keypad.kl \
    device/htc/ruby/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/etc/firmware/fmc_init_1273.2.bts:system/etc/firmware/fmc_init_1273.2.bts \
    device/htc/ruby/prebuilt/system/etc/firmware/fm_rx_init_1273.2.bts:system/etc/firmware/fm_rx_init_1273.2.bts \
    device/htc/ruby/prebuilt/system/etc/firmware/htc_1271fw_196_header.bin:system/etc/firmware/htc_1271fw_196_header.bin \
    device/htc/ruby/prebuilt/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/ruby/prebuilt/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/htc/ruby/prebuilt/system/etc/firmware/protocols:system/etc/firmware/protocols \
    device/htc/ruby/prebuilt/system/etc/firmware/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
    device/htc/ruby/prebuilt/system/etc/firmware/vac_config.ini:system/etc/firmware/Tvac_config.ini \
    device/htc/ruby/prebuilt/system/etc/firmware/version:system/etc/firmware/version \
    device/htc/ruby/prebuilt/system/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/ruby/prebuilt/system/etc/firmware/WL127x_2.0_2.25.bts:system/etc/firmware/WL127x_2.0_2.25.bts
    
# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/ruby/prebuilt/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/ruby/prebuilt/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/ruby/prebuilt/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/ruby/prebuilt/system/etc/AIC3254_REG_DualMic_XD.csv:system/etc/AIC3254_REG_DualMic_XD.csv \
    device/htc/ruby/prebuilt/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/ruby/prebuilt/system/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/ruby/prebuilt/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/ruby/prebuilt/system/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/ruby/prebuilt/system/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/ruby/prebuilt/system/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/ruby/prebuilt/system/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/ruby/prebuilt/system/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/ruby/prebuilt/system/bin/snd3254:system/bin/snd3254

# Wifi Module
PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/lib/modules/kineto_gan.ko:system/lib/modules/kineto_gan.ko \
    device/htc/ruby/prebuilt/system/lib/modules/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
    device/htc/ruby/prebuilt/system/lib/modules/tiap_drv.ko:system/lib/modules/tiap_drv.ko

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise


PRODUCT_LOCALES += en

PRODUCT_COPY_FILES += \
    device/htc/ruby/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/ruby/prebuilt/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/ruby/prebuilt/system/etc/spn-conf.xml:system/etc/spn-conf.xml \
    device/htc/ruby/prebuilt/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/ruby/prebuilt/root/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# media profiles and capabilities spec
$(call inherit-product, device/htc/ruby/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/ruby/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

#$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_ruby
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := ruby
PRODUCT_MODEL := HTC Amaze 4g
PRODUCT_MANUFACTURER := HTC
