function sway-focus-nth --argument n
    sway-query 'nodes | select(.layout == "tabbed" and (nodes | contains({focused: true}))) | .nodes[]' id && swaymsg [con_id=$id[$n]] focus
end
