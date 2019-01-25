# Inherit AOSP device configuration for sailfish
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Inherit common product files.
$(call inherit-product, vendor/katsuna/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := katsuna_taimen
PRODUCT_BRAND := google
PRODUCT_DEVICE := taimen
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.1.0/OPM2.171026.006.H1/4833802:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.1.0 OPM2.171026.006.H1 4833802 release-keys"
