#! /usr/bin/env sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

DIR=$(dirname "$0")
cd "$DIR"

xcode-select --install

find * -name "setup.sh" | while read setup; do
    echo "./$setup"
    ./$setup -chsh
done
