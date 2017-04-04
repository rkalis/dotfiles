#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*

find * -name "*.list" | while read fn; do
    envspec="${fn%.*}"
    envarray=($envspec)
    envname=${envarray[0]}
    echo "conda create -n $envspec"
    conda create -n $envspec
    echo "conda activate $envname"
    conda activate $envname
    while read package; do
        if [[ $package == $COMMENT ]];
        then continue
        fi
        echo "conda install $package"
        conda install $package
    done < "$fn"
    echo "conda deactivate $envname"
    conda deactivate $envname
done
