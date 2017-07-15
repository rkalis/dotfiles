function abbrex --description 'Utility for expanding abbreviations'
    # Saves all except first arg of expression in args
    set argc (count $argv)
    if test $argc -gt 1
        set args $argv[2..$argc]
    end
    # Checks if first arg is a known abbreviation
    set pattern "abbr $argv[1] "
    set abbr (abbr | grep $pattern)
    if test $abbr
        # Extracts abbreviated expression and replaces it in original expression
        set replacement (string replace -a "'" "" (string replace $pattern "" $abbr))
        echo $replacement $args
    else
        echo $argv
    end
end
