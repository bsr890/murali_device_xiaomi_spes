#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Additions
$(call inherit-product-if-exists, vendor/gapps/common.mk)
$(call inherit-product-if-exists, vendor/prebuilt-apps/config.mk)

# Camera
$(call inherit-product-if-exists, vendor/miuicamera/config.mk)

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Rising
RISING_MAINTAINER := "Cstmizd"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="Cstmizd"

RISING_BUILD_TYPE := COMMUNITY
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_NO_CAMERA := false

WITH_GMS := true
TARGET_CORE_GMS := true
PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \

RISING_CHIPSET= "SM6225"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="SM6225" \

TARGET_DEFAULT_PIXEL_LAUNCHER := true

TARGET_BOOT_ANIMATION_RES := 1080

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Fingerprint
BUILD_FINGERPRINT := "Redmi/spes/spes:13/TKQ1.221114.001/V14.0.5.0.TGCINXM:user/release-keys"
