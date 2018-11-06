#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/Library/Application\ Support/Code/User)"

info "Setting up Visual Studio Code..."

substep_info "Creating Visual Studio Code folders..."
mkdir -p "$DESTINATION"

find * -not -name "$(basename ${0})" -type f | while read fn; do
    symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished setting up Visual Studio Code"
