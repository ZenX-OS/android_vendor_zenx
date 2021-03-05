# Additional props
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.com.google.ime.theme_id=5 \
    ro.storage_manager.enabled=1 \
    ro.opa.eligible_device=true \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.network_required=false \
    ro.setupwizard.gservices_delay=-1 \
    ro.setupwizard.mode=OPTIONAL \
    setupwizard.feature.predeferred_enabled=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    keyguard.no_require_sim=true \
    persist.sys.disable_rescue=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.services.whitelist.packagelist=com.google.android.gms

# Blur
ifneq ($(TARGET_DISABLE_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1
endif

# Copy Zeus permissions!
PRODUCT_COPY_FILES += \
    vendor/lineage/etc/permissions/privapp-permissions-zeus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-zeus.xml

# AOSP packages
ifeq ($(ZEUS_BUILD_VARIANT), vanilla)
PRODUCT_PACKAGES += \
    Contacts \
    Etar \
    DeskClock \
    Dialer \
    Email \
    ExactCalculator \
    Exchange2 \
    messaging \
    SimpleGalleryPro
endif

# Extra packages
PRODUCT_PACKAGES += \
    ZeusThemesStub \
    ThemePicker \
    OmniJaws \
    Phonograph \
    OmniStyle \
    QuickAccessWallet \
    CustomDoze \
    SimpleDeviceConfig \
    LiveWallpapersPicker \
    WallpaperPicker2 \
    StitchImage \
    StitchImageService \
    GalleryGo \
    ZeusLauncher

# Fonts
PRODUCT_PACKAGES += \
    fonts_customization.xml \
    AccuratistFont \
    AclonicaFont \
    Amarante \
    BariolFont \
    CagliostroFont \
    CoconFont \
    ComfortaaFont \
    ComicSansFont \
    CoolstoryFont \
    ExotwoFont \
    Fifa2018Font \
    GoogleSansFont \
    GrandHotelFont \
    LatoFont \
    LGSmartGothicFont \
    LinotteFont \
    NokiaPureFont \
    NunitoFont \
    OneplusSlateFont \
    OswaldFont \
    QuandoFont \
    RedressedFont \
    ReemKufiFont \
    RobotoCondensedFont \
    RosemaryFont \
    RubikFont \
    SamsungOneFont \
    SonySketchFont \
    StoropiaFont \
    SurferFont \
    UbuntuFont

# UI Styles
PRODUCT_PACKAGES += \
    UiStyleDefault \
    UiStyleAOSP \
    UiStyleRoundMedium \
    UiStyleNoCornerRadius \
    UiStyleRoundLarge 

# Statusbar height
PRODUCT_PACKAGES += \
    StatusbarHeightDefault \
    StatusbarHeightSmall \
    StatusbarHeightMedium \
    StatusbarHeightLarge \
    StatusbarHeightExtraLarge \
    StatusbarHeightDualStatusbar
    
# Tiles themes
PRODUCT_PACKAGES += \
    QSTileCircleTrim \
    QSTileDualToneCircle \
    QSTileStar \
    QSTileSquare \
    QSTileGear \
    QSTileBadge \
    QSTileBadgetwo \
    QSTileDiamond \
    QSTileSquircleTrim \
    QSTileCookie \
    QSTileCircleOutline \
    QSTileInkdrop \
    QSTileWavey \
    QSTileAttemptMountain \
    QSTileDottedCircle \
    QSTileNinja \
    QSTileTriangles \
    QSTileNeonLight \
    QSTileOxygen \
    QSTileBottomTriangle

# Brightness sliders Styles
PRODUCT_PACKAGES += \
    BrightnessSliderDefault \
    BrightnessSliderDaniel \
    BrightnessSliderMemeMini \
    BrightnessSliderMemeRound \
    BrightnessSliderMemeRoundStroke \
    BrightnessSliderMemeStroke

# NavBar themes
PRODUCT_PACKAGES += \
    StockAsusOverlay \
    NavbarAsusOverlay \
    NavbarOnePlusOverlay \
    NavbarOneUiOverlay \
    NavbarTecnoCamonOverlay

# Navbar
PRODUCT_PACKAGES += \
	NavigationBarMode2ButtonOverlay \
	NavigationBarMode3ButtonOverlay \
	NavigationBarModeGesturalOverlay \
	NavigationBarModeGesturalOverlayNarrowBack \
	NavigationBarModeGesturalOverlayWideBack \
	NavigationBarModeGesturalOverlayExtraWideBack \
	GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden

# Icons
PRODUCT_PACKAGES += \
	IconPackCircularAndroidOverlay \
	IconPackCircularLauncherOverlay \
	IconPackCircularPixelLauncherOverlay \
	IconPackCircularPixelThemePickerOverlay \
	IconPackCircularSettingsOverlay \
	IconPackCircularSystemUIOverlay \
	IconPackCircularThemePickerOverlay \
	IconPackFilledAndroidOverlay \
	IconPackFilledLauncherOverlay \
	IconPackFilledPixelLauncherOverlay \
	IconPackFilledPixelThemePickerOverlay \
	IconPackFilledSettingsOverlay \
	IconPackFilledSystemUIOverlay \
	IconPackFilledThemePickerOverlay \
	IconPackRoundedAndroidOverlay \
	IconPackRoundedLauncherOverlay \
	IconPackRoundedPixelLauncherOverlay \
	IconPackRoundedPixelThemePickerOverlay \
	IconPackRoundedSettingsOverlay \
	IconPackRoundedSystemUIOverlay \
	IconPackRoundedThemePickerOverlay \
	IconShapeCylinderOverlay \
	IconShapeHeartOverlay \
	IconShapeMallowOverlay \
	IconShapePebbleOverlay \
	IconShapeRoundedHexagonOverlay \
	IconShapeRoundedRectOverlay \
	IconShapeSquareOverlay \
	IconShapeSquircleOverlay \
	IconShapeTaperedRectOverlay \
	IconShapeTeardropOverlay \
	IconShapeVesselOverlay

# Themes
PRODUCT_PACKAGES += \
    PitchBlackSystemOverlay \
    PitchBlackSystemUIOverlay \
    SolarizedDarkSystemOverlay \
    SolarizedDarkSystemUIOverlay \
    BakedGreenSystemOverlay \
    BakedGreenSystemUIOverlay \
    ChocoXSystemOverlay \
    ChocoXSystemUIOverlay \
    MaterialOceanSystemOverlay \
    MaterialOceanSystemUIOverlay \
    DarkGreySystemOverlay \
    DarkGreySystemUIOverlay

# Switch themes
PRODUCT_PACKAGES += \
    SwitchTelegram \
    SwitchMD2 \
    SwitchStock \
    Contained \
    Retro \
    Narrow

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/addons/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_COPY_FILES += \
    vendor/addons/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Favourite fonts
PRODUCT_COPY_FILES += \
    vendor/addons/fonts/Comic_Sans.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Comic_Sans.ttf \
    vendor/addons/fonts/Gobold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold.ttf \
    vendor/addons/fonts/Gobold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold-Italic.ttf \
    vendor/addons/fonts/GoboldBold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold.ttf \
    vendor/addons/fonts/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold-Italic.ttf \
    vendor/addons/fonts/GoboldThinLight.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight.ttf \
    vendor/addons/fonts/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight-Italic.ttf \
    vendor/addons/fonts/road_rage.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoadRage-Regular.ttf \
    vendor/addons/fonts/neoneon.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Neoneon-Regular.ttf \
    vendor/addons/fonts/mexcellent.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Mexcellent-Regular.ttf \
    vendor/addons/fonts/burnstown.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Burnstown-Regular.ttf \
    vendor/addons/fonts/dumbledor.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Dumbledor-Regular.ttf \
    vendor/addons/fonts/PhantomBold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/PhantomBold-Regular.ttf \
    vendor/addons/fonts/snowstorm.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Snowstorm-Regular.ttf \
    vendor/addons/fonts/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ThemeableFont-Regular.ttf \
    vendor/addons/fonts/Shamshung.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Shamshung.ttf \
    vendor/addons/fonts/Aclonica.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Aclonica.ttf \
    vendor/addons/fonts/Amarante.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Amarante.ttf \
    vendor/addons/fonts/Bariol-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Bariol.ttf \
    vendor/addons/fonts/Cagliostro-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Cagliostro-Regular.ttf \
    vendor/addons/fonts/Coolstory-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Coolstory-Regular.ttf \
    vendor/addons/fonts/LGSmartGothic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/LGSmartGothic.ttf \
    vendor/addons/fonts/Rosemary-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Rosemary-Regular.ttf \
    vendor/addons/fonts/SonySketch.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SonySketch.ttf \
    vendor/addons/fonts/Surfer.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Surfer.ttf \
    vendor/addons/fonts/CircularStd.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/CircularStd.ttf \
    vendor/addons/fonts/SlateForOnePlus-Black.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Black.ttf \
    vendor/addons/fonts/SlateForOnePlus-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Bold.ttf \
    vendor/addons/fonts/SlateForOnePlus-Book.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Book.ttf \
    vendor/addons/fonts/SlateForOnePlus-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Light.ttf \
    vendor/addons/fonts/SlateForOnePlus-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Medium.ttf \
    vendor/addons/fonts/SlateForOnePlus-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Regular.ttf \
    vendor/addons/fonts/SlateForOnePlus-Thin.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Thin.ttf \
    vendor/addons/fonts/SFProDisplay-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProDisplay-Regular.ttf \
    vendor/addons/fonts/SFProDisplay-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProDisplay-Medium.ttf \
    vendor/addons/fonts/SFProText-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProText-Regular.ttf \
    vendor/addons/fonts/SFProText-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProText-Medium.ttf \
    vendor/addons/fonts/FiraSans-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Bold.ttf \
    vendor/addons/fonts/FiraSans-BoldItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-BoldItalic.ttf \
    vendor/addons/fonts/FiraSans-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Italic.ttf \
    vendor/addons/fonts/FiraSans-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Medium.ttf \
    vendor/addons/fonts/FiraSans-MediumItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-MediumItalic.ttf \
    vendor/addons/fonts/FiraSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Regular.ttf \
    vendor/addons/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Regular.ttf \
    vendor/addons/fonts/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Medium.ttf \
    vendor/addons/fonts/GoogleSans-MediumItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-MediumItalic.ttf \
    vendor/addons/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Italic.ttf \
    vendor/addons/fonts/GoogleSans-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Bold.ttf \
    vendor/addons/fonts/Linotte.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Linotte.ttf \
    vendor/addons/fonts/GoogleSans-BoldItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-BoldItalic.ttf \
    vendor/addons/fonts/Comfortaa.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Comfortaa.ttf \
    vendor/addons/fonts/Storopia.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Storopia.ttf \
    vendor/addons/fonts/Ubuntu.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Ubuntu.ttf \
    vendor/addons/fonts/Exotwo.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Exotwo.ttf

# Fonts
PRODUCT_PACKAGES += \
    FontRubikRubikOverlay \
    FontArbutusSourceOverlay \
    FontArvoLatoOverlay \
    FontAclonicaSourceOverlay \
    FontAmaranteSourceOverlay \
    FontBariolSourceOverlay \
    FontCagliostroSourceOverlay \
    FontComicSansSourceOverlay \
    FontCoolstorySourceOverlay \
    FontGoogleSansSourceOverlay \
    FontLGSmartGothicSourceOverlay \
    FontNotoSerifSourceOverlay \
    FontRosemarySourceOverlay \
    FontSFProOverlay \
    FontSonySketchSourceOverlay \
    FontSurferSourceOverlay \
    FontCircularStdOverlay \
    FontSlateForOnePlusOverlay \
    FontSamsungOneSourceOverlay \
    FontComfortaaSourceOverlay \
    FontFiraSansSourceOverlay \
    FontExotwoSourceOverlay \
    FontStoropiaSourceOverlay \
    FontUbuntuSourceOverlay \
    FontLinotteOverlay
