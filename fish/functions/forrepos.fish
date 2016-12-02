function forrepos --description 'Evaluates $argv for all repo folders'
    for d in (find ~/repos -mindepth 2 -maxdepth 2 ! -path . -type d)
        pushd $d
        set repo (string split '/' $d)[-1]
        echo $repo
        eval (abbrex $argv)
        popd > /dev/null
    end
end
