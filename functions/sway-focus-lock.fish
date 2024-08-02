function sway-focus-lock
    notify-send -t 1000 'FOCUS LOCK'
    set app_id (sway-focused app_id)
    swaymsg no_focus "[app_id=$app_id]"
end
