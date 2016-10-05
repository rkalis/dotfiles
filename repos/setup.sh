#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*
REPO_PATH=$(realpath ~/repos)

find * -name "*.list" | while read fn; do
    folder="${fn%.*}"
    mkdir -p "$REPO_PATH/$folder"
    while read repo; do
        if [[ $repo == $COMMENT ]];
        then continue; else
            repo_name=$(basename $repo .git)
            git clone $repo "$REPO_PATH/$folder/$repo_name"
        fi
    done < "$fn"
done
