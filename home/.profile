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



# Default programs:
export EDITOR="vim"
export TERMINAL="gnome-terminal"
export BROWSER="firefox"
export READER="zathura"
export FILE="vifm"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH:~/programs/flutter/bin
# export STATUSBAR="$blocks"

alias brave="brave-browser"
# ubuntu aliases
#alias ll='ls -alF'
#alias la='ls -A'
#alias l='ls -CF'


