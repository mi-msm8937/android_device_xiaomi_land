#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_land.mk

COMMON_LUNCH_CHOICES := \
    lineage_land-user \
    lineage_land-userdebug \
    lineage_land-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/revengeos_land.mk

COMMON_LUNCH_CHOICES += \
    revengeos_land-user \
    revengeos_land-userdebug \
    revengeos_land-eng
