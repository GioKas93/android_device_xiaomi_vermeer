#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8550-common
$(call inherit-product, device/xiaomi/sm8550-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/xiaomi/vermeer/vermeer-vendor.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Kernel Binary
KERNEL_PREBUILT_DIR := device/xiaomi/vermeer-kernel

# Overlays
PRODUCT_PACKAGES += \
    VermeerFrameworks \
    VermeerSettings23113RKC6C \
    VermeerSettings23113RKC6G \
    VermeerSettingsProvider23113RKC6C \
    VermeerSettingsProvider23113RKC6G \
    VermeerSystemUI \
    VermeerWifiRes23113RKC6C \
    VermeerWifiRes23113RKC6G \
    VermeerWifiResMainline23113RKC6C \
    VermeerWifiResMainline23113RKC6G \

# Properties
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/properties/odm_CN.prop:$(TARGET_COPY_OUT_ODM)/etc/build_CN.prop \
    $(LOCAL_PATH)/configs/properties/odm_GL.prop:$(TARGET_COPY_OUT_ODM)/etc/build_GL.prop
