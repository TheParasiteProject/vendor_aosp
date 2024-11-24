# Aperture
ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif #PRODUCT_NO_CAMERA

# Updater
ifneq ($(TARGET_INCLUDE_UPDATER),false)
PRODUCT_PACKAGES += \
    Updater
endif #TARGET_INCLUDE_UPDATER
