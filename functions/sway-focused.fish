function sway-focused
    test -z "$argv" && set argv id
    sway-query "all_nodes | select(.focused)" $argv
end