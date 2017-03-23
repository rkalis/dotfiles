#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/karabiner)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

find * -name "*.json" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
