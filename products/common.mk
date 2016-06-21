# Generic product
PRODUCT_NAME := katsuna
PRODUCT_BRAND := katsuna
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.config.alarm_alert=Oxygen.ogg \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.adb.secure=1

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/katsuna/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# PreBuilt Katsuna apps
PRODUCT_COPY_FILES += \
    vendor/katsuna/prebuilt/common/app/Keyboard.apk:system/app/Keyboard/Keyboard.apk \
    vendor/katsuna/prebuilt/common/app/Messages.apk:system/app/Messages/Messages.apk

# Extra Packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Launcher3 \
    LiveWallpapersPicker \
    Stk \
    Updater \
    WallpaperPicker
