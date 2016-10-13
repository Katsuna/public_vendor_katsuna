# Inherit AOSP device configuration for mini emulator x86
$(call inherit-product, device/generic/mini-emulator-arm64/mini_emulator_arm64.mk)

# Inherit common product files.
$(call inherit-product, vendor/katsuna/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := katsuna_emulator_arm64
PRODUCT_BRAND := google
PRODUCT_DEVICE := mini-emulator-arm64
PRODUCT_MODEL := Katsuna EM arm64
PRODUCT_MANUFACTURER := Katsuna
