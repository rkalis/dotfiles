#! /usr/bin/env sh

function symlink() {
    OVERWRITTEN=""
    if [ -e "$2" ] || [ -h "$2" ]; then
        OVERWRITTEN="(Overwritten)"
        rm -r "$2"
    fi
    echo "$2 -> $1 $OVERWRITTEN"
    ln -s "$1" "$2"
}
