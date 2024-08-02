function sway-move --argument to_x to_y
    sway-query -t get_outputs '.[] | select(.focused) | .rect' width height
    set screen_width $width
    set screen_height $height

    sway-query 'all_nodes | select(.focused) | .rect' width height

    test "$to_x" -lt 0 && set to_x (math $screen_width - $width + $to_x)
    test "$to_y" -lt 0 && set to_y (math $screen_height - $height + $to_y)

    test $to_x -lt 0 -o $to_x -ge $screen_width \
        -o $to_y -lt 0 -o $to_y -ge $screen_height && return 1

    swaymsg move absolute position $to_x $to_y
end
