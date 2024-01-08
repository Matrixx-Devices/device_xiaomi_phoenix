#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, device/xiaomi/phoenix/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Project Matrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit Miui Camera.
$(call inherit-product-if-exists, device/xiaomi/phoenix-miuicamera/config.mk)

# Project Matrixx Build Type & Maintainer stuff.
MATRIXX_MAINTAINER := JAYMISTRY258
MATRIXX_BUILD_TYPE := Official

# Project Matrixx flags.
MATRIXX_BATTERY := 4500mah
MATRIXX_DISPLAY := 1080X2400

# SOC
MATRIXX_CHIPSET := SM6150

# GAPPS Build Details.
WITH_GAPPS := true
EXTRA_GAPPS := true
TARGET_GAPPS_ARCH := arm64

# Custom stuff.
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_BOOT_ANIMATION_RES := 1080

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_phoenix
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X2
PRODUCT_DEVICE := phoenix
PRODUCT_MANUFACTURER := Xiaomi
