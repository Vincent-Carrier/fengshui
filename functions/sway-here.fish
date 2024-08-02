function sway-here
    test -n "$FENGSHUI_CON_ID" || return 1
    swaymsg [con_id=$FENGSHUI_CON_ID] $argv
end
