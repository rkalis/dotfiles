#! /usr/bin/env sh

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cd $(dirname "$0")

xcode-select --install
./install_brew.sh
osx/set_defaults.sh
packages/setup.sh
fish/setup.sh
git/setup.sh
bin/setup.sh
sublime/setup.sh
