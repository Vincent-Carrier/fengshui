function sway-jump
   set marks a s d f g h j k l q w e r t y u i o p z x c v b n m
   set -q FENGSHUI_JUMP_MARKS && set marks $FENGSHUI_JUMP_MARKS
   sway-query 'focused_workspace | nodes | select(.layout == "tabbed") | .nodes[]' id
   set len (math min (count $marks), (count $id))
   for i in (seq $len)
       set -a addmsg "[con_id=$id[$i]] mark --add $marks[$i]"
   end
   swaymsg (string join '; ' $addmsg)
   swaymsg mode marks

   sway-wait mode
   for i in (seq $len)
       set -a clearmsg "[con_id=$id[$i]] mark --toggle $marks[$i]"
   end
   swaymsg (string join '; ' $clearmsg)
end
