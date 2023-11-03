# Enable App Locale Settings to all apps
PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.fflag.override.settings_app_locale_opt_in_enabled=false

# Enable lockscreen live wallpaper
PRODUCT_SYSTEM_PROPERTIES += \
    persist.wm.debug.lockscreen_live_wallpaper=true

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
