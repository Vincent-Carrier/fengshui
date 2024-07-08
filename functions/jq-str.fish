function jq-str
    echo \"$(printf '\(.%s // "-")\n' $argv | string join \t)\"
end
