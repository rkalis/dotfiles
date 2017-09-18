function forrepos --description 'Evaluates $argv for all repo folders'
    for d in (find ~/repos -mindepth 2 -maxdepth 2 ! -path . -type d)
        pushd $d
        set repo (basename $d)
        echo $repo
        eval (abbrex $argv)
        popd > /dev/null
    end
end
