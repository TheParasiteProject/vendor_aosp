TARGET_DEVICE_IS_TABLET := true

# Tablet extension
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full.mk)
$(call inherit-product, vendor/aosp/config/wifionly.mk)
