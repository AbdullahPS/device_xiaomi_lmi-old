#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common PixelExperience stuff.
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
$(call inherit-product, vendor/aosp/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := POCO F2 PRO

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DISC="lmi-user 11 RKQ1.200826.002 V12.2.1.0.RJKMIXM release-keys" \
    PRODUCT_DEVICE=lmi \
    PRODUCT_NAME=lmi

BUILD_FINGERPRINT := POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.2.1.0.RJKMIXM:user/release-keys


PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
