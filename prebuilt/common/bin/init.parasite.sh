#! /vendor/bin/sh

#
# Save build date property as file
#
if [ ! -f /data/system/build_date.txt ]; then
    getprop ro.system.build.date.utc>/data/system/build_date.txt
fi
build_date_file=`cat /data/system/build_date.txt`
build_date_prop=`getprop ro.system.build.date.utc`
# Compare build date before clean-up
if [ $build_date_prop != $build_date_file ]; then
    # Remove settings cache and persistent_properties to avoid derps after dirty flash
    rm -rf /data/resource-cache
    rm -rf /data/system/package_cache
    rm -rf /data/property/persistent_properties
    # Remove and update build date file
    rm -rf /data/system/build_date.txt
    getprop ro.system.build.date.utc>/data/system/build_date.txt
fi
