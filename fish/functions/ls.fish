function ls --description 'List contents of directory'
    set -l param --color=auto
    command ls $param $argv
end
