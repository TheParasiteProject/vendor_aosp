# # Battery Status Viewer
# PRODUCT_PACKAGES += \
#     BatteryStatsViewer

# # BtHelper
# PRODUCT_PACKAGES += \
#     BtHelper

# # Camera
# ifneq ($(PRODUCT_NO_CAMERA),true)
# ifneq ($(TARGET_INCLUDE_APERTURE),false)
# PRODUCT_PACKAGES += \
#     Aperture

# PRODUCT_PACKAGES += \
#     PixelConfigOverlayAperture \
#     PixelLauncherCustomOverlayAperture \
#     SystemUICustomOverlayAperture
# endif #TARGET_INCLUDE_APERTURE
# endif #PRODUCT_NO_CAMERA

# # SystemUI Flag configuration
# PRODUCT_PACKAGES += \
#     SystemUIFlagFlipper

# # SystemUI plugins
# PRODUCT_PACKAGES += \
#     QuickAccessWallet

# # TouchGestures
# PRODUCT_PACKAGES += \
#     TouchGestures

# # Updater
# ifneq ($(TARGET_INCLUDE_UPDATER),false)
# PRODUCT_PACKAGES += \
#     Updater
# endif #TARGET_INCLUDE_UPDATER

# # Face Unlock
# ifeq ($(TARGET_SUPPORTS_64_BIT_APPS),true)
# TARGET_FACE_UNLOCK_SUPPORTED ?= true

# PRODUCT_PACKAGES += \
#     AOSPASettingsOverlay

# ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
# PRODUCT_PACKAGES += \
#     ParanoidSense

# PRODUCT_SYSTEM_PROPERTIES += \
#     ro.face.sense_service=$(TARGET_FACE_UNLOCK_SUPPORTED)

# PRODUCT_COPY_FILES += \
#     frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
# endif
# endif
