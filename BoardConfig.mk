#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi sdm710-common
include device/realme/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX1901

PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1901,RMX1901CN

# FOD
TARGET_SURFACEFLINGER_FOD_LIB := //$(DEVICE_PATH):libfod_extension.RMX1901
TARGET_USES_FOD_ZPOS := true

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := RMX1901_defconfig

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Sepolicy
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# Inherit from the proprietary version
-include vendor/realme/RMX1901/BoardConfigVendor.mk
