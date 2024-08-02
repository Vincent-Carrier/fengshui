function sway-opacity
    set opacity $FENGSHUI_OPACITY 0.9
    sway-sub window 'select(.change == "focus")' container.id | while read id
        swaymsg "[all] opacity set $opacity[1]; [con_id=__focused__] opacity set 1"
    end
end
