include vendor/zenx/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/zenx/config/BoardConfigQcom.mk
endif

include vendor/zenx/config/BoardConfigSoong.mk
