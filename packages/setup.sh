#! /usr/bin/env bash

cd $(dirname "$0")

BREW_CASK="brew-cask.list"
BREW="brew.list"
GEM="gem.list"
HAXELIB="haxelib.list"
NPM="npm.list"
PIP="pip.list"

COMMENT=\#*

sudo -v

while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        brew install $package
    fi
done < $BREW

while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        brew cask install $package
    fi
done < $BREW_CASK

pip install --upgrade pip
pip3 install --upgrade pip
while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        pip install $package
        pip3 install $package
    fi
done < $PIP

while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        npm install -g $package
    fi
done < $NPM

while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        sudo gem install $package
    fi
done < $GEM

while read package; do
    if [[ $package == $COMMENT ]];
    then continue; else
        echo "Installing $package"
        haxelib install $package
    fi
done < $HAXELIB
