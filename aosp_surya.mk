#
# Copyright (C) 2020-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Horizondroid stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Horizon
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer
HORIZON_MAINTAINER := Skyy | HinohArata
HORIZON_BUILD_TYPE := OFFICIAL

# Device Identifier.
PRODUCT_NAME := aosp_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Gapps
WITH_GMS := true

# Camera
TARGET_USES_MIUI_CAMERA := true 
