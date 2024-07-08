if status is-interactive
    set -q FENGSHUI_CON_ID && return
    set termpid (ps -o ppid:1= --pid $fish_pid)
    and sway-query "all_nodes | select(.pid == $termpid)" id
    and set -gx FENGSHUI_CON_ID $id
end
