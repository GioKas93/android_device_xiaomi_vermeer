#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vermeer

# Inherit from sm8550-common
include device/xiaomi/sm8550-common/BoardConfigCommon.mk

# Display
TARGET_SCREEN_DENSITY := 530
TARGET_USE_YCRCB_CAMERA_ENCODE := true

# Kernel Modules
device_second_stage_modules := \
    wl2866d.ko \
    wl2868c.ko \
    xiaomi_touch.ko \
    goodix_ts.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES += $(addprefix $(KERNEL_PREBUILT_DIR)/vendor_dlkm/, $(device_second_stage_modules))
BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD += $(device_second_stage_modules)
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(device_second_stage_modules)

# OTA
TARGET_OTA_ASSERT_DEVICE := vermeer

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/configs/properties/odm.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop
