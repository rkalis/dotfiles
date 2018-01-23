function repo
    set -l repo_path (repodir $argv)
    echo "$repo_path"
    cd "$repo_path"
end
