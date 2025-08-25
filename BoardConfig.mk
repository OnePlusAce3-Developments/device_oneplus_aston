#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8550-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/aston

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5D35L1,OP5CF9L1

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_NO_KERNEL_OVERRIDE := true
TARGET_FORCE_PREBUILT_KERNEL := true
PREBUILT_PATH := $(DEVICE_PATH)-prebuilt
TARGET_KERNEL_SOURCE := $(PREBUILT_PATH)/kernel-headers

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/aston/BoardConfigVendor.mk
