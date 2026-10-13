#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the custom device configuration.
$(call inherit-product, device/xiaomi/rodin/device.mk)

# Inherit some common CloverOS stuff.
$(call inherit-product, vendor/clover/config/common_full_phone.mk)

# AOSP Flags
TARGET_SHIPS_GCAM := false
TARGET_SHIPS_MIUICAMERA := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Clover Build Flags
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_CUSTOM_UDFPS := true
TARGET_OPTIMIZED_DEXOPT := true
WITH_GMS_COMMS_SUITE := false

CLOVER_MAINTAINER := RAM-UNLOK
CLOVER_BUILDTYPE := OFFICIAL

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := rodin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2412DPC0AG
PRODUCT_NAME := clover_rodin

PRODUCT_BRAND_FOR_ATTESTATION := $(PRODUCT_BRAND)
PRODUCT_DEVICE_FOR_ATTESTATION := $(PRODUCT_DEVICE)
PRODUCT_MODEL_FOR_ATTESTATION := $(PRODUCT_MODEL)
PRODUCT_NAME_FOR_ATTESTATION := rodin_global
PRODUCT_MANUFACTURER_FOR_ATTESTATION := $(PRODUCT_MANUFACTURER)

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 OS3.0.303.0.WOJMIXM release-keys" \
    BuildFingerprint=POCO/rodin_global/rodin:16/BP2A.250605.031.A3/OS3.0.303.0.WOJMIXM:user/release-keys \
    DeviceName=rodin \
    DeviceProduct=rodin_global \
    SystemDevice=rodin \
    SystemName=rodin_global
