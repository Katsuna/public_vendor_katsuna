# Inherit AOSP device configuration for angler
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit common product files.
$(call inherit-product, vendor/katsuna/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := katsuna_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.0/NRD90U/3155372:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.0 NRD90U 3155372 release-keys"
