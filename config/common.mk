# Branding
$(call inherit-product, vendor/aosp/config/branding.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.android.dataroaming=false \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true

# Enforce privapp-permissions whitelist
PRODUCT_SYSTEM_PROPERTIES += \
    ro.control_privapp_permissions=enforce

ifeq ($(TARGET_BUILD_VARIANT),eng)
# Disable ADB authentication
PRODUCT_SYSTEM_PROPERTIES += ro.adb.secure=0
PRODUCT_SYSTEM_PROPERTIES += ro.adb.secure.recovery=0
else
# Enable ADB authentication
PRODUCT_SYSTEM_PROPERTIES += ro.adb.secure=1

# Disable extra StrictMode features on all non-engineering builds
PRODUCT_SYSTEM_PROPERTIES += persist.sys.strictmode.disable=true
endif

# Sensors
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor

# Apps
$(call inherit-product, vendor/aosp/config/common/apps.mk)

# Configs
$(call inherit-product, vendor/aosp/config/common/configs.mk)

# Fonts
$(call inherit-product, vendor/aosp/config/common/fonts.mk)

# GMS
$(call inherit-product, vendor/google/gms/products/gms.mk)

# Languages
$(call inherit-product, vendor/aosp/config/common/languages.mk)

# Microsoft
$(call inherit-product-if-exists, vendor/microsoft/packages.mk)

# Optimisation
$(call inherit-product, vendor/aosp/config/common/optimisation.mk)

# Parasite vendor configurations
$(call inherit-product, vendor/parasite/common.mk)

# Properties
$(call inherit-product, vendor/aosp/config/common/properties.mk)

# Overlays
$(call inherit-product, vendor/aosp/config/common/overlays.mk)

# Tools
$(call inherit-product, vendor/aosp/config/common/tools.mk)

-include $(WORKSPACE)/build_env/image-auto-bits.mk
