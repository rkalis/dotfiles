#! /usr/bin/env sh

cd $(dirname "$0")

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.hammerspoon)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

find . -name "*.lua" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

find . -name "*.applescript" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
