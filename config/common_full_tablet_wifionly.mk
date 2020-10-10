# Inherit full common Zenx stuff
$(call inherit-product, vendor/zenx/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Zenx LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/zenx/overlay/dictionaries
