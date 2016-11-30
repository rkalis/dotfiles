function repo
    set -l repo_base ~/repos
    set -l repo_path (find "$repo_base" -mindepth 2 -maxdepth 2 -type d -name "*$argv*" | head -n 1)
    if not test "$argv"; or not test "$repo_path"
        cd "$repo_base"
    else
        echo "found $repo_path"
        cd "$repo_path"
    end
end
