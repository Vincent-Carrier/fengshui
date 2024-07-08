function sway-focus-lock
    notify-send 'LOCK START'
    set id (sway-focused id)
    sway-sub window,binding change binding.command \
        | while read change cmd
        switch $change
            case focus
                swaymsg "[con_id=$id] focus"
            case run
                string match -qr '\bfocus\b' "$cmd" && break
        end
    end
    notify-send 'LOCK END'
end
