# Enable App Locale Settings to all apps
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.fflag.override.settings_app_locale_opt_in_enabled=false

# Enable SystemUIDialog volume panel
PRODUCT_SYSTEM_PROPERTIES += \
    sys.fflag.override.settings_volume_panel_in_systemui=true

# One Handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

# Media
PRODUCT_SYSTEM_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Storage manager
PRODUCT_SYSTEM_PROPERTIES += \
    ro.storage_manager.enabled=true

# PixelPropsUtils
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.pihooks.enable?=true

# Default wifi country code
PRODUCT_SYSTEM_PROPERTIES += \
    ro.boot.wificountrycode?=00

# Diable phantom process monitoring
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.fflag.override.settings_enable_monitor_phantom_procs?=false
