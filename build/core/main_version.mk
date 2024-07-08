# Build fingerprint
ifeq ($(BUILD_FINGERPRINT),)
BUILD_NUMBER_CUSTOM := $(shell date -u +%H%M)
CUSTOM_DEVICE ?= $(TARGET_DEVICE)
BUILD_SIGNATURE_KEYS := release-keys
BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(CUSTOM_DEVICE)/$(CUSTOM_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER_CUSTOM):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
endif
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES  += \
    persist.vendor.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.custom.brand=$(CUSTOM_BRAND) \
    ro.custom.build.version=$(CUSTOM_BUILD_VERSION) \
    ro.custom.build_date=$(CUSTOM_BUILD_DATE) \
    ro.custom.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    ro.custom.releasetype=$(CUSTOM_RELEASETYPE)
