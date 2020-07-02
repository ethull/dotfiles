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

# setup xterm
xrdb ~/.xresources

#source $HOME/.fzf/shell/completion.bash
#source $HOME/.fzf/shell/key-bindings.bash

#rbenv vars
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
