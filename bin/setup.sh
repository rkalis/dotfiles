#! /usr/bin/env sh

cd $(dirname "$0")

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/bin)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

mkdir -vp "$DESTINATION"

find . ! \( -name "setup.sh" -o -name ".*" \) | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
