# Launcher overlay
PRODUCT_PACKAGES += \
    NexusLauncherTabletOverlay

# Tablet extension
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit full common PixelExperience stuff
$(call inherit-product, vendor/aosp/config/common_full.mk)
