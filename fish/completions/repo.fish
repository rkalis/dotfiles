for repo in (find ~/repos -mindepth 2 -maxdepth 2 -type d)
    complete -f -c repo -a (basename "$repo")
end
