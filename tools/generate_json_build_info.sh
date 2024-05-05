#!/bin/bash
# shellcheck enable=avoid-nullary-conditions

GREEN="\033[1;32m"
YELLOW="\033[1;33m"
NC="\033[0m"

file_path=$1
if [[ -f $file_path ]]; then
    echo "Generating .json"
    file_name=$(basename "$file_path")
    device_name=$(echo "$file_name" | cut -d'_' -f2 | cut -d'-' -f1)
    buildprop=${OUT_DIR:-out}/target/product/$device_name/system/build.prop
    file_size=$(stat -c %s "$file_path")
    sha256=$(cut -d' ' -f1 "$file_path".sha256sum)
    datetime=$(grep -w "ro\\.build\\.date\\.utc=.*" "$buildprop" | cut -d= -f2)
    version=$(grep -w "ro\\.custom\\.version=.*" $buildprop | cut -d= -f2)
    link="https://sourceforge.net/projects/theparasiteproject/files/${device_name}/${file_name}/download"
    cat >"$file_path".json <<JSON
{
  "response": [
    {
      "datetime": $datetime,
      "filename": "$file_name",
      "id": "$sha256",
      "romtype": "release",
      "size": $file_size,
      "url": "$link",
      "version": "$version"
    }
  ]
}
JSON
    mv "$file_path".json "${OUT_DIR:-out}"/target/product/"$device_name"/update.json
    echo -e "${GREEN}Done generating update.json for $device_name"
fi
