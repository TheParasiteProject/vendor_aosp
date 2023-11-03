# Enable Android Beam on all targets
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/android.software.nfc.beam.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.nfc.beam.xml

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.sip.voip.xml

# LineageHW
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/privapp-permissions-lineagehw.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-lineagehw.xml

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/custom-power-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/custom-power-whitelist.xml

# Keylayout
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:$(TARGET_COPY_OUT_PRODUCT)/usr/keylayout/Vendor_045e_Product_0719.kl \
    vendor/aosp/misc/keylayout/Vendor_2dc8_Product_6006.kl:$(TARGET_COPY_OUT_PRODUCT)/usr/keylayout/Vendor_2dc8_Product_6006.kl
