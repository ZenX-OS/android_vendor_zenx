#
# ZenX Audio Files
#

NOTIFICATION_PATH := vendor/lineage/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/lineage/prebuilt/common/media/audio/ringtones

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Blob.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Blob.ogg \
    $(NOTIFICATION_PATH)/Haaachii.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Haaachii.ogg \
    $(NOTIFICATION_PATH)/HuwaiP8.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/HuwaiP8.ogg \
    $(NOTIFICATION_PATH)/Sound.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Sound.ogg \
    $(NOTIFICATION_PATH)/SpielMirDasLied.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/SpielMirDasLied.ogg \
    $(NOTIFICATION_PATH)/Xperia.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Xperia.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/GameOfThronesRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/GameOfThronesRingtone.ogg \
    $(RINGTONE_PATH)/GoodBadAndUglyRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/GoodBadAndUglyRingtone.ogg \
    $(RINGTONE_PATH)/KillBillRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/KillBillRingtone.ogg \
    $(RINGTONE_PATH)/PunisherRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/PunisherRingtone.ogg \
    $(RINGTONE_PATH)/RockyRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/RockyRingtone.ogg \
    $(RINGTONE_PATH)/RomanticRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/RomanticRingtone.ogg \
    $(RINGTONE_PATH)/ShapeOfYouRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/ShapeOfYouRingtone.ogg \
    $(RINGTONE_PATH)/SoftRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/SoftRingtone.ogg \
    $(RINGTONE_PATH)/SpongebobTrapRemixRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/SpongebobTrapRemixRingtone.ogg \
    $(RINGTONE_PATH)/TwdRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/TwdRingtone.ogg \
    $(RINGTONE_PATH)/RamboIntro.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/RamboIntro.ogg \
    $(RINGTONE_PATH)/RamboBitteKommen.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/RamboBitteKommen.ogg

# Change default sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=PunisherRingtone.ogg \
    ro.config.notification_sound=HuwaiP8.ogg
