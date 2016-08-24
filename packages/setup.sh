#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*

sudo -v

find * -name "*.list" | while read fn; do
    cmd="${fn%.*}"
    while read package; do
        if [[ $package == $COMMENT ]];
        then continue; else
            echo "$cmd install $package"
            $cmd install $package
        fi
    done < "$fn"
done
