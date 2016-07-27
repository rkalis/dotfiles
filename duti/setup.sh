#! /usr/bin/env sh

cd $(dirname "$0")

find * -not -name "setup.sh" -not -name ".*" -type f | while read fn; do
    while read ext; do
        echo "duti -s $fn $ext all"
        duti -s $fn $ext all
    done < $fn
done
