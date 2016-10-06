function repo
    set -l repo_path (find ~/repos -mindepth 2 -maxdepth 2 -type d -name "*$argv*" | head -n 1)
    echo "found $repo_path"
    cd "$repo_path"
end
