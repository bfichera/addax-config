# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
unsetopt autocd beep extendedglob nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bfichera/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
# PS1='%n@%h>'

autoload -Uz promptinit
promptinit
prompt walters

# export LS_COLORS="$(vivid generate solarized-dark)"
. /usr/share/LS_COLORS/dircolors.sh

alias mv="mv -vi"
alias rm="rm -v"
alias mitvpn="gp-saml-gui -S --gateway us-northeast-mit-1015.gpoyosn52nnn.gw.gpcloudservice.com -- --csd-wrapper=/usr/lib/openconnect/hipreport.sh"
alias office="ssh -p 13802 bfichera@bfichera-office-arch.mit.edu"
alias cloud="ssh -o TCPKeepAlive=yes -o ServerAliveCountMax=5760 -o ServerAliveInterval=15 bfichera@txe1-login.mit.edu"
alias config='/usr/bin/git --git-dir=/home/bfichera/.cfg --work-tree=/home/bfichera'
alias freecad='exec=/usr/bin/env QT_SCALE_FACTOR=0.6 /usr/bin/freecad'

function cdproj() {
    cd $HOME/data/projects/$1
}

function wifi-home() {
    sudo netctl start wlan0-BESTWIFIPOGGERS-5G
}
function wifi-work() {
    sudo netctl start wlan0-MIT\ SECURE
}

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export EDITOR="/usr/bin/vim"
export ISODATA="$HOME/data/projects/pysotropy/pysotropy/iso/"

source "$HOME/.zsh/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"

MODE_INDICATOR_VICMD="%%"
MODE_INDICATOR_SEARCH='?'
MODE_INDICATOR_VIINS='>'
PS1="%B%(?..[%?] )%b%n@%U%m%u${MODE_INDICATOR_PROMPT} "
