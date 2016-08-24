#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.hammerspoon)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

find * -name "*.lua" -o -name "*.applescript" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
