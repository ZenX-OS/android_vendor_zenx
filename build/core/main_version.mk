# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Zeus-OS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.zeus.build.version=$(LINEAGE_VERSION) \
    ro.zeus.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.zeus.releasetype=$(ZEUS_BUILDTYPE) \
    ro.zeus.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(ZEUS_VERSION) \
    ro.zeus.build.variant=$(ZEUS_BUILD_VARIANT) \


# LineageOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
