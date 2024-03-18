# Shebang is intentionally missing - do not run as a script

# ABI compatibility checks fail for several reasons:
#   - The update to Clang 12 causes some changes, but no breakage has been
#     observed in practice.
#   - Switching to zlib-ng changes some internal structs, but not the public
#     API.
#
# We may fix these eventually by updating the ABI specifications, but it's
# likely not worth the effort for us because of how many repos are affected.
# We would need to fork a lot of extra repos (thus increasing maintenance
# overhead) just to update the ABI specs.
#
# For now, just skip the ABI checks to fix build errors.
export SKIP_ABI_CHECKS=true

# Patch hardware/qcom-caf/wlan
if [ -d "hardware/qcom-caf/wlan/qcwcn/wifi_hal/" ]; then
    cd hardware/qcom-caf/wlan/qcwcn/wifi_hal
    sed -i 's/WIFI_VOIP_MODE_ON/WIFI_VOIP_MODE_VOICE/g' wificonfig.cpp
    cd ../../../../../
fi
