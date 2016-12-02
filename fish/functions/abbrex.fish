function abbrex --description 'Utility for expanding abbreviations'
    set argc (count $argv)
    if test $argc -gt 1
        set args $argv[2..$argc]
    end
    set pattern "abbr $argv[1] "
    set abbr (abbr | grep $pattern)
    if test $abbr
        set replacement (string replace -a "'" "" (string replace $pattern "" $abbr))
        echo $replacement $args
    else
        echo $argv
    end
end
