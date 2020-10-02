PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/zenx/fonts,$(TARGET_COPY_OUT_PRODUCT)/fonts)

PRODUCT_COPY_FILES += \
    vendor/zenx/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Favourite fonts
PRODUCT_COPY_FILES += \
    vendor/zenx/fonts/Comic_Sans.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Comic_Sans.ttf \
    vendor/zenx/fonts/Gobold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold.ttf \
    vendor/zenx/fonts/Gobold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Gobold-Italic.ttf \
    vendor/zenx/fonts/GoboldBold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold.ttf \
    vendor/zenx/fonts/GoboldBold-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldBold-Italic.ttf \
    vendor/zenx/fonts/GoboldThinLight.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight.ttf \
    vendor/zenx/fonts/GoboldThinLight-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoboldThinLight-Italic.ttf \
    vendor/zenx/fonts/road_rage.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoadRage-Regular.ttf \
    vendor/zenx/fonts/neoneon.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Neoneon-Regular.ttf \
    vendor/zenx/fonts/mexcellent.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Mexcellent-Regular.ttf \
    vendor/zenx/fonts/burnstown.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Burnstown-Regular.ttf \
    vendor/zenx/fonts/dumbledor.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Dumbledor-Regular.ttf \
    vendor/zenx/fonts/PhantomBold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/PhantomBold-Regular.ttf \
    vendor/zenx/fonts/snowstorm.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Snowstorm-Regular.ttf \
    vendor/zenx/fonts/vcr_osd_mono.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/ThemeableFont-Regular.ttf \
    vendor/zenx/fonts/Shamshung.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Shamshung.ttf \
    vendor/zenx/fonts/Aclonica.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Aclonica.ttf \
    vendor/zenx/fonts/Amarante.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Amarante.ttf \
    vendor/zenx/fonts/Bariol-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Bariol.ttf \
    vendor/zenx/fonts/Cagliostro-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Cagliostro-Regular.ttf \
    vendor/zenx/fonts/Coolstory-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Coolstory-Regular.ttf \
    vendor/zenx/fonts/LGSmartGothic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/LGSmartGothic.ttf \
    vendor/zenx/fonts/Rosemary-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Rosemary-Regular.ttf \
    vendor/zenx/fonts/SonySketch.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SonySketch.ttf \
    vendor/zenx/fonts/Surfer.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Surfer.ttf \
    vendor/zenx/fonts/CircularStd.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/CircularStd.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Black.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Black.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Bold.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Book.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Book.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Light.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Medium.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Regular.ttf \
    vendor/zenx/fonts/SlateForOnePlus-Thin.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateForOnePlus-Thin.ttf \
    vendor/zenx/fonts/SFProDisplay-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProDisplay-Regular.ttf \
    vendor/zenx/fonts/SFProDisplay-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProDisplay-Medium.ttf \
    vendor/zenx/fonts/SFProText-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProText-Regular.ttf \
    vendor/zenx/fonts/SFProText-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SFProText-Medium.ttf \
    vendor/zenx/fonts/FiraSans-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Bold.ttf \
    vendor/zenx/fonts/FiraSans-BoldItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-BoldItalic.ttf \
    vendor/zenx/fonts/FiraSans-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Italic.ttf \
    vendor/zenx/fonts/FiraSans-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Medium.ttf \
    vendor/zenx/fonts/FiraSans-MediumItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-MediumItalic.ttf \
    vendor/zenx/fonts/FiraSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/FiraSans-Regular.ttf \
    vendor/zenx/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Regular.ttf \
    vendor/zenx/fonts/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Medium.ttf \
    vendor/zenx/fonts/GoogleSans-MediumItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-MediumItalic.ttf \
    vendor/zenx/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Italic.ttf \
    vendor/zenx/fonts/GoogleSans-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Bold.ttf \
    vendor/zenx/fonts/Linotte.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Linotte.ttf \
    vendor/zenx/fonts/GoogleSans-BoldItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-BoldItalic.ttf \
    vendor/zenx/fonts/Comfortaa.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Comfortaa.ttf \
    vendor/zenx/fonts/Storopia.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Storopia.ttf \
    vendor/zenx/fonts/Ubuntu.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Ubuntu.ttf \
    vendor/zenx/fonts/Exotwo.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Exotwo.ttf
