#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/.hammerspoon)"

info "Setting up Hammerspoon..."

substep_info "Creating Hammerspoon folder..."
mkdir -p $DESTINATION

find * -maxdepth 0 -name "*.lua" -o -name "*.applescript" -o -name "*.js" -o -type d | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done
clear_broken_symlinks "$DESTINATION"

success "Finished setting up Hammerspoon."
