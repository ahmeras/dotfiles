CURR=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true) | .num')

i3-input -F "rename workspace to ${CURR}:${CURR}%s" -P 'New name: '
