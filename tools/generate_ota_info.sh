#!/bin/sh
if [ "$1" ]
then
  file_path=$1
  filename=$(basename "$file_path")
  if [ -f $file_path ]; then
    version=$(grep ro\.zenx\.base\.version $OUT/system/build.prop | cut -d= -f2);
    romtype=$(echo $ZENX_BUILD_TYPE);
    size=$(stat -c%s $file_path);
    datetime=$(grep ro\.build\.date\.utc $OUT/system/build.prop | cut -d= -f2);
    id=$(sha256sum $file_path | awk '{ print $1 }');
    url="https://sourceforge.net/projects/zenx-os/files/$ZENX_BUILD/$filename/download";
    echo "{\n  \"response\": [\n    {\n      \"filename\": \"$filename\",\n      \"version\": \"v$version\",\n      \"romtype\": \"$romtype\",\n      \"size\": \"$size\",\n      \"datetime\": $datetime,\n      \"id\": \"$id\",\n      \"url\": \"$url\"\n    }\n  ]\n}" > $OUT/$ZENX_BUILD.json
  fi
fi