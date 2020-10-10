# Inherit common mobile Zenx stuff
$(call inherit-product, vendor/zenx/config/common.mk)

# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Hassium.ogg

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.dun.override=0
endif

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Custom off-mode charger
ifeq ($(WITH_ZENX_CHARGER),true)
PRODUCT_PACKAGES += \
    zenx_charger_res_images \
    font_log.png \
    libhealthd.zenx
endif

# Customizations
PRODUCT_PACKAGES += \
    LineageNavigationBarNoHint

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true
