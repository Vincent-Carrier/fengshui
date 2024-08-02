function sway-type
    set focused (sway-focused)
    swaymsg '[con_mark=\*] focus'
    wtype $argv
    swaymsg "[con_id=$focused] focus"
end
