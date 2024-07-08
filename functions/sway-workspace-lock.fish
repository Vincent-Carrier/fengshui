function sway-workspace-lock
    swaymsg -mt subscribe '["workspace"]' \
        | jq --unbuffered -r '.change, .old.num, .current.num' \
        | while read -L change old current
        test "$change" != focus && continue
        not contains $current $argv && continue
        sleep 1
        swaymsg "workspace number $old"
    end
end
