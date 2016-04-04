#! /usr/bin/env sh

cd $(dirname "$0")

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

mkdir -vp "$DESTINATION/Projects"

# Move new .sublime-* files to the dotfiles folder
cd "$DESTINATION"
find . -name "*.sublime-*" -type f ! \( -name "*workspace*" \) | while read fn; do
    echo "Moving $fn to $SOURCE"
    mv "$DESTINATION/$fn" "$SOURCE/$fn"
done

cd "$SOURCE"
find . -name "*.sublime-*" | while read fn; do
        symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
