export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/vim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

alias swork='ssh tower'
alias ll='ls -lart'
#alias handbrake='/usr/bin/ghb'
alias sshwork='ssh rahmed@rahmedlinux.ldn-off.tower-research.com'
alias vpn='forticlientsslvpn_cli --server vpn.tower-research.com:443 --vpnuser rahmed'
alias sp='sudo pacman'


function taskadd(){
    task add priority:$1 project:$2 tag:$3 $4
}

function tml {
    PS3="Select session: "
    select session in `tmux list-sessions | cut -f1 -d:`
    do
        echo $session
        tmux attach -t $session
        exit
    done
}
alias tmk='tmux kill-server'
function tms {
    tmux attach -t $1
}

function tmn {
    if [ -z $2 ]; then
        tmux new-session  -s $1
    else
        tmux new-session -s $1 -c $2 $3
    fi
}

alias vim='nvim'
alias nvimc='nvim ~/.config/nvim'
