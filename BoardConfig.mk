#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8956-common
-include device/xiaomi/msm8956-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/helium

# Assertions
TARGET_OTA_ASSERT_DEVICE := helium

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26705099776 # 26705116160 - 16384

# Kernel
TARGET_KERNEL_CONFIG := lineageos_helium_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8956
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Tap-to-Wake
TARGET_TAP_TO_WAKE_NODE := "/proc/touchpanel/double_tap_enable"

# Sepolicy
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# inherit from the proprietary version
-include vendor/xiaomi/helium/BoardConfigVendor.mk

# Security patch level
VENDOR_SECURITY_PATCH := 2021-04-05
