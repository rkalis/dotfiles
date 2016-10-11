#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.atom)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

echo "Creating destination folders"
mkdir -vp "$DESTINATION"

find * -not -name "setup.sh" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done


### OLD SUBLIME SETUP ###

# cd "$DESTINATION"
# find * -name "*.sublime-*" -type f ! \( -name "*workspace*" \) | while read fn; do
#     echo "Moving $fn to $SOURCE"
#     mv "$DESTINATION/$fn" "$SOURCE/$fn"
# done
#
# cd "$SOURCE"
# find * -name "*.sublime-*" | while read fn; do
#         symlink "$SOURCE/$fn" "$DESTINATION/$fn"
# done
