# Enable Compose in SystemUI by default.
SYSTEMUI_USE_COMPOSE ?= true

# Reduce system server verbosity.
ifeq ($(TARGET_BUILD_VARIANT), user)
PRODUCT_SYSTEM_SERVER_DEBUG_INFO := false
endif

# EGL - Blobcache configuration
PRODUCT_VENDOR_PROPERTIES += \
    ro.egl.blobcache.multifile=true \
    ro.egl.blobcache.multifile_limit=33554432

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Inherit art options
include vendor/aosp/config/common/art.mk

# Inherit LMKD options
include vendor/aosp/config/common/lmkd.mk
