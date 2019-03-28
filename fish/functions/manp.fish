function manp --description 'Opens a manpage in Preview'
    man -t $argv[1] | open -f -a Preview
end
