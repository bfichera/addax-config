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

alias mitvpn="sudo openconnect --disable-ipv6 --force-dpd=2 vpn.mit.edu/duo"
alias office="ssh -p 13802 bfichera@bfichera-office-arch.mit.edu"
alias cloud="ssh bfichera@txe1-login.mit.edu"
alias config='/usr/bin/git --git-dir=/home/bfichera/.cfg --work-tree=/home/bfichera'
alias cdshg='source /home/bfichera/shg/venv/bin/activate && cd /home/bfichera/shg/new/camn2bi2/thermal-cycle-analysis'
alias cdutils='cd /home/bfichera/.local/lib/python3.8/site-packages/shgutils'
alias cdprb='cd /home/bfichera/manuscripts/NCtas2'
alias cdshgpy-upstream='cd /home/bfichera/data/projects/shgpy'
alias cdshgpy='cd /home/bfichera/data/projects/shgpy'

export PATH="/home/bfichera/bin:$PATH"
export EDITOR="/usr/bin/vim"

source "$HOME/.zsh/plugins/zsh-vim-mode/zsh-vim-mode.plugin.zsh"

MODE_INDICATOR_VICMD="%%"
MODE_INDICATOR_SEARCH='?'
MODE_INDICATOR_VIINS='>'
PS1="%B%(?..[%?] )%b%n@%U%m%u${MODE_INDICATOR_PROMPT} "
