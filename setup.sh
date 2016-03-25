#! /usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

DOTFILES=$(dirname "$0")

xcode-select --install
cd "$DOTFILES"
./install_brew.sh
osx/set_defaults.sh
packages/setup.py
fish/setup.py
git/setup.py
bin/setup.py
sublime/setup.py
