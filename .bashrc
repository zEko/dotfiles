## Defaults
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ ' 
#PS1='[\#]: '
PS1='\[\e[1m\]\u@\W \$ \[\e[m\]'

## Global Variables
export PATH=$PATH:/home/$USER/.scripts/
export EDITOR="emacsclient -c"
export VISUAL="emacsclient -c"
export TERM=rxvt-unicode

## Bash settings
export HISTCONTROL=ignoreboth

## Aliases
alias ls='ls --color=auto -B'
alias dc='cd'
alias emacs='emacsclient -t'

#safety features
alias cp='cp -i -v'
alias rm='rm -i -v'
alias mv='mv -i -v'
alias ln='ln -i -v'

#easy access
alias nano='emacs -nw'
alias bounty='cd /bounty/BlackHole'
alias bashrc='emacsclient -c ~/.bashrc'
alias xresources='emacsclient -c ~/.Xresources'
alias music='ncmpcpp'
alias pacs='yaourt -Ss'
alias paci='yaourt -S'
alias pacu='sudo pacman -Syu'
alias pacuf='yaourt -Syu --aur'
alias proxyon='sudo rc.d start polipo'
alias proxyoff='sudo rc.d stop polipo'
alias firenoob='firefox -safe-mode'
alias swaponoff='sudo swapoff -a ; sleep 2 ; sudo swapon -a'
alias fuck='curl rage.thewaffleshop.net'
alias grep='grep --color=always'

#ineeds
alias ineedinternet='sudo dhcpcd eth0'

## Tab-Completion
complete -cf sudo
complete -cf man

## Startup tease
figlet moo
echo "Here is some cow thoughts"
cowshow

## functions
xilinx(){
    source /bounty/EDA/xilinx/ISE_DS/settings64.sh
    ise
}
