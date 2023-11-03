# BtHelper
PRODUCT_PACKAGES += \
    BtHelper

# Camera
ifneq ($(PRODUCT_NO_CAMERA),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# GameSpace
PRODUCT_PACKAGES += \
    GameSpace

# SystemUI Flag configuration
PRODUCT_PACKAGES += \
    SystemUIFlagFlipper

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet

# TouchGestures
PRODUCT_PACKAGES += \
    TouchGestures
