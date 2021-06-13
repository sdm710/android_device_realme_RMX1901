#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=RMX1901
export DEVICE_COMMON=sdm710-common
export VENDOR=realme

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
