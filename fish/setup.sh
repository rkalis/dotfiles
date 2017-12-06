#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/symlink.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.config/fish)"

echo "Source path:\t\t $SOURCE"
echo "Destination path:\t $DESTINATION"

echo "Creating destination folders"
mkdir -vp "$DESTINATION/functions"
mkdir -vp "$DESTINATION/completions"

find * -name "*.fish" | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

grep /usr/local/bin/fish /etc/shells &> /dev/null
if [ $? -ne 0 ]; then
    sudo bash -c "echo /usr/local/bin/fish >> /etc/shells"
    sudo chsh -s /usr/local/bin/fish
fi

# Run setup
fish -c "setup"
