# Charger
ifeq ($(WITH_ZENX_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.zenx
endif

include vendor/zenx/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/zenx/config/BoardConfigQcom.mk
endif

include vendor/zenx/config/BoardConfigSoong.mk
