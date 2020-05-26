# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

set -o vi

export EDITOR="vim"
export VISUAL="vim"
export TERMINAL="xfce4-terminal"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export PATH=$PATH:~/programs/flutter/bin
export XDG_CONFIG_HOME="$HOME/.config"
export WIKI_PATH="$HOME/consistent/files/txt-files/wiki"


alias sai="sudo apt install"
#alias sar='sudo apt remove'
#alias sau='sudo apt upgrade'
#alias sauu='sudo apt update && sudo apt upgrade'

#alias myip="curl --silent https://ipecho.net/plain; echo"
#alias ss="ss -ntlp"
alias ytdl='youtube-dl'
alias ps="ps auxf" # # show all processes, display user-oriented format, show processes that aren't attached to ttys, use full-format listing
alias pse="\ps -e --forest" # list processes as a tree
alias psg="\ps aux | grep -v grep | grep -i -e VSZ -e" # search for a running process. example: psg firefox
alias psr="\ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head" # list top 10 cpu-intensive processes
alias pst="\ps -eo pid,comm,lstart,etimes,time,args"

alias tarc="tar -cvzf"
alias tarx="tar -xf"

#alias rg="rg -i --color=auto"
#alias mkdir='mkdir -pv'
#alias suroot="sudo -E su -p"
alias off="shutdown -h now"

# ubuntu ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# libre office convert docx and pptx to pdf
alias lowpdf="lowriter --convert-to pdf"

alias brave="brave-browser"

# fzf wrappers
alias fzfcd='fzfcd() { cd "$(find -type d 2>/dev/null | fzf)" ;}; fzfcd'
alias fzfed='fzfed() { $EDITOR "$(find -type f 2>/dev/null | fzf)" ;}; fzfed'
#source $HOME/.fzf/shell/completion.bash
#source $HOME/.fzf/shell/key-bindings.bash

#rbenv vars
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
