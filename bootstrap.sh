#! /usr/bin/env sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

DIR=$(dirname "$0")
cd "$DIR"

xcode-select --install

# Package control must be executed first in order for the rest to work
echo "./packages/setup.sh"
./packages/setup..sh

find * -name "setup.sh" -not -wholename "packages*" | while read setup; do
    echo "./$setup"
    ./$setup -chsh
done
