function sway-query --no-scope-shadowing
    argparse t/type= -- $argv || return 1
    test -n "$_flag_t" || set -l _flag_t get_tree
    set -l vars (string replace -r '\.' '_' $argv[2..])
    set -e $vars
    swaymsg -t $_flag_t | jq -r -L $__fish_config_dir/functions "include \"sway\";
$argv[1] | $(printf '.%s\n' $argv[2..] | string join ', ')" | while read -Ll (printf '_%s\n' $vars)
        for var in $vars
            set key _$var
            set -a $var $$key
        end
    end
end
