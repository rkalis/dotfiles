#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/bin)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

mkdir -vp "$DESTINATION"

find * -not -name "setup.sh" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
