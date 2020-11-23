# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# AOSP packages
ifeq ($(ZENX_BUILD_VARIANT), vanilla)
PRODUCT_PACKAGES += \
    Contacts \
    Calendar \
    DeskClock \
    Dialer \
    Email \
    ExactCalculator \
    Exchange2 \
    messaging \
    SimpleGalleryPro \

endif

# Zenx Packages
PRODUCT_PACKAGES += \
    LatinIME \
    Recorder \
    LineageParts \
    LineageSettingsProvider \
    Profiles \
    Phonograph \
    Seedvault \
    GCamGo \
    SimpleGalleryPro \
    ZenxUpdater \
    CustomDoze \
    LiveWallpapersPicker \
    WallpaperPicker2 \
    OmniJaws \
    OmniStyle

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI \
    TrebuchetQuickStep

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
    setcap \
    unrar \
    vim \
    wget \
    zip

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

# These packages are excluded from user builds
PRODUCT_PACKAGES_DEBUG += \
    procmem

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# AOSP packages
PRODUCT_PACKAGES += \
    Terminal \
    LiveWallpapersPicker

# Themes
PRODUCT_PACKAGES += \
    LineageThemesStub \
    ThemePicker


# Include ZenX overlays
include packages/overlays/zenx/zenx_overlays.mk
