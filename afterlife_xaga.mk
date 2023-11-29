#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# ROM Flags
TARGET_SCREEN_DENSITY := 440
AFTERLIFE_MAINTAINER := ExWhyZed9
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true
AFTERLIFE_EXTRA := true
BUILD_GALLERYGO := true
BUILD_GMAIL := true
BUILD_AOSP_CAMERA := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_GOOGLE_TELEPHONY := true
# Inherit some common stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := afterlife_xaga
PRODUCT_DEVICE := xaga
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note11T Pro
PRODUCT_MANUFACTURER := Xiaomi
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-afterlife
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xaga-user 12 SP1A.210812.016 V14.0.6.0.TLOMIXM release-keys"

BUILD_FINGERPRINT := Redmi/xaga/xaga:12/SP1A.210812.016/V14.0.6.0.TLOMIXM:user/release-keys
