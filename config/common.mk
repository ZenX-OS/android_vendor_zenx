# Allow vendor/extra to override any property by setting it first
$(call inherit-product-if-exists, vendor/extra/product.mk)

$(call inherit-product-if-exists, external/motorola/faceunlock/config.mk)

PRODUCT_BRAND ?= ZenX-OS

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    ro.setupwizard.rotation_locked=true

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=0
else
# Enable ADB authentication
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/zenx/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/zenx/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/zenx/prebuilt/common/bin/50-zenx.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-zenx.sh \

ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_COPY_FILES += \
    vendor/zenx/prebuilt/common/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    vendor/zenx/prebuilt/common/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    vendor/zenx/prebuilt/common/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.ota.allow_downgrade=true
endif
endif

# system mount
PRODUCT_COPY_FILES += \
    vendor/zenx/build/tools/system-mount.sh:install/bin/system-mount.sh

# priv-app whitelist
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/backup.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/backup.xml

# ZenX-specific broadcast actions whitelist
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/zenx-sysconfig.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/zenx-sysconfig.xml

# Copy all ZenX-specific init rc files
$(foreach f,$(wildcard vendor/zenx/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):$(TARGET_COPY_OUT_SYSTEM)/etc/init/$(notdir $f)))

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/zenx/prebuilt/common/lib/content-types.properties:$(TARGET_COPY_OUT_SYSTEM)/lib/content-types.properties

# Enable Android Beam on all targets
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/android.software.nfc.beam.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.nfc.beam.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/Vendor_045e_Product_0719.kl

# This is ZenX!
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/privapp-permissions-zenx-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-zenx.xml \
    vendor/zenx/config/permissions/privapp-permissions-zenx-system.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-zenx.xml

# Hidden API whitelist
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/zenx-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/zenx-hiddenapi-package-whitelist.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/zenx/config/permissions/zenx-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/zenx-power-whitelist.xml

# Include Google fonts
include vendor/zenx/config/fonts.mk

# Gestures
PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural

# Markup libs
PRODUCT_COPY_FILES += \
    vendor/zenx/prebuilt/common/lib/libsketchology_native.so:$(TARGET_COPY_OUT_PRODUCT)/lib/libsketchology_native.so \
    vendor/zenx/prebuilt/common/lib64/libsketchology_native.so:$(TARGET_COPY_OUT_PRODUCT)/lib64/libsketchology_native.so

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/zenx/config/twrp.mk
endif

# Do not include art debug targets
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Bootanimation
PRODUCT_PACKAGES += \
    bootanimation.zip

# AOSP packages
PRODUCT_PACKAGES += \
    ExactCalculator \
    Exchange2 \
    Terminal \
    ThemePicker

# ZenX packages
PRODUCT_PACKAGES += \
    Browser \
    CustomDoze \
    GalleryGoPrebuilt \
    NexusLauncherRelease \
    OmniStyle \
    PixelThemesStub2019 \
    SoundPickerPrebuilt \
    StitchImage

# Include ZenX Switch Styles
include vendor/zenx/themes/Switch/switch.mk

# Include ZenX Tiles Styles
include vendor/zenx/themes/Tiles/tiles.mk

# Include ZenX UI Styles
include vendor/zenx/themes/UI/ui.mk

# Include ZenX Brightness Slider Styles
include vendor/zenx/themes/BrightnessSlider/slider.mk

# Include ZenX Nav bar Styles
include vendor/zenx/themes/Navbar/navbar.mk

# Overlays
PRODUCT_PACKAGES += \
    NexusLauncherReleaseOverlay

# Extra tools in ZenX
PRODUCT_PACKAGES += \
    PrimaryColorCharcoalOverlay \
    PrimaryColorFlameOverlay \
    PrimaryColorGrayOverlay \
    PrimaryColorNatureOverlay \
    PrimaryColorOceanOverlay

# LatinIME lib
ifneq ($(WITH_GAPPS),true)
PRODUCT_PACKAGES += \
    libjni_latinimegoogle
endif

# Cutout control overlays
PRODUCT_PACKAGES += \
    HideCutout \
    StatusBarStock

# Extra tools in Zenx
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

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

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Lawnchair
ifeq ($(LAWNCHAIR_OPTOUT),)
   include vendor/lawnchair/lawnchair.mk
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.boot.vendor.overlay.theme=com.potato.overlay.lawnconf

# Lawnchair Default Configuration
ifeq ($(LAWNCHAIR_OPTOUT),)
PRODUCT_PACKAGES += \
    LawnConf
endif

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# These packages are excluded from user builds
PRODUCT_PACKAGES_DEBUG += \
    procmem

# Root
PRODUCT_PACKAGES += \
    adb_root
ifneq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI \
    NexusLauncherRelease

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/zenx/overlay
DEVICE_PACKAGE_OVERLAYS += vendor/zenx/overlay/common

# Build Update app only if Official
ifeq ($(ZENX_BUILD_TYPE), Official)
PRODUCT_PACKAGES += \
    OpenDelta
endif

# OPLauncher
ifeq ($(LAWNCHAIR_OPTOUT), true)
include vendor/oplauncher/OPLauncher2.mk
endif

# Face Unlock
ifeq ($(ZENX_BUILD_TYPE), Official)
TARGET_FACE_UNLOCK_SUPPORTED := true
ifneq ($(TARGET_DISABLE_ALTERNATIVE_FACE_UNLOCK), true)
PRODUCT_PACKAGES += \
    FaceUnlockService
TARGET_FACE_UNLOCK_SUPPORTED := true
endif
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face.moto_unlock_service=$(TARGET_FACE_UNLOCK_SUPPORTED)
endif

# Allows registering device to Google easier for gapps
# Integrates package for easier Google Pay fixing
PRODUCT_PACKAGES += \
    sqlite3

# GApps
ifeq ($(WITH_GAPPS),true)
include vendor/gapps/config.mk
endif

-include packages/apps/Plugins/plugins.mk

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/zenx/config/partner_gms.mk
-include vendor/zenx/config/version.mk
