#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common landtoni-common
include device/xiaomi/landtoni-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/land

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Security patch level
VENDOR_SECURITY_PATCH := 2017-04-01

# Inherit from the proprietary version
include vendor/xiaomi/land/BoardConfigVendor.mk
