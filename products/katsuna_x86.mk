# Inherit AOSP configuration for AOSP x86
$(call inherit-product, build/target/product/aosp_x86.mk)

# Inherit common product files.
$(call inherit-product, vendor/katsuna/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := katsuna_x86
PRODUCT_BRAND := google
PRODUCT_DEVICE := generic_x86
PRODUCT_MODEL := Katsuna on IA Emulator
PRODUCT_MANUFACTURER := Katsuna
