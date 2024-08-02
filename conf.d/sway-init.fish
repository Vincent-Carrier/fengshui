if status is-interactive
    not set -q FENGSHUI_CON_ID
    and set -gx FENGSHUI_CON_ID (sway-focused)
end
