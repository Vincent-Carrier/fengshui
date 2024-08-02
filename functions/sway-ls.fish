function sway-ls
    sway-query 'all_nodes | select(.app_id)' id app_id name
    for i in (seq (count $id))
        printf "%-4i %-20s %-40s\n" "$id[$i]" "$app_id[$i]" "$name[$i]"
    end
end
