#! /vendor/bin/sh

# Remove settings cache and persistent_properties to avoid derps after dirty flash
rm -rf /data/resource-cache
rm -rf /data/system/package_cache
rm -rf /data/property/persistent_properties
