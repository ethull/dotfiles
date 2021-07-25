vim loads all its scripts from its runtimepath 

list runtimepath
    :set runtimepath?
local user settings
    ~/
global settings
    /usr/share/vim/vim81

ftplugin: scripts loaded when a specific filetype is opened
ftdect: add autocmd rules to detect custom filetypes
autoload: scripts loaded starigth away
plugin: scripts loaded as plugins
after: scripts loaded last
pack: scipts loaded by manual :packadd

# nvim differences
    config $XDG_CONFIG_HOME/nvim/init.vim, instead of ~/.vimrc
    config dir $XDG_CONFIG_HOME/nvim, instead of than ~/.vim 
