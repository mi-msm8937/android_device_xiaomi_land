/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/file.h>

#include <libinit_msm8937.h>

static void determine_device()
{
    std::string proc_cmdline;
    android::base::ReadFileToString("/proc/cmdline", &proc_cmdline, true);

    if (proc_cmdline.find("S88537AB1") != proc_cmdline.npos)
        set_ro_build_prop("model", "Redmi 3X", true);
    else
        set_ro_build_prop("model", "Redmi 3S", true);

    if (proc_cmdline.find("S88537AC1") != proc_cmdline.npos || proc_cmdline.find("S88537EC1") != proc_cmdline.npos)
        property_override("ro.vendor.fingerprint.supported", "0");
    else
        property_override("ro.vendor.fingerprint.supported", "1");
}

void vendor_load_properties() {
    determine_device();
    set_dalvik_heap_size();
#ifdef LIBINIT_MSM8937_MODS
    load_mods();
#endif
}
