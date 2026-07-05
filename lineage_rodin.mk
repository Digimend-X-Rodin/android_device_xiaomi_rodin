#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rodin device
$(call inherit-product, device/xiaomi/rodin/device.mk)

# AOSP Flags
TARGET_SHIPS_GCAM := false
TARGET_SHIPS_MIUICAMERA := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Lunaris Build Flags
WITH_GMS := true
WITH_BCR := false
TARGET_ENABLE_BLUR := true
TARGET_CUSTOM_UDFPS := true
USE_REALITY_ENGINE := false
SURFACE_FLINGER_BOOST := false
TARGET_OPTIMIZED_DEXOPT := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_SUPPORTED_REFRESH_RATES := 60,120
WITH_GMS_COMMS_SUITE := false
WITH_PIXEL_LAUNCHER := false
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true

PRODUCT_DEVICE := rodin
PRODUCT_NAME := lineage_rodin
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2412DPC0AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_SYSTEM_NAME := rodin_global
PRODUCT_SYSTEM_DEVICE := rodin

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 OS3.0.300.0.WOJMIXM release-keys" \
    BuildFingerprint=POCO/rodin_global/rodin:15/AP3A.240905.015.A2/OS3.0.300.0.WOJMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

