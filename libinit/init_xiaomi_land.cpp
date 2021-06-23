/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_utils.h>

#include "vendor_init.h"

#include <android-base/file.h>

static void determine_device()
{
    std::string proc_cmdline;
    android::base::ReadFileToString("/proc/cmdline", &proc_cmdline, true);
    if (proc_cmdline.find("S88537AB1") != proc_cmdline.npos)
        set_ro_build_prop("model", "Redmi 3X", true);
    else
        set_ro_build_prop("model", "Redmi 3S", true);
}

void vendor_load_properties() {
    determine_device();
    set_dalvik_heap();
}
