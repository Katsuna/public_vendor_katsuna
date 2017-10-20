# Katsuna OS Versioning

major=1
feature=1
bug=0

if [ $TARGET_DEVICE = "bullhead" ]; then
    device=5X
elif [ $TARGET_DEVICE = "angler" ]; then
    device=6P
fi

ROM_NAME=Katsuna_OS_$major.$feature.$bug-$(date +%Y%m%d)
ROM_ZIP_NAME=Katsuna_OS_$device"_"$major.$feature.$bug-$(date +%Y%m%d)


if [ -n "$BUILD_TAG" ]; then
    ROM_NAME=$ROM_NAME-$BUILD_TAG
    ROM_ZIP_NAME=$ROM_ZIP_NAME-$BUILD_TAG
fi

ROM_VERSION=$ROM_NAME

export ROM_ZIP_NAME
export ROM_VERSION
