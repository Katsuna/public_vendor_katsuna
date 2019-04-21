# Katsuna OS Versioning

major=2
feature=1
bug=0

if [ $TARGET_DEVICE = "bullhead" ]; then
    device=5X
elif [ $TARGET_DEVICE = "angler" ]; then
    device=6P
elif [ $TARGET_DEVICE = "taimen" ]; then
    device=P2XL
fi

ROM_NAME=Katsuna_OS_$major.$feature.$bug-$(date +%Y%m%d)
ROM_ZIP_NAME=Katsuna_OS_$device"_"$major.$feature.$bug-$(date +%Y%m%d)


if [ -n "$EXTRA_BUILD_TAG" ]; then
    ROM_NAME=$ROM_NAME-$EXTRA_BUILD_TAG
    ROM_ZIP_NAME=$ROM_ZIP_NAME-$EXTRA_BUILD_TAG
fi

ROM_VERSION=$ROM_NAME

export ROM_ZIP_NAME
export ROM_VERSION
