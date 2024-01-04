# Non-Runtime Resource Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/aosp/overlay

PRODUCT_PACKAGE_OVERLAYS += \
    vendor/aosp/overlay/common

# Cutout control overlay
PRODUCT_PACKAGES += \
    NoCutoutOverlay \
    DummyCutoutOverlay

# Hide navigation bar hint
PRODUCT_PACKAGES += \
    NavigationBarNoHintOverlay

# SystemUI Customisation
PRODUCT_PACKAGES += \
    SystemUICustomOverlay

# Settings Customisation
PRODUCT_PACKAGES += \
    SettingsCustomOverlay

# SettingsProvider Customisation
PRODUCT_PACKAGES += \
    SettingsProviderOverlay

# SettingsLib Customisation
PRODUCT_PACKAGES += \
    SettingsLibOverlay

# Shell Customisation
PRODUCT_PACKAGES += \
    ShellOverlay

# Themes
PRODUCT_PACKAGES += \
    AndroidBlackThemeOverlay
