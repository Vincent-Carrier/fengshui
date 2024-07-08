function sway-wait
    set events (jo -a (string split ',' $argv[1]))
    if set -q argv[2]
        swaymsg -t subscribe $events \
            | jq -r -L $__fish_config_dir/functions "include \"sway\"; $(jq-str change $argv[2..])"
    else
        swaymsg -qt subscribe $events
    end
end
