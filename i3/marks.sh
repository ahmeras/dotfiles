mark=`i3-msg -t get_marks | tr -d '[]"' | tr ',' '\n' | rofi -dmenu`
i3 [con_mark="$mark"] focus

