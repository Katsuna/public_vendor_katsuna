PRODUCT_BRAND ?= katsuna

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.control_privapp_permissions=enforce \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.katsuna.version=$(ROM_VERSION)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/katsuna/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Katsuna Apps
ifneq ($(AOSP_BUILD),true)
    PRODUCT_PACKAGES += \
        KatsunaCallsPrebuilt \
        KatsunaClockPrebuilt \
        KatsunaContactsPrebuilt \
        KatsunaInfoServicesPrebuilt \
        KatsunaKeyboardPrebuilt \
        KatsunaLauncherPrebuilt \
        KatsunaMessagesPrebuilt \
        KatsunaWidgetsPrebuilt
else
    PRODUCT_PACKAGES += \
        KatsunaCalls \
        KatsunaContacts \
        KatsunaInfoServices \
        KatsunaKeyboard \
        KatsunaLauncher \
        KatsunaMessages \
        KatsunaWidgets
endif

# AOSP only Katsuna Apps
# Currently, these apps are only makefile buildable
PRODUCT_PACKAGES += \
     KatsunaPartner \
     KatsunaSetupWizard \
     KatsunaUpdater

# Extra Packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    LiveWallpapersPicker \
    Stk \
    WallpaperPicker

# Vendor Packages
# Opera
PRODUCT_PACKAGES += \
    OperaPrebuilt \
    OperaDataPrebuilt

# Backuptool Support
PRODUCT_COPY_FILES += \
    vendor/katsuna/prebuilt/common/addon.d/50-katsuna.sh:system/addon.d/50-katsuna.sh \
    vendor/katsuna/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/katsuna/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions

#Default permission grant exceptions for Katsuna apps
PRODUCT_COPY_FILES += \
    vendor/katsuna/prebuilt/common/etc/default-permissions/katsuna-permissions.xml:system/etc/default-permissions/katsuna-permissions.xml

# Priv-app permission whitelisting (needed for 8.0+ for all permissions that need to be automatically granted
# to priv-apps, even if already signed with platform key and/or are privileged modules
PRODUCT_COPY_FILES += \
    vendor/katsuna/prebuilt/common/etc/permissions/privapp-permissions-katsuna.xml:system/etc/permissions/privapp-permissions-katsuna.xml

# Sign using our private keys
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/keys/releasekey
