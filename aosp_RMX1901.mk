#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifer: Apache-2.0
#

TARGET_BOOT_ANIMATION_RES := 2280

EXTRA_FOD_ANIMATIONS := true

WITH_CORE_GAPPS := true

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit from RMX1901 device.
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := RMX1901
PRODUCT_NAME := aosp_RMX1901
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme X
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm710-user 9 PKQ1.190101.001 eng.root.20190718.013112 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:11/RQ3A.210705.001/7380771:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1901" \
    TARGET_DEVICE="RMX1901"
