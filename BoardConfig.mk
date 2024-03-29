#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
-include device/realme/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/rmx3371

# Display
TARGET_SCREEN_DENSITY := 450

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX3371,RE54E4L1

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 11270094848
BOARD_SUPER_PARTITION_SIZE := 11274289152

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Include the proprietary files BoardConfig.
-include vendor/realme/rmx3371/BoardConfigVendor.mk
