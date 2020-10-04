ADDITIONAL_BUILD_PROPERTIES += \
  ro.zenx.version=$(ZENX_DISPLAY_VERSION) \
  ro.zenx.build.status=$(ZENX_BUILDTYPE) \
  ro.zenx.changelog.version=Changelog-$(ZENX_VERSION) \
  ro.zenx.fingerprint=$(ZENX_FINGERPRINT) \
  ro.zenx.static.version=$(ZENX_VERSION_STATIC) \
  ro.zenx.build.variant=$(ZENX_BUILD_VARIANT)
