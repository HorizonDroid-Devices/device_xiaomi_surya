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

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Device identifier.
PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_GAPPS_ARCH := arm64

# Matrixx
MATRIXX_BUILD_TYPE := Community
MATRIXX_MAINTAINER := Inuo
MATRIXX_CHIPSET := SM6150
MATRIXX_BATTERY := 5160mah
MATRIXX_DISPLAY := 1080x2400

# Gapps
WITH_GMS := true
BUILD_GOOGLE_MESSAGE := true