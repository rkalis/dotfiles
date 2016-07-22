#! /usr/bin/env sh

cd $(dirname "$0")

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/fish)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

mkdir -vp "$DESTINATION/functions"

find * -name "*.fish" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

if [ "$1" == "-chsh" ]; then
    sudo bash -c "echo /usr/local/bin/fish >> /etc/shells"
    sudo chsh -s /usr/local/bin/fish
fi
fish functions/setup.fish
