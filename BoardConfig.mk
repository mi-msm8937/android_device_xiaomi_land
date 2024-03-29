#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common landtoni-common
include device/xiaomi/landtoni-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/land

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_land
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_land

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2017-04-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/land/BoardConfigVendor.mk
