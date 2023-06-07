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
