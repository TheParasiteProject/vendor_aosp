# Parasite Configurations
$(call inherit-product, vendor/parasite/common/config.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_PROPERTIES += \
    ro.control_privapp_permissions=enforce

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_PROPERTIES += ro.adb.secure=0
else
# Enable ADB authentication
PRODUCT_SYSTEM_PROPERTIES += ro.adb.secure=1

# Disable extra StrictMode features on all non-engineering builds
PRODUCT_SYSTEM_PROPERTIES += persist.sys.strictmode.disable=true
endif

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Apps
$(call inherit-product, vendor/aosp/config/common/apps.mk)

# Configs
$(call inherit-product, vendor/aosp/config/common/configs.mk)

# Fonts
$(call inherit-product, vendor/aosp/config/common/fonts.mk)

# Languages
$(call inherit-product, vendor/aosp/config/common/languages.mk)

# Optimisation
$(call inherit-product, vendor/aosp/config/common/optimisation.mk)

# Tools
$(call inherit-product, vendor/aosp/config/common/tools.mk)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
