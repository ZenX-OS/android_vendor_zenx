# Inherit common Zenx stuff
$(call inherit-product, vendor/zenx/config/common.mk)

# Inherit Zenx atv device tree
$(call inherit-product, device/zenx/atv/zenx_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Zenx packages
PRODUCT_PACKAGES += \
    AppDrawer \
    LineageCustomizer

DEVICE_PACKAGE_OVERLAYS += vendor/zenx/overlay/tv
