include vendor/aosp/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include hardware/qcom-caf/common/BoardConfigQcom.mk
endif

# Custom AVB Key
ifeq ($(TARGET_USES_CUSTOM_AVB_KEY),true)
include vendor/aosp/config/BoardConfigAvb.mk
endif

include vendor/aosp/config/BoardConfigSoong.mk

# Certification
include vendor/certification/BoardConfig.mk
