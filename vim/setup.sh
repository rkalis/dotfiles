#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

find . -name ".vim*" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
