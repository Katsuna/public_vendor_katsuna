PRODUCT_BRAND ?= katsuna

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.katsuna.version=katsuna_$(shell date +"%y%m%d")

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/katsuna/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Katsuna Apps
PRODUCT_PACKAGES += \
    KatsunaCalls \
    KatsunaContacts \
    KatsunaInfoServices \
    KatsunaKeyboard \
    KatsunaLauncher \
    KatsunaMessages \
    KatsunaServices \
    KatsunaSetupWizard \
    KatsunaUpdater \
    KatsunaVisual

# Extra Packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    LiveWallpapersPicker \
    Stk \
    WallpaperPicker

# Backuptool Support
PRODUCT_COPY_FILES += \
    vendor/katsuna/prebuilt/common/addon.d/50-katsuna.sh:system/addon.d/50-katsuna.sh \
    vendor/katsuna/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/katsuna/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
