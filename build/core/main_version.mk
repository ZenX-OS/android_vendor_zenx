# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# ZenX-OS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.zenx.build.version=$(LINEAGE_VERSION) \
    ro.zenx.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.zenx.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(ZENX_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
