# Inherit AOSP device configuration for mini emulator x86
$(call inherit-product, device/generic/mini-emulator-x86/mini_emulator_x86.mk)

# Inherit common product files.
$(call inherit-product, vendor/katsuna/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := katsuna_emulator_x86
PRODUCT_BRAND := google
PRODUCT_DEVICE := mini-emulator-x86
PRODUCT_MODEL := Katsuna EM x86
PRODUCT_MANUFACTURER := Katsuna
